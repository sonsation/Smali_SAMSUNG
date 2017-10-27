.class public Lcom/samsung/android/settings/display/SecDisplaySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SecDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecDisplaySettings$10;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$11;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$12;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$13;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$14;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$15;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$16;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$17;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$18;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$19;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$1;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$20;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$2;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$3;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$4;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$5;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$6;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$7;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$8;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$9;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static DISPLAY_ALWAYS_ON_DISPLAY:I

.field private static DISPLAY_KEEP_SCREEN_TURNED_OFF:I

.field private static DISPLAY_LED_INDICATOR:I

.field private static DISPLAY_NIGHT_CLOCK:I

.field private static DISPLAY_OUTDOOR_MODE:I

.field private static DISPLAY_SCREEN_TIMEOUT:I

.field private static final FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field static mDualFolderType:Z

.field static mSupportFolderType:Z

.field private static sAccessibilityVision:Ljava/lang/String;

.field private static sIsSupportNightClock:Z

.field private static sIsSupportOutdoor:Z

.field private static sPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private mAutoLockmode:Landroid/preference/SwitchPreference;

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

.field private final mBlueLightFilterObserver:Landroid/database/ContentObserver;

.field private final mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

.field private final mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroid/preference/SwitchPreference;

.field private final mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayScaling:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

.field private mEdgeLighting:Landroid/preference/Preference;

.field private mEdgeScreen:Landroid/preference/PreferenceScreen;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFontPreview:Landroid/preference/PreferenceScreen;

.field private final mGrayscaleObserver:Landroid/database/ContentObserver;

.field private mHomeScreen:Landroid/preference/PreferenceScreen;

.field private mIconBackgrounds:Landroid/preference/PreferenceScreen;

.field private mIsDeviceLockTime:Z

.field private mIsEmergencyMode:Z

.field private mIsKioskModeEnabled:I

.field private mIsSecuredLock:Z

.field private mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

.field private mKeyBacklightmode:Landroid/preference/SwitchPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mNavigationbar:Landroid/preference/PreferenceScreen;

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mNightClockAOD:Z

.field private final mNightClockObserver:Landroid/database/ContentObserver;

.field private mNightModePreference:Landroid/preference/ListPreference;

.field private mOutdoorMode:Landroid/preference/SwitchPreference;

.field private mOutdoorObserver:Landroid/database/ContentObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRotate:Landroid/preference/SwitchPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenMode:Landroid/preference/PreferenceScreen;

.field private mScreenModeObserver:Landroid/database/ContentObserver;

.field private mScreenOffPocket:Landroid/preference/SwitchPreference;

.field private mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

.field private final mScreenResolutionObserver:Landroid/database/ContentObserver;

.field private mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

.field private mScreenZoom:Lcom/android/settings/display/ScreenZoomPreference;

.field private mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

.field private mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

.field private mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private final mSmartStayObserver:Landroid/database/ContentObserver;

.field private mStatusBar:Landroid/preference/PreferenceScreen;

.field private mTapToWakePreference:Landroid/preference/SwitchPreference;

.field private mTouchKeyLight:Landroid/preference/ListPreference;

.field private mWallpaper:Landroid/preference/PreferenceScreen;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mStatusBar:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayScaling:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->dismissAllDialog()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/display/SecDisplaySettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->setAccessibilityVisionString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAlwaysOnScreenSummary()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterSummary()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenModeSummary()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTouchKeyLightSummary()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/display/SecDisplaySettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getNightclocksummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 199
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    .line 198
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    .line 216
    sget-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    const-string/jumbo v1, "nightclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportNightClock:Z

    .line 293
    sput-boolean v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportOutdoor:Z

    .line 298
    sput-boolean v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSupportFolderType:Z

    .line 299
    sput-boolean v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    .line 304
    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    .line 2423
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$17;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings$17;-><init>()V

    .line 2422
    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 2975
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$18;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings$18;-><init>()V

    .line 2974
    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 214
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 285
    iput-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 288
    iput-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 290
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    .line 291
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsEmergencyMode:Z

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsKioskModeEnabled:I

    .line 314
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$1;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    .line 326
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$2;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$3;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 358
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$4;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    .line 357
    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 373
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$5;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    .line 383
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$6;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    .line 392
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$7;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    .line 399
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$8;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    .line 419
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$9;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    .line 427
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$10;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

    .line 434
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$11;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mGrayscaleObserver:Landroid/database/ContentObserver;

    .line 442
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$12;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    .line 450
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$13;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    .line 458
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$14;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$14;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolutionObserver:Landroid/database/ContentObserver;

    .line 466
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$15;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    .line 478
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$16;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$16;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 2984
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$19;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 3240
    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$20;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method private disableUnusableTimeouts(Lcom/android/settings/TimeoutListPreference;)V
    .locals 22
    .param p1, "screenTimeoutPreference"    # Lcom/android/settings/TimeoutListPreference;

    .prologue
    .line 1164
    const-wide/16 v12, -0x1

    .line 1165
    .local v12, "maxTimeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "device_policy"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 1166
    .local v6, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v6, :cond_1

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 1175
    .local v4, "adminTimeout":J
    :goto_0
    const/4 v10, -0x1

    .line 1178
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c002f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1180
    .local v7, "entries":[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0030

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 1185
    .local v18, "values":[Ljava/lang/CharSequence;
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    .local v11, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v14, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 1189
    aget-object v19, v18, v9

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1170
    .local v16, "timeout":J
    const-wide/32 v20, 0x927c0

    .line 1191
    cmp-long v19, v16, v20

    if-gtz v19, :cond_0

    .line 1192
    aget-object v19, v7, v9

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    aget-object v19, v18, v9

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1197
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v19, v20, v16

    if-gez v19, :cond_0

    .line 1198
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_0

    move v10, v9

    .line 1188
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1166
    .end local v4    # "adminTimeout":J
    .end local v7    # "entries":[Ljava/lang/CharSequence;
    .end local v9    # "i":I
    .end local v10    # "idx":I
    .end local v11    # "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v14    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v16    # "timeout":J
    .end local v18    # "values":[Ljava/lang/CharSequence;
    :cond_1
    const-wide/16 v4, 0x0

    .restart local v4    # "adminTimeout":J
    goto/16 :goto_0

    .line 1182
    .restart local v10    # "idx":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c002b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1183
    .restart local v7    # "entries":[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c002c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "values":[Ljava/lang/CharSequence;
    goto :goto_1

    .line 1204
    .restart local v9    # "i":I
    .restart local v11    # "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v14    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1206
    .local v8, "entry":Ljava/lang/String;
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_4

    .line 1207
    invoke-virtual {v11, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1208
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1211
    :cond_4
    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-lez v19, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1241
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1243
    .local v15, "userPreference":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    .line 1242
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1245
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    .line 1244
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1246
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->updateInitialEntry()V

    .line 1162
    return-void

    .line 1212
    .end local v15    # "userPreference":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v19, v4, v20

    if-eqz v19, :cond_5

    .line 1214
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_5

    .line 1215
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1216
    .restart local v16    # "timeout":J
    cmp-long v19, v4, v16

    if-gez v19, :cond_7

    .line 1217
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const v20, 0x7f0b08e0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1218
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1219
    const-string/jumbo v19, "SecDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "add adminTimeout: index : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "  adminTimeout  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "  timeout"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1214
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2411
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2412
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2413
    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 2410
    :cond_0
    return-void
.end method

.method private getAODclocksummary()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x21c

    .line 2712
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2713
    const-string/jumbo v4, "aod_mode_start_time"

    .line 2712
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2714
    .local v2, "mStartTime":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2715
    const-string/jumbo v4, "aod_mode_end_time"

    .line 2714
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2717
    .local v1, "mEndTime":I
    const v3, 0x7f0b041a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2718
    .local v0, "mDurationTime":Ljava/lang/String;
    if-eq v2, v1, :cond_0

    .line 2719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v5, v2, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2721
    :cond_0
    return-object v0
.end method

.method private getCurrentResolution()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2838
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "display_size_forced"

    invoke-static {v10, v11}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2839
    .local v7, "sizeStr":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "width":I
    const/4 v4, 0x0

    .line 2841
    .local v4, "height":I
    if-eqz v7, :cond_0

    const-string/jumbo v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2848
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    if-nez v4, :cond_2

    .line 2849
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2851
    .local v1, "default_size":Landroid/graphics/Point;
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v9

    .line 2852
    .local v9, "windowManager":Landroid/view/IWindowManager;
    const/4 v10, 0x0

    invoke-interface {v9, v10, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2857
    iget v8, v1, Landroid/graphics/Point;->x:I

    .line 2858
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 2861
    .end local v1    # "default_size":Landroid/graphics/Point;
    .end local v9    # "windowManager":Landroid/view/IWindowManager;
    :cond_2
    const/4 v0, 0x0

    .line 2863
    .local v0, "currentResolution":Ljava/lang/String;
    const/16 v10, 0x5a0

    if-lt v8, v10, :cond_5

    .line 2864
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v11, 0x7f0b05a9

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2870
    .local v0, "currentResolution":Ljava/lang/String;
    :goto_1
    int-to-float v10, v4

    int-to-float v11, v8

    div-float v5, v10, v11

    .line 2871
    .local v5, "ratio":F
    const v10, 0x3fe38e39

    cmpl-float v10, v5, v10

    if-lez v10, :cond_3

    .line 2872
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2874
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    .line 2875
    .local v3, "formatter":Ljava/text/NumberFormat;
    invoke-virtual {v3, v12}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 2876
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    int-to-long v12, v4

    invoke-virtual {v3, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    int-to-long v12, v8

    invoke-virtual {v3, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2878
    return-object v0

    .line 2842
    .end local v0    # "currentResolution":Ljava/lang/String;
    .end local v3    # "formatter":Ljava/text/NumberFormat;
    .end local v5    # "ratio":F
    :cond_4
    const-string/jumbo v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2843
    .local v6, "sizeArray":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v10, v6

    if-le v10, v13, :cond_0

    .line 2844
    aget-object v10, v6, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2845
    aget-object v10, v6, v13

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2853
    .end local v6    # "sizeArray":[Ljava/lang/String;
    .restart local v1    # "default_size":Landroid/graphics/Point;
    :catch_0
    move-exception v2

    .line 2854
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "SecDisplaySettings"

    const-string/jumbo v11, "getInitialDisplaySize() exception!!!"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    const-string/jumbo v10, ""

    return-object v10

    .line 2865
    .end local v1    # "default_size":Landroid/graphics/Point;
    .end local v2    # "e":Landroid/os/RemoteException;
    .local v0, "currentResolution":Ljava/lang/String;
    :cond_5
    const/16 v10, 0x2d0

    if-le v8, v10, :cond_6

    const/16 v10, 0x438

    if-gt v8, v10, :cond_6

    .line 2866
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v11, 0x7f0b05a8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "currentResolution":Ljava/lang/String;
    goto/16 :goto_1

    .line 2868
    .local v0, "currentResolution":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v11, 0x7f0b05a7

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "currentResolution":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private getDexTimeoutPreferenceDescription(J)Ljava/lang/String;
    .locals 9
    .param p1, "currentTimeout"    # J

    .prologue
    .line 2725
    const-string/jumbo v2, ""

    .line 2727
    .local v2, "summary":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0126

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2728
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0127

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2730
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 2731
    aget-object v6, v3, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2732
    .local v4, "timeout":J
    cmp-long v6, p1, v4

    if-nez v6, :cond_1

    .line 2733
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v0, v1

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f0b12c0

    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2737
    .end local v4    # "timeout":J
    :cond_0
    return-object v2

    .line 2730
    .restart local v4    # "timeout":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLedIndicator()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2675
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_charing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2676
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_low_battery"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2677
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_missed_event"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2678
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_voice_recording"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2675
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2678
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2675
    goto :goto_0
.end method

.method private getNightclocksummary()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2701
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2702
    const-string/jumbo v4, "night_mode_start_time"

    const/16 v5, 0x4ec

    .line 2701
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2703
    .local v2, "mStartTime":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2704
    const-string/jumbo v4, "night_mode_end_time"

    const/16 v5, 0x1a4

    .line 2703
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2706
    .local v1, "mEndTime":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v5, v2, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2707
    .local v0, "mDurationTime":Ljava/lang/String;
    return-object v0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 2641
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 2642
    .local v6, "second":J
    const-wide/16 v8, 0x3c

    div-long v2, v6, v8

    .line 2643
    .local v2, "minute":J
    const-wide/16 v8, 0x3c

    div-long v0, v2, v8

    .line 2644
    .local v0, "hour":J
    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    .line 2646
    const-string/jumbo v4, ""

    .line 2648
    .local v4, "result":Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    .line 2649
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    long-to-int v8, v0

    const/high16 v9, 0x7f130000

    invoke-virtual {v5, v9, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    long-to-int v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2650
    const-wide/16 v8, 0x3c

    rem-long/2addr v2, v8

    .line 2653
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 2654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2657
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_2

    .line 2658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    long-to-int v9, v2

    const v10, 0x7f130001

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    long-to-int v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2661
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 2662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2665
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 2666
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    long-to-int v9, v6

    const v10, 0x7f130002

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    long-to-int v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2669
    :cond_4
    const-string/jumbo v5, "SecDisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getTimeoutNewEntry : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    return-object v4
.end method

.method public static isAODDisabledInPSM(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1875
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "psm_always_on_display_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1876
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1877
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1878
    .local v1, "splitArray":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 1879
    .local v0, "settingValue":Ljava/lang/String;
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 1881
    .end local v0    # "settingValue":Ljava/lang/String;
    .end local v1    # "splitArray":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private isAccessibilityVisionEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2825
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "greyscale_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 2826
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 2828
    .local v0, "isAccessibilityVisionEnabled":Z
    :cond_0
    :goto_0
    return v0

    .line 2827
    .end local v0    # "isAccessibilityVisionEnabled":Z
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 1005
    const/4 v0, 0x0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 999
    const/4 v0, 0x0

    return v0
.end method

.method private isDefaultEasyLauncher()Z
    .locals 5

    .prologue
    .line 1860
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.app.easylauncher"

    const-string/jumbo v4, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    .local v1, "easyLauncer":Landroid/content/ComponentName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1862
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1863
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1864
    const/4 v3, 0x1

    return v3

    .line 1866
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private isDefaultLauncher()Z
    .locals 4

    .prologue
    .line 1847
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_0

    .line 1848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "com.sec.android.app.launcher"

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 1850
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1851
    const-string/jumbo v1, "SecDisplaySettings"

    const-string/jumbo v2, "isDefaultLauncher : false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    const/4 v1, 0x0

    return v1

    .line 1855
    .end local v0    # "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_0
    const-string/jumbo v1, "SecDisplaySettings"

    const-string/jumbo v2, "isDefaultLauncher : true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    const/4 v1, 0x1

    return v1
.end method

.method private isDesktopEnabled()Z
    .locals 2

    .prologue
    .line 2832
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2833
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopDockConnected(Landroid/content/Context;)Z

    move-result v0

    .line 2834
    .local v0, "isDesktopEnabled":Z
    :goto_0
    return v0

    .line 2833
    .end local v0    # "isDesktopEnabled":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2832
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    const/4 v4, 0x0

    .line 2321
    const/4 v1, 0x0

    .line 2323
    .local v1, "values":[Ljava/lang/String;
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    if-eqz v2, :cond_0

    .line 2324
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2331
    .local v1, "values":[Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 2332
    return v4

    .line 2326
    .local v1, "values":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "values":[Ljava/lang/String;
    goto :goto_0

    .line 2335
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 2336
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 2337
    const/4 v2, 0x1

    return v2

    .line 2335
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2341
    :cond_3
    return v4
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 977
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 978
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 991
    const v0, 0x11200a5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isVrDisplayModeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1009
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1010
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private mUseCalendar(II)Ljava/lang/String;
    .locals 6
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 2689
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2690
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 2691
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    :goto_0
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 2692
    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 2694
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2696
    .local v1, "mTime":Ljava/lang/String;
    return-object v1

    .line 2691
    .end local v1    # "mTime":Ljava/lang/String;
    :cond_0
    const/16 v2, 0xa

    goto :goto_0
.end method

.method private makeAccessiblityDisablePopup(II)V
    .locals 10
    .param p1, "accessibility"    # I
    .param p2, "menu"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2741
    const/4 v1, 0x0

    .line 2742
    .local v1, "enabledAccessibilityName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 2743
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2749
    .local v1, "enabledAccessibilityName":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b01ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 2750
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    aput-object v1, v5, v9

    .line 2749
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2751
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b0449

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2752
    .local v3, "title":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2755
    new-instance v5, Lcom/samsung/android/settings/display/SecDisplaySettings$28;

    invoke-direct {v5, p0, p1, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings$28;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;II)V

    const v6, 0x7f0b0438

    .line 2752
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2789
    new-instance v5, Lcom/samsung/android/settings/display/SecDisplaySettings$29;

    invoke-direct {v5, p0, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings$29;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;I)V

    const/high16 v6, 0x1040000

    .line 2752
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2803
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$30;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings$30;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;I)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2821
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2740
    return-void

    .line 2744
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .local v1, "enabledAccessibilityName":Ljava/lang/String;
    :cond_0
    if-ne p1, v9, :cond_1

    .line 2745
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0233

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "enabledAccessibilityName":Ljava/lang/String;
    goto :goto_0

    .line 2747
    .local v1, "enabledAccessibilityName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b157a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "enabledAccessibilityName":Ljava/lang/String;
    goto :goto_0
.end method

.method private makeTalkBackDisablePopup(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 2345
    const/4 v1, 0x0

    .line 2347
    .local v1, "function":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->dismissAllDialog()V

    .line 2348
    const v3, 0x7f0b05b5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2349
    .local v1, "function":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2350
    .local v0, "enabledTalkbackName":Ljava/lang/String;
    const v3, 0x7f0b01ef

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2352
    .local v2, "popup_msg":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2354
    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$22;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$22;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const v5, 0x7f0b0431

    .line 2352
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2360
    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$23;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$23;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const/high16 v5, 0x1040000

    .line 2352
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 2366
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$24;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$24;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2373
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 2344
    return-void
.end method

.method private maketurnOffUniversalPopup(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v6, 0x7f0b0246

    .line 2377
    const/4 v0, 0x0

    .line 2379
    .local v0, "function":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->dismissAllDialog()V

    .line 2380
    const v2, 0x7f0b05b5

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2382
    .local v0, "function":Ljava/lang/String;
    const v2, 0x7f0b01ef

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 2383
    const v4, 0x7f0b0973

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2384
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 2385
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 2382
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2386
    .local v1, "popup_msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2388
    new-instance v3, Lcom/samsung/android/settings/display/SecDisplaySettings$25;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$25;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const v4, 0x7f0b0431

    .line 2386
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2394
    new-instance v3, Lcom/samsung/android/settings/display/SecDisplaySettings$26;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$26;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const/high16 v4, 0x1040000

    .line 2386
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 2400
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/samsung/android/settings/display/SecDisplaySettings$27;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$27;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2407
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2376
    return-void
.end method

.method private setAccessibilityVisionString(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 346
    sput-object p1, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    .line 345
    return-void
.end method

.method private setLedIndicator(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2682
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "led_indicator_charing"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2683
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "led_indicator_low_battery"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2684
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "led_indicator_missed_event"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2685
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "led_indicator_voice_recording"

    if-eqz p1, :cond_3

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2681
    return-void

    :cond_0
    move v0, v2

    .line 2682
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2683
    goto :goto_1

    :cond_2
    move v0, v2

    .line 2684
    goto :goto_2

    :cond_3
    move v1, v2

    .line 2685
    goto :goto_3
.end method

.method private updateAlwaysOnScreenSummary()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1754
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v4, :cond_1

    .line 1755
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1756
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "aod_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .line 1757
    .local v3, "value":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "aod_content_type"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1758
    .local v0, "mAODContent":I
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1760
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1761
    .local v2, "str":Ljava/lang/StringBuilder;
    if-nez v0, :cond_3

    .line 1762
    const v4, 0x7f0b0417

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1769
    const-string/jumbo v4, "\u3001"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getAODclocksummary()Ljava/lang/String;

    move-result-object v1

    .line 1774
    .local v1, "mTimeRange":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    if-eqz v3, :cond_6

    .line 1777
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1781
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1753
    .end local v0    # "mAODContent":I
    .end local v1    # "mTimeRange":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/StringBuilder;
    .end local v3    # "value":Z
    :cond_1
    :goto_4
    return-void

    .line 1756
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "value":Z
    goto :goto_0

    .line 1763
    .restart local v0    # "mAODContent":I
    .restart local v2    # "str":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 1764
    const v4, 0x7f0b0418

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1765
    :cond_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 1766
    const v4, 0x7f0b0419

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1771
    :cond_5
    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1779
    .restart local v1    # "mTimeRange":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v5, 0x7f0b0406

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 1783
    .end local v0    # "mAODContent":I
    .end local v1    # "mTimeRange":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/StringBuilder;
    .end local v3    # "value":Z
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "aod_mode"

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f0b1952

    :goto_5
    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_4

    :cond_8
    const v4, 0x7f0b1953

    goto :goto_5
.end method

.method private updateBackKeyLightSummary()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1633
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 1634
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1635
    .local v1, "durationValues":[Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1637
    .local v4, "strDurationValues":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "key_backlight_timeout"

    const/16 v7, 0xbb8

    .line 1636
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1639
    .local v0, "dbDurationValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1640
    .local v3, "keyBacklightDBValue":Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    aget-object v5, v4, v8

    if-eqz v5, :cond_0

    .line 1641
    aget-object v3, v4, v8

    .line 1644
    .end local v3    # "keyBacklightDBValue":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 1645
    aget-object v5, v1, v2

    if-eqz v5, :cond_3

    aget-object v5, v1, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1646
    aget-object v3, v4, v2

    .line 1650
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1632
    .end local v0    # "dbDurationValue":Ljava/lang/String;
    .end local v1    # "durationValues":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "strDurationValues":[Ljava/lang/String;
    :cond_2
    return-void

    .line 1644
    .restart local v0    # "dbDurationValue":Ljava/lang/String;
    .restart local v1    # "durationValues":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "strDurationValues":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateBlueLightFilterSummary()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1810
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "blue_light_filter_type"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1811
    .local v0, "blueLightFilterType":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "blue_light_filter_scheduled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 1813
    .local v1, "isBlueLightFilterScheduled":Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v4, :cond_0

    .line 1814
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1815
    if-nez v1, :cond_2

    .line 1816
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0595

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1827
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_2
    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1809
    :cond_0
    return-void

    .line 1811
    .end local v1    # "isBlueLightFilterScheduled":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isBlueLightFilterScheduled":Z
    goto :goto_0

    .line 1818
    :cond_2
    if-ne v0, v2, :cond_3

    .line 1819
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b059b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1821
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b059c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1825
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0596

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v2, v3

    .line 1827
    goto :goto_2
.end method

.method private updateEasyModeSummary()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1622
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v2, :cond_0

    .line 1623
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_mode_switch"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1624
    .local v0, "isEasyMode":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1625
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    const v2, 0x7f0b0600

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(I)V

    .line 1621
    .end local v0    # "isEasyMode":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1623
    goto :goto_0

    .line 1627
    .restart local v0    # "isEasyMode":Z
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    const v2, 0x7f0b0601

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateFontPreviewSummary()V
    .locals 2

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getFontPreviewSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1746
    :cond_0
    return-void
.end method

.method private updateIconBackgroundsState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1832
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_3

    .line 1833
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1834
    .local v1, "currentTheme":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_sec_appicon_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1835
    .local v0, "currentIcon":Ljava/lang/String;
    const-string/jumbo v3, "SecDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateIconBackgroundsState isDefaultLauncher : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isDefaultEasyLauncher() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultEasyLauncher()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", currentTheme : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", currentIcon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultEasyLauncher()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1837
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1841
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tap_to_icon"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    .line 1842
    .local v2, "nValue":Z
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_6

    const v3, 0x7f0b0569

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1831
    .end local v0    # "currentIcon":Ljava/lang/String;
    .end local v1    # "currentTheme":Ljava/lang/String;
    .end local v2    # "nValue":Z
    :cond_3
    return-void

    .line 1839
    .restart local v0    # "currentIcon":Ljava/lang/String;
    .restart local v1    # "currentTheme":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 1841
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "nValue":Z
    goto :goto_1

    .line 1842
    :cond_6
    const v3, 0x7f0b056a

    goto :goto_2
.end method

.method private updateOutdoorModeSummary()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    .line 1656
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1657
    const v1, 0x7f0b05b3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1661
    .local v0, "summary":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 1662
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1654
    :cond_0
    return-void

    .line 1659
    .end local v0    # "summary":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0b05b2

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateScreenModeSummary()V
    .locals 8

    .prologue
    const v7, 0x7f0b05e0

    const v6, 0x7f0b05df

    const v5, 0x7f0b05dd

    const v4, 0x7f0b05de

    const/4 v3, 0x1

    .line 1675
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 1676
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1677
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1678
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1681
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1686
    .local v0, "idx":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1688
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1691
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1694
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1697
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1700
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b05d9

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1725
    .end local v0    # "idx":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1726
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1729
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1730
    .restart local v0    # "idx":I
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1732
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1735
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1738
    :pswitch_8
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1686
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1730
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private updateScreenSaverSummary()V
    .locals 3

    .prologue
    .line 1789
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v1, :cond_0

    .line 1790
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1791
    new-instance v1, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    .line 1792
    .local v0, "value":Z
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1793
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1794
    if-eqz v0, :cond_1

    .line 1795
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1788
    .end local v0    # "value":Z
    :cond_0
    :goto_0
    return-void

    .line 1797
    .restart local v0    # "value":Z
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1798
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v2, 0x7f0b0b43

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 1800
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v2, 0x7f0b0b44

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 1804
    .end local v0    # "value":Z
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1566
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateOutdoorModeSummary()V

    .line 1567
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateFontPreviewSummary()V

    .line 1568
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTouchKeyLightSummary()V

    .line 1569
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenSaverSummary()V

    .line 1570
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBackKeyLightSummary()V

    .line 1571
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAlwaysOnScreenSummary()V

    .line 1572
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateEasyModeSummary()V

    .line 1573
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateIconBackgroundsState()V

    .line 1574
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenModeSummary()V

    .line 1575
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterSummary()V

    .line 1578
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 1579
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1580
    const-string/jumbo v5, "screen_brightness_mode"

    .line 1579
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1581
    .local v0, "brightnessMode":I
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_7

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1585
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 1586
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1587
    .local v1, "value":I
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1591
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 1592
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "doze_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1593
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1596
    .end local v1    # "value":I
    :cond_2
    sget-boolean v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    if-eqz v2, :cond_3

    .line 1597
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "sub_lcd_auto_lock"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1598
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "key_night_mode"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1602
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 1603
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "double_tap_to_wake"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1604
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_c

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1608
    .end local v1    # "value":I
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_5

    .line 1609
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "camera_gesture_disabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1610
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_d

    move v2, v3

    :goto_6
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1614
    .end local v1    # "value":I
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_6

    .line 1616
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "camera_double_tap_power_gesture_disabled"

    .line 1615
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1617
    .restart local v1    # "value":I
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_e

    :goto_7
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1565
    .end local v1    # "value":I
    :cond_6
    return-void

    .restart local v0    # "brightnessMode":I
    :cond_7
    move v2, v4

    .line 1581
    goto/16 :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v1    # "value":I
    :cond_8
    move v2, v4

    .line 1587
    goto/16 :goto_1

    :cond_9
    move v2, v4

    .line 1593
    goto :goto_2

    .end local v1    # "value":I
    :cond_a
    move v2, v4

    .line 1597
    goto :goto_3

    :cond_b
    move v2, v4

    .line 1598
    goto :goto_4

    .restart local v1    # "value":I
    :cond_c
    move v2, v4

    .line 1604
    goto :goto_5

    :cond_d
    move v2, v4

    .line 1610
    goto :goto_6

    :cond_e
    move v3, v4

    .line 1617
    goto :goto_7
.end method

.method private updateStateForDesktopMenuItem()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2949
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-eqz v0, :cond_0

    .line 2950
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    .line 2951
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 2952
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 2953
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_2

    .line 2954
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabled(Z)V

    .line 2955
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    if-eqz v0, :cond_3

    .line 2956
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/android/settings/TimeoutListPreference;->setEnabled(Z)V

    .line 2957
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    .line 2958
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2959
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_6

    .line 2960
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabled(Z)V

    .line 2961
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_7

    .line 2962
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2963
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v0, :cond_9

    .line 2964
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_8
    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setEnabledAppearance(Z)V

    .line 2965
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    .line 2966
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_a
    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2967
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_c

    .line 2968
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    :goto_9
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2969
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2970
    const-string/jumbo v0, "screen_timeout_for_dex"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 2947
    :cond_d
    return-void

    :cond_e
    move v0, v2

    .line 2950
    goto/16 :goto_0

    :cond_f
    move v0, v2

    .line 2952
    goto/16 :goto_1

    :cond_10
    move v0, v2

    .line 2954
    goto/16 :goto_2

    :cond_11
    move v0, v2

    .line 2956
    goto/16 :goto_3

    :cond_12
    move v0, v2

    .line 2958
    goto :goto_4

    :cond_13
    move v0, v2

    .line 2960
    goto :goto_5

    :cond_14
    move v0, v2

    .line 2962
    goto :goto_6

    :cond_15
    move v0, v2

    .line 2964
    goto :goto_7

    .line 2966
    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v0

    goto :goto_8

    :cond_17
    move v1, v2

    .line 2968
    goto :goto_9
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 15
    .param p1, "currentTimeout"    # J

    .prologue
    .line 2882
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    .line 2884
    .local v5, "preference":Lcom/android/settings/TimeoutListPreference;
    invoke-virtual {v5}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2885
    const v10, 0x7f0b1a56

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2908
    .local v6, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2910
    .local v2, "currentDeviceLockTimeout":J
    iget-boolean v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsSecuredLock:Z

    if-eqz v10, :cond_7

    cmp-long v10, p1, v2

    if-lez v10, :cond_7

    .line 2911
    const v10, 0x7f0b08e2

    invoke-virtual {v5, v10}, Lcom/android/settings/TimeoutListPreference;->setSummary(I)V

    .line 2913
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_0

    .line 2914
    invoke-virtual {v5, v6}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2881
    :cond_0
    :goto_1
    return-void

    .line 2886
    .end local v2    # "currentDeviceLockTimeout":J
    .end local v6    # "summary":Ljava/lang/String;
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-gez v10, :cond_2

    .line 2888
    const-string/jumbo v6, ""

    .restart local v6    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 2890
    .end local v6    # "summary":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2891
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 2892
    .local v7, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    array-length v10, v1

    if-nez v10, :cond_4

    .line 2893
    :cond_3
    const-string/jumbo v6, ""

    .restart local v6    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 2895
    .end local v6    # "summary":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    .line 2896
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v10, v7

    if-ge v4, v10, :cond_6

    .line 2897
    aget-object v10, v7, v4

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 2898
    .local v8, "timeout":J
    cmp-long v10, p1, v8

    if-ltz v10, :cond_5

    .line 2899
    move v0, v4

    .line 2896
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2902
    .end local v8    # "timeout":J
    :cond_6
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b12c0

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2903
    .restart local v6    # "summary":Ljava/lang/String;
    aget-object v10, v7, v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_0

    .line 2917
    .end local v0    # "best":I
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v7    # "values":[Ljava/lang/CharSequence;
    .restart local v2    # "currentDeviceLockTimeout":J
    :cond_7
    invoke-virtual {v5, v6}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateTouchKeyLightSummary()V
    .locals 5

    .prologue
    .line 1667
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1668
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "button_key_light"

    const/16 v4, 0x1770

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1669
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1670
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1666
    .end local v0    # "summary":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 2419
    const v0, 0x7f0b180d

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 491
    const/16 v0, 0x2e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 1015
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1016
    new-instance v5, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 1017
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v5, v6, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1019
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 1020
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1021
    .local v0, "intentData1":Landroid/content/Intent;
    const-string/jumbo v5, "com.samsung.android.app.aodservice"

    const-string/jumbo v6, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v0, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 1023
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v6, 0x7f0b0405

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 1025
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 1026
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1027
    .local v1, "intentData2":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.Settings$HDReffectSettinsActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v1, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 1029
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iget-object v5, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string/jumbo v6, "videoEnhancer"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1030
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v6, 0x7f0b041b

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 1032
    iput-object v8, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 1035
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 1036
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1037
    .local v2, "intentData3":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.Settings$InputMethodAndLanguageSettingsActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v2, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 1040
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v6, 0x7f0b1510

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 1042
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .line 1043
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1044
    .local v3, "intentData4":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.Settings$AccessibilitySettingsVisionActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v3, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 1046
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v6, 0x7f0b029f

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 1048
    .end local v0    # "intentData1":Landroid/content/Intent;
    .end local v1    # "intentData2":Landroid/content/Intent;
    .end local v2    # "intentData3":Landroid/content/Intent;
    .end local v3    # "intentData4":Landroid/content/Intent;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1014
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1506
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1507
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setFlipCloseStatus(I)V

    .line 1508
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v0}, Lcom/android/settings/TimeoutListPreference;->rotateSettingsListPreference()V

    .line 1505
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 35
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 496
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 498
    .local v5, "activity":Landroid/app/Activity;
    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 500
    .local v25, "resolver":Landroid/content/ContentResolver;
    const v31, 0x7f0800db

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->addPreferencesFromResource(I)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    const-string/jumbo v32, "power"

    invoke-virtual/range {v31 .. v32}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/PowerManager;

    sput-object v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->sPowerManager:Landroid/os/PowerManager;

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    .line 506
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v31

    const/16 v32, 0x64

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_13

    const/16 v19, 0x1

    .line 507
    .local v19, "isKnoxUser":Z
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v31

    if-eqz v31, :cond_14

    const/16 v20, 0x1

    .line 509
    .local v20, "isSecondaryUser":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v18

    .line 510
    .local v18, "isKioskContainer":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "color_blind"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_15

    const/16 v17, 0x1

    .line 512
    .local v17, "isColorBlind":Z
    :goto_2
    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsEmergencyMode:Z

    .line 513
    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 514
    .local v4, "actionBar":Landroid/app/ActionBar;
    if-eqz v4, :cond_0

    .line 515
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 516
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsEmergencyMode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_16

    .line 517
    const v31, 0x7f0b12ba

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 525
    :cond_0
    :goto_3
    const-string/jumbo v31, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 528
    if-nez v20, :cond_1

    .line 530
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v31

    .line 528
    if-eqz v31, :cond_17

    .line 531
    :cond_1
    const-string/jumbo v31, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 532
    const-string/jumbo v31, "SecDisplaySettings"

    const-string/jumbo v32, "remove Screen mode"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_2
    :goto_4
    const-string/jumbo v31, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v32

    const-string/jumbo v33, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    .line 548
    new-instance v28, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 549
    .local v28, "utils":Lcom/android/internal/widget/LockPatternUtils;
    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsSecuredLock:Z

    .line 552
    const-string/jumbo v31, "status_bar"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mStatusBar:Landroid/preference/PreferenceScreen;

    .line 553
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v31

    if-nez v31, :cond_3

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mStatusBar:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    :cond_3
    const-string/jumbo v31, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_5

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x112006d

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v31

    if-eqz v31, :cond_4

    if-eqz v19, :cond_1a

    .line 561
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 571
    :cond_5
    :goto_5
    const-string/jumbo v31, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_7

    .line 573
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v31

    if-nez v31, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 574
    :cond_6
    const-string/jumbo v31, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 581
    :cond_7
    :goto_6
    const-string/jumbo v31, "secbrightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    .line 582
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v31

    if-eqz v31, :cond_8

    .line 583
    const-string/jumbo v31, "screen_brightness_mode"

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 586
    .local v23, "mAutoBrightnessMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    .line 591
    .end local v23    # "mAutoBrightnessMode":I
    :cond_8
    const-string/jumbo v31, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    .line 592
    const-string/jumbo v31, "screen_off_timeout"

    const-wide/16 v32, 0x7530

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 595
    .local v10, "currentTimeout":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    const v32, 0x7f0c002f

    invoke-virtual/range {v31 .. v32}, Lcom/android/settings/TimeoutListPreference;->setEntries(I)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    const v32, 0x7f0c0030

    invoke-virtual/range {v31 .. v32}, Lcom/android/settings/TimeoutListPreference;->setEntryValues(I)V

    .line 601
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 606
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v31

    if-eqz v31, :cond_a

    .line 607
    const-string/jumbo v31, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 610
    :cond_a
    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 611
    const-string/jumbo v31, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 623
    :goto_7
    const-string/jumbo v31, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 625
    const-string/jumbo v31, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/ListPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x112006a

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v31

    if-nez v31, :cond_1e

    .line 629
    const-string/jumbo v31, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    const-string/jumbo v31, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1e

    .line 633
    :cond_b
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v31

    if-eqz v31, :cond_1f

    .line 634
    const-string/jumbo v31, "tap_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 640
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v31

    if-eqz v31, :cond_20

    .line 641
    const-string/jumbo v31, "camera_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 647
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v31

    if-eqz v31, :cond_21

    .line 649
    const-string/jumbo v31, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/SwitchPreference;

    .line 648
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 655
    :goto_b
    const-string/jumbo v31, "auto_rotate"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_c

    .line 657
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v31

    if-nez v31, :cond_22

    invoke-static {v5}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_22

    .line 658
    const-string/jumbo v31, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    .line 657
    if-eqz v31, :cond_22

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 665
    :cond_c
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    const-string/jumbo v32, "display"

    invoke-virtual/range {v31 .. v32}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 667
    const-string/jumbo v31, "wifi_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 672
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 677
    const/4 v7, 0x1

    .line 681
    .local v7, "canStatusBarHide":Z
    :try_start_0
    const-string/jumbo v31, "window"

    invoke-static/range {v31 .. v31}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v31

    .line 680
    invoke-static/range {v31 .. v31}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v30

    .line 682
    .local v30, "wm":Landroid/view/IWindowManager;
    invoke-interface/range {v30 .. v30}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v31

    if-eqz v31, :cond_23

    const/4 v7, 0x0

    .line 689
    .end local v30    # "wm":Landroid/view/IWindowManager;
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    const-string/jumbo v32, "com.sec.feature.folder_type"

    invoke-virtual/range {v31 .. v32}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_24

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    const-string/jumbo v32, "com.sec.feature.dual_lcd"

    invoke-virtual/range {v31 .. v32}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v31

    .line 689
    if-eqz v31, :cond_24

    .line 691
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v31

    .line 689
    :goto_e
    sput-boolean v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    const-string/jumbo v32, "com.sec.feature.folder_type"

    invoke-virtual/range {v31 .. v32}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v31

    sput-boolean v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSupportFolderType:Z

    .line 694
    const-string/jumbo v31, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    .line 696
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v31

    if-nez v31, :cond_d

    if-nez v19, :cond_d

    if-eqz v20, :cond_25

    .line 697
    :cond_d
    const-string/jumbo v31, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 703
    :cond_e
    :goto_f
    const-string/jumbo v31, "sub_lcd_auto_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    const-string/jumbo v31, "sub_lcd_auto_lock"

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_26

    const/16 v31, 0x1

    :goto_10
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 706
    const-string/jumbo v31, "key_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 708
    const-string/jumbo v31, "key_night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    const-string/jumbo v31, "key_night_mode"

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_27

    const/16 v31, 0x1

    :goto_11
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 712
    sget-boolean v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    if-eqz v31, :cond_28

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    .line 714
    const/16 v33, 0x5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x0

    aput-object v33, v32, v34

    const/16 v33, 0x7

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x1

    aput-object v33, v32, v34

    .line 713
    const v33, 0x7f0b0560

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 725
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    const-string/jumbo v32, "content://com.sec.knox.provider2/KioskMode"

    .line 726
    const-string/jumbo v33, "isKioskModeEnabled"

    .line 725
    invoke-static/range {v31 .. v33}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsKioskModeEnabled:I

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsKioskModeEnabled:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 729
    const-string/jumbo v31, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 730
    const-string/jumbo v31, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    if-eqz v31, :cond_f

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 737
    :cond_f
    const-string/jumbo v31, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2a

    .line 740
    :cond_10
    :goto_13
    const-string/jumbo v31, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 743
    :cond_11
    const-string/jumbo v31, "outdoor_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_2b

    .line 745
    const/16 v31, 0x1

    .line 744
    :goto_14
    sput-boolean v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportOutdoor:Z

    .line 746
    sget-boolean v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportOutdoor:Z

    if-nez v31, :cond_2c

    .line 747
    const-string/jumbo v31, "outdoor_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 754
    :cond_12
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_2d

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "UPSM"

    const v33, 0x7f0800db

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 756
    .local v24, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v24, :cond_2d

    .line 757
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "list$iterator":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 758
    .local v21, "list":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_16

    .line 506
    .end local v4    # "actionBar":Landroid/app/ActionBar;
    .end local v7    # "canStatusBarHide":Z
    .end local v10    # "currentTimeout":J
    .end local v17    # "isColorBlind":Z
    .end local v18    # "isKioskContainer":Z
    .end local v19    # "isKnoxUser":Z
    .end local v20    # "isSecondaryUser":Z
    .end local v21    # "list":Ljava/lang/String;
    .end local v22    # "list$iterator":Ljava/util/Iterator;
    .end local v24    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_13
    const/16 v19, 0x0

    .restart local v19    # "isKnoxUser":Z
    goto/16 :goto_0

    .line 507
    :cond_14
    const/16 v20, 0x0

    .restart local v20    # "isSecondaryUser":Z
    goto/16 :goto_1

    .line 510
    .restart local v18    # "isKioskContainer":Z
    :cond_15
    const/16 v17, 0x0

    .restart local v17    # "isColorBlind":Z
    goto/16 :goto_2

    .line 519
    .restart local v4    # "actionBar":Landroid/app/ActionBar;
    :cond_16
    const v31, 0x7f0b1285

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_3

    .line 534
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 535
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v31

    if-eqz v31, :cond_18

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    const v32, 0x7f040252

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    .line 538
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v31

    if-eqz v31, :cond_19

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    .line 541
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    .line 563
    .restart local v28    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_5

    .line 566
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_5

    .line 576
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_6

    .line 614
    .restart local v10    # "currentTimeout":J
    :cond_1d
    const-string/jumbo v31, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 630
    :cond_1e
    const-string/jumbo v31, "touch_key_light"

    goto/16 :goto_8

    .line 637
    :cond_1f
    const-string/jumbo v31, "tap_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 644
    :cond_20
    const-string/jumbo v31, "camera_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 652
    :cond_21
    const-string/jumbo v31, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 661
    :cond_22
    const-string/jumbo v31, "auto_rotate"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 682
    .restart local v7    # "canStatusBarHide":Z
    .restart local v30    # "wm":Landroid/view/IWindowManager;
    :cond_23
    const/4 v7, 0x1

    goto/16 :goto_d

    .line 683
    .end local v30    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v13

    .line 684
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v31, "SecDisplaySettings"

    const-string/jumbo v32, "Failing checking whether status bar can hide"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    const/4 v7, 0x0

    goto/16 :goto_d

    .line 689
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_24
    const/16 v31, 0x0

    goto/16 :goto_e

    .line 699
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_f

    .line 705
    :cond_26
    const/16 v31, 0x0

    goto/16 :goto_10

    .line 710
    :cond_27
    const/16 v31, 0x0

    goto/16 :goto_11

    .line 715
    :cond_28
    sget-boolean v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    if-nez v31, :cond_29

    sget-boolean v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSupportFolderType:Z

    if-eqz v31, :cond_29

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_12

    .line 719
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_12

    .line 739
    :cond_2a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v31

    .line 737
    if-eqz v31, :cond_11

    goto/16 :goto_13

    .line 744
    :cond_2b
    const/16 v31, 0x0

    goto/16 :goto_14

    .line 748
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_15

    .line 762
    :cond_2d
    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_46

    .line 764
    const-string/jumbo v31, "vr_display_pref"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/settings/DropDownPreference;

    .line 765
    .local v29, "vrDisplayPref":Lcom/samsung/android/settings/DropDownPreference;
    if-eqz v29, :cond_2e

    .line 766
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    .line 767
    const v32, 0x7f0b18fc

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    aput-object v32, v31, v33

    .line 768
    const v32, 0x7f0b18fd

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    aput-object v32, v31, v33

    .line 766
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 770
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    const-string/jumbo v32, "0"

    const/16 v33, 0x0

    aput-object v32, v31, v33

    const-string/jumbo v32, "1"

    const/16 v33, 0x1

    aput-object v32, v31, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 772
    move-object v6, v5

    .line 773
    .local v6, "c":Landroid/content/Context;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    .line 774
    .local v12, "currentUser":I
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    .line 775
    const-string/jumbo v32, "vr_display_mode"

    .line 776
    const/16 v33, 0x0

    .line 774
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 778
    .local v8, "current":I
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/DropDownPreference;->setValueIndex(I)V

    .line 779
    new-instance v31, Lcom/samsung/android/settings/display/SecDisplaySettings$21;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings$21;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/content/Context;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/DropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 798
    .end local v6    # "c":Landroid/content/Context;
    .end local v8    # "current":I
    .end local v12    # "currentUser":I
    .end local v29    # "vrDisplayPref":Lcom/samsung/android/settings/DropDownPreference;
    :cond_2e
    :goto_17
    const-string/jumbo v31, "night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/ListPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2f

    .line 801
    const-string/jumbo v31, "uimode"

    .line 800
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/UiModeManager;

    .line 802
    .local v27, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual/range {v27 .. v27}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v9

    .line 803
    .local v9, "currentNightMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v31, v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 807
    .end local v9    # "currentNightMode":I
    .end local v27    # "uiManager":Landroid/app/UiModeManager;
    :cond_2f
    const-string/jumbo v31, "edge_lighting"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    .line 808
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v31

    const-string/jumbo v32, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 809
    .local v26, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_30

    .line 810
    if-eqz v26, :cond_47

    const-string/jumbo v31, "panel"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    :goto_18
    if-nez v31, :cond_48

    .line 811
    const-string/jumbo v31, "edge_lighting"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 816
    :cond_30
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_31

    .line 817
    const-string/jumbo v31, "edge_lighting"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 819
    :cond_31
    const-string/jumbo v31, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_32

    .line 821
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v31

    const-string/jumbo v32, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_49

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 828
    :cond_32
    :goto_1a
    const-string/jumbo v31, "display_scaling"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayScaling:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayScaling:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_33

    .line 831
    const-string/jumbo v31, "display_scaling"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 835
    :cond_33
    const-string/jumbo v31, "easy_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_34

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 840
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_4a

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isEasyModeDisplayed(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_4a

    .line 845
    :goto_1b
    const-string/jumbo v31, "icon_backgrounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    if-eqz v31, :cond_35

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 854
    :cond_35
    const-string/jumbo v31, "screen_off_pocket"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_36

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 863
    :cond_36
    const-string/jumbo v31, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_38

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v31

    const-string/jumbo v32, "com.samsung.android.app.aodservice"

    invoke-static/range {v31 .. v32}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_37

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v31

    if-eqz v31, :cond_4b

    .line 872
    :cond_37
    const-string/jumbo v31, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 876
    :cond_38
    :goto_1c
    const-string/jumbo v31, "night_clock"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3b

    .line 878
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_4d

    if-nez v20, :cond_4d

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v31

    if-eqz v31, :cond_39

    sget-boolean v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportNightClock:Z

    if-eqz v31, :cond_4d

    .line 881
    :cond_39
    const-string/jumbo v31, "-nightclock"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_4e

    .line 882
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    .line 886
    :goto_1d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v31

    if-eqz v31, :cond_3a

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 889
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 893
    :cond_3b
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "blue_light_filter"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_4f

    const/16 v16, 0x1

    .line 894
    .local v16, "isBlueLightFilterOn":Z
    :goto_1f
    const-string/jumbo v31, "blue_light_filter"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3c

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setChecked(Z)V

    .line 904
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "greyscale_mode"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_50

    .line 905
    const v31, 0x7f0b02cf

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    .line 911
    :cond_3d
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3e

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    sget-object v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    const/16 v34, 0x0

    aput-object v33, v32, v34

    const v33, 0x7f0b0594

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    aput-object v33, v32, v34

    .line 913
    sget-object v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    const/16 v34, 0x2

    aput-object v33, v32, v34

    const v33, 0x7f0b0594

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x3

    aput-object v33, v32, v34

    .line 912
    const v33, 0x7f0b01cc

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    .line 916
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_3f

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static/range {v31 .. v32}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3f

    .line 918
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v31

    if-eqz v31, :cond_40

    .line 919
    :cond_3f
    const-string/jumbo v31, "edge_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 922
    :cond_40
    const-string/jumbo v31, "screen_resolution"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    .line 923
    const-string/jumbo v31, ""

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_52

    .line 930
    const-string/jumbo v31, "screen_resolution"

    .line 933
    :cond_41
    :goto_21
    const-string/jumbo v31, "edge_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/preference/PreferenceScreen;

    .line 934
    const-string/jumbo v31, "screen_zoom"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/android/settings/display/ScreenZoomPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenZoom:Lcom/android/settings/display/ScreenZoomPreference;

    .line 935
    const-string/jumbo v31, "screen_zoom"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 937
    const-string/jumbo v31, "homescreen"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v31, v0

    if-eqz v31, :cond_42

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v31

    if-nez v31, :cond_53

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v31

    :goto_22
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 942
    :cond_42
    const-string/jumbo v31, "navigation_Bar"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/preference/PreferenceScreen;

    .line 943
    const-string/jumbo v31, ""

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_43

    .line 944
    const-string/jumbo v31, "navigation_Bar"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 947
    :cond_43
    const-string/jumbo v31, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_54

    .line 949
    const-string/jumbo v31, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 955
    :cond_44
    :goto_23
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v31

    if-eqz v31, :cond_55

    .line 956
    const-string/jumbo v31, "screen_timeout_for_dex"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_45

    .line 958
    const-string/jumbo v31, "persist.service.dex.timeout"

    const-wide/32 v32, 0x927c0

    invoke-static/range {v31 .. v33}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 959
    .local v14, "dexTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getDexTimeoutPreferenceDescription(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 968
    .end local v14    # "dexTimeout":J
    :cond_45
    :goto_24
    new-instance v31, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v31 .. v31}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 495
    return-void

    .line 795
    .end local v16    # "isBlueLightFilterOn":Z
    .end local v26    # "str":Ljava/lang/String;
    :cond_46
    const-string/jumbo v31, "vr_display_pref"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 810
    .restart local v26    # "str":Ljava/lang/String;
    :cond_47
    const/16 v31, 0x0

    goto/16 :goto_18

    .line 813
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_19

    .line 824
    :cond_49
    const-string/jumbo v31, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 842
    :cond_4a
    const-string/jumbo v31, "easy_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 866
    :cond_4b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v31

    if-eqz v31, :cond_4c

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1c

    .line 869
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_1c

    .line 879
    :cond_4d
    const-string/jumbo v31, "night_clock"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 884
    :cond_4e
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    goto/16 :goto_1d

    .line 893
    :cond_4f
    const/16 v16, 0x0

    .restart local v16    # "isBlueLightFilterOn":Z
    goto/16 :goto_1f

    .line 906
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "high_contrast"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_51

    .line 907
    const v31, 0x7f0b02a0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    goto/16 :goto_20

    .line 908
    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "color_blind"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_3d

    .line 909
    const v31, 0x7f0b01f0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    goto/16 :goto_20

    .line 924
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_41

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getCurrentResolution()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_21

    .line 939
    :cond_53
    const/16 v31, 0x0

    goto/16 :goto_22

    .line 951
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    if-eqz v31, :cond_44

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_23

    .line 964
    :cond_55
    const-string/jumbo v31, "screen_timeout_for_dex"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_24
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1513
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 1515
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1517
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1518
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 1517
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 1521
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1523
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1524
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1525
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v0, :cond_0

    .line 1526
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1529
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-eqz v0, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->unRregisterBrightnessObserver()V

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 1534
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1537
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 1538
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1540
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v0, :cond_4

    .line 1541
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1543
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v0, :cond_5

    .line 1544
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1549
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v0, :cond_6

    .line 1550
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1551
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1552
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mGrayscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1553
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1554
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1556
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_7

    .line 1557
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolutionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1561
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setInitFinish(Z)V

    .line 1562
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Display"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 1512
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 36
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 2026
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v20

    .line 2027
    .local v20, "key":Ljava/lang/String;
    const-string/jumbo v31, "screen_timeout"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    move-object/from16 v31, p2

    .line 2029
    check-cast v31, Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 2031
    .local v28, "value":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f10015d

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v31

    sput v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    .line 2032
    sparse-switch v28, :sswitch_data_0

    .line 2055
    :goto_0
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 2056
    const-string/jumbo v31, "SecDisplaySettings"

    const-string/jumbo v32, "isInDefaultTimeoutList = true"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "screen_off_timeout_rollback"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2064
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    if-eqz v31, :cond_1

    .line 2065
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "screen_off_timeout"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 2067
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 2071
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    const-string/jumbo v32, "device_policy"

    invoke-virtual/range {v31 .. v32}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    .line 2072
    .local v12, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v12, :cond_12

    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v22

    .line 2073
    .local v22, "maxTimeout":J
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "lock_screen_lock_after_timeout"

    const-wide/16 v34, 0x1388

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 2075
    .local v10, "currentDeviceLockTimeout":J
    const-wide/16 v32, 0x0

    cmp-long v31, v22, v32

    if-eqz v31, :cond_2

    .line 2076
    cmp-long v31, v22, v10

    if-gez v31, :cond_2

    move-wide/from16 v10, v22

    .line 2079
    :cond_2
    const-string/jumbo v31, "SecDisplaySettings"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "value: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ", currentDeviceLockTimeout: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsSecuredLock:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3

    const-wide/16 v32, 0x0

    cmp-long v31, v10, v32

    if-eqz v31, :cond_3

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v32, v0

    cmp-long v31, v32, v10

    if-lez v31, :cond_3

    .line 2082
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->showScreenTimeDialog()V

    .line 2169
    .end local v10    # "currentDeviceLockTimeout":J
    .end local v12    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v22    # "maxTimeout":J
    .end local v28    # "value":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 2170
    const-string/jumbo v31, "SecDisplaySettings"

    const-string/jumbo v32, "preference mAutoBrightnessPreference"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v31, p2

    .line 2171
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 2172
    .local v6, "auto":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 2173
    if-nez v6, :cond_5

    .line 2174
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "brightness_user_touch"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 2175
    .local v7, "brightnessUserTouch":I
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v31

    if-eqz v31, :cond_33

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v31

    if-eqz v31, :cond_33

    const/16 v31, 0x1

    move/from16 v0, v31

    if-eq v7, v0, :cond_33

    .line 2176
    const/16 v21, 0x27

    .line 2177
    .local v21, "lDefaultNttHomeBrightness":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->getSamsungNTTHomeDefaultBrightness(Landroid/content/Context;)[I

    move-result-object v15

    .line 2179
    .local v15, "homeBrightnessList":[I
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v31, "com.nttdocomo.android.dhome"

    const-string/jumbo v32, "com.nttdocomo.android.dhome.HomeActivity"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    .local v4, "DcmLauncher":Landroid/content/ComponentName;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2181
    .local v14, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v9

    .line 2183
    .local v9, "currentDefaultHome":Landroid/content/ComponentName;
    if-eqz v15, :cond_4

    array-length v0, v15

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 2184
    const/16 v31, 0x1

    aget v21, v15, v31

    .line 2187
    :cond_4
    invoke-virtual {v4, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_32

    .line 2188
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "screen_brightness"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2199
    .end local v4    # "DcmLauncher":Landroid/content/ComponentName;
    .end local v7    # "brightnessUserTouch":I
    .end local v9    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v14    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "homeBrightnessList":[I
    .end local v21    # "lDefaultNttHomeBrightness":I
    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "screen_brightness_mode"

    .line 2200
    if-eqz v6, :cond_34

    const/16 v31, 0x1

    .line 2199
    :goto_5
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2202
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v31

    if-eqz v31, :cond_6

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    .line 2205
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->changeSeekbarColor(Z)V

    .line 2206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    .line 2209
    .end local v6    # "auto":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_8

    move-object/from16 v31, p2

    .line 2210
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2211
    .local v30, "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "wake_gesture_enabled"

    if-eqz v30, :cond_35

    const/16 v31, 0x1

    :goto_6
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2213
    .end local v30    # "value":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_9

    move-object/from16 v31, p2

    .line 2214
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2215
    .restart local v30    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "doze_enabled"

    if-eqz v30, :cond_36

    const/16 v31, 0x1

    :goto_7
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2217
    .end local v30    # "value":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_a

    move-object/from16 v31, p2

    .line 2218
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2219
    .restart local v30    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "double_tap_to_wake"

    if-eqz v30, :cond_37

    const/16 v31, 0x1

    :goto_8
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2221
    .end local v30    # "value":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_b

    move-object/from16 v31, p2

    .line 2222
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2223
    .restart local v30    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "camera_gesture_disabled"

    .line 2224
    if-eqz v30, :cond_38

    const/16 v31, 0x0

    .line 2223
    :goto_9
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2226
    .end local v30    # "value":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_c

    move-object/from16 v31, p2

    .line 2227
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2228
    .restart local v30    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "camera_double_tap_power_gesture_disabled"

    .line 2229
    if-eqz v30, :cond_39

    const/16 v31, 0x0

    .line 2228
    :goto_a
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2231
    .end local v30    # "value":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_d

    .line 2233
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 2235
    .restart local v28    # "value":I
    const-string/jumbo v31, "uimode"

    .line 2234
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/UiModeManager;

    .line 2236
    .local v27, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual/range {v27 .. v28}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2241
    .end local v27    # "uiManager":Landroid/app/UiModeManager;
    .end local v28    # "value":I
    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_f

    move-object/from16 v31, p2

    .line 2242
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2243
    .restart local v30    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "blue_light_filter"

    if-eqz v30, :cond_3a

    const/16 v31, 0x1

    :goto_c
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2245
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "blue_light_filter_scheduled"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_3b

    const/16 v17, 0x1

    .line 2246
    .local v17, "isBlueLightFilterScheduled":Z
    :goto_d
    if-eqz v30, :cond_e

    if-eqz v17, :cond_e

    .line 2247
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    const v32, 0x7f0b05a0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    .line 2249
    :cond_e
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 2250
    .local v16, "intent":Landroid/content/Intent;
    new-instance v31, Landroid/content/ComponentName;

    const-string/jumbo v32, "com.samsung.android.bluelightfilter"

    const-string/jumbo v33, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct/range {v31 .. v33}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2251
    if-eqz v30, :cond_3c

    .line 2252
    const-string/jumbo v31, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v32, 0x15

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2256
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2259
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "isBlueLightFilterScheduled":Z
    .end local v30    # "value":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_10

    move-object/from16 v31, p2

    .line 2260
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2261
    .restart local v30    # "value":Z
    if-eqz v30, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_3d

    .line 2262
    const/16 v31, 0x0

    const v32, 0x7f0b0404

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    .line 2272
    .end local v30    # "value":Z
    :cond_10
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_11

    .line 2273
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 2274
    .local v26, "resolver":Landroid/content/ContentResolver;
    if-eqz v26, :cond_11

    move-object/from16 v29, p2

    .line 2275
    check-cast v29, Ljava/lang/String;

    .line 2276
    .local v29, "value":Ljava/lang/String;
    const-string/jumbo v31, "persist.service.dex.timeout"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const-string/jumbo v31, "screen_off_timeout"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 2279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v31, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getDexTimeoutPreferenceDescription(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2283
    .end local v26    # "resolver":Landroid/content/ContentResolver;
    .end local v29    # "value":Ljava/lang/String;
    :cond_11
    const/16 v31, 0x1

    return v31

    .line 2034
    .restart local v28    # "value":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    sget v32, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2037
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    sget v32, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2040
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    sget v32, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2043
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    sget v32, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v33, 0x3

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2046
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    sget v32, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v33, 0x4

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2049
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    sget v32, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v33, 0x5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v31 .. v33}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2060
    :catch_0
    move-exception v13

    .line 2061
    .local v13, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v31, "SecDisplaySettings"

    const-string/jumbo v32, "could not persist screen timeout setting"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2072
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_12
    const-wide/16 v22, 0x0

    .restart local v22    # "maxTimeout":J
    goto/16 :goto_2

    .line 2086
    .end local v12    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v22    # "maxTimeout":J
    .end local v28    # "value":I
    :cond_13
    const-string/jumbo v31, "screensaver"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    move-object/from16 v31, p2

    .line 2087
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_14

    const/16 v28, 0x1

    .line 2089
    .restart local v28    # "value":I
    :goto_10
    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_15

    .line 2090
    new-instance v31, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    .line 2094
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenSaverSummary()V

    goto/16 :goto_3

    .line 2087
    .end local v28    # "value":I
    :cond_14
    const/16 v28, 0x0

    goto :goto_10

    .line 2092
    .restart local v28    # "value":I
    :cond_15
    new-instance v31, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    goto :goto_11

    .line 2095
    .end local v28    # "value":I
    :cond_16
    const-string/jumbo v31, "always_on_screen"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1f

    move-object/from16 v31, p2

    .line 2096
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2097
    .restart local v30    # "value":Z
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v31

    const-string/jumbo v32, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_17

    .line 2098
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 2099
    .local v8, "conf":Landroid/content/res/Configuration;
    iget v0, v8, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0b0552

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2101
    .local v24, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0b0405

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2102
    .local v5, "app":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v5, v32, v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    .line 2103
    const/16 v31, 0x0

    return v31

    .line 2106
    .end local v5    # "app":Ljava/lang/String;
    .end local v8    # "conf":Landroid/content/res/Configuration;
    .end local v24    # "msg":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "accessibility_display_magnification_enabled"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_18

    const/16 v18, 0x1

    .line 2107
    .local v18, "isMagnificationGuesturesEnabled":Z
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "finger_magnifier"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-nez v31, :cond_19

    .line 2108
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "FmMagnifier"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-eqz v31, :cond_1a

    const/16 v19, 0x1

    .line 2109
    .local v19, "isMagnifierWindowEnabled":Z
    :goto_13
    if-eqz v30, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 2110
    const/16 v31, 0x0

    const v32, 0x7f0b0405

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    goto/16 :goto_3

    .line 2106
    .end local v18    # "isMagnificationGuesturesEnabled":Z
    .end local v19    # "isMagnifierWindowEnabled":Z
    :cond_18
    const/16 v18, 0x0

    .restart local v18    # "isMagnificationGuesturesEnabled":Z
    goto :goto_12

    .line 2107
    :cond_19
    const/16 v19, 0x1

    .restart local v19    # "isMagnifierWindowEnabled":Z
    goto :goto_13

    .line 2108
    .end local v19    # "isMagnifierWindowEnabled":Z
    :cond_1a
    const/16 v19, 0x0

    .restart local v19    # "isMagnifierWindowEnabled":Z
    goto :goto_13

    .line 2111
    :cond_1b
    if-eqz v30, :cond_1c

    if-eqz v18, :cond_1c

    .line 2112
    const/16 v31, 0x1

    const v32, 0x7f0b0405

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    goto/16 :goto_3

    .line 2113
    :cond_1c
    if-eqz v30, :cond_1d

    if-eqz v19, :cond_1d

    .line 2114
    const/16 v31, 0x2

    const v32, 0x7f0b0405

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    goto/16 :goto_3

    .line 2116
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "aod_mode"

    if-eqz v30, :cond_1e

    const/16 v31, 0x1

    :goto_14
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_1e
    const/16 v31, 0x0

    goto :goto_14

    .line 2118
    .end local v18    # "isMagnificationGuesturesEnabled":Z
    .end local v19    # "isMagnifierWindowEnabled":Z
    .end local v30    # "value":Z
    :cond_1f
    const-string/jumbo v31, "touch_key_light"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_20

    move-object/from16 v31, p2

    .line 2119
    check-cast v31, Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 2121
    .restart local v28    # "value":I
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "button_key_light"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v31, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2126
    :goto_15
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTouchKeyLightSummary()V

    goto/16 :goto_3

    .line 2123
    :catch_1
    move-exception v13

    .line 2124
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v31, "SecDisplaySettings"

    const-string/jumbo v32, "could not persist Touch key light setting"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 2127
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .end local v28    # "value":I
    :cond_20
    const-string/jumbo v31, "sub_lcd_auto_lock"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_22

    move-object/from16 v31, p2

    .line 2128
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2129
    .restart local v30    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    .line 2130
    const-string/jumbo v33, "sub_lcd_auto_lock"

    if-eqz v30, :cond_21

    const/16 v31, 0x1

    .line 2129
    :goto_16
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 2130
    :cond_21
    const/16 v31, 0x0

    goto :goto_16

    .line 2131
    .end local v30    # "value":Z
    :cond_22
    const-string/jumbo v31, "key_night_mode"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_24

    move-object/from16 v31, p2

    .line 2132
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2133
    .restart local v30    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    .line 2134
    const-string/jumbo v33, "key_night_mode"

    if-eqz v30, :cond_23

    const/16 v31, 0x1

    .line 2133
    :goto_17
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 2134
    :cond_23
    const/16 v31, 0x0

    goto :goto_17

    .line 2135
    .end local v30    # "value":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_26

    move-object/from16 v31, p2

    .line 2136
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2137
    .restart local v30    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "display_outdoor_mode"

    .line 2138
    if-eqz v30, :cond_25

    const/16 v31, 0x1

    .line 2137
    :goto_18
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2139
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f100148

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v31

    sput v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_OUTDOOR_MODE:I

    .line 2140
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    sget v32, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_OUTDOOR_MODE:I

    invoke-static/range {v31 .. v32}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 2138
    :cond_25
    const/16 v31, 0x0

    goto :goto_18

    .line 2141
    .end local v30    # "value":Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_28

    move-object/from16 v31, p2

    .line 2142
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2143
    .restart local v30    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    if-eqz v30, :cond_27

    const/16 v31, 0x0

    :goto_19
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_27
    const/16 v31, 0x1

    goto :goto_19

    .line 2144
    .end local v30    # "value":Z
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2a

    move-object/from16 v31, p2

    .line 2145
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2146
    .restart local v30    # "value":Z
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->setLedIndicator(Z)V

    .line 2147
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f100166

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v31

    sput v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_LED_INDICATOR:I

    .line 2148
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    sget v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_LED_INDICATOR:I

    if-eqz v30, :cond_29

    const/16 v31, 0x3e8

    :goto_1a
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_29
    const/16 v31, 0x0

    goto :goto_1a

    .line 2149
    .end local v30    # "value":Z
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2d

    move-object/from16 v31, p2

    .line 2150
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 2151
    .restart local v30    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "screen_off_pocket"

    if-eqz v30, :cond_2b

    const/16 v31, 0x1

    :goto_1b
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2152
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f100167

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v31

    sput v31, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_KEEP_SCREEN_TURNED_OFF:I

    .line 2153
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    sget v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_KEEP_SCREEN_TURNED_OFF:I

    if-eqz v30, :cond_2c

    const/16 v31, 0x3e8

    :goto_1c
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 2151
    :cond_2b
    const/16 v31, 0x0

    goto :goto_1b

    .line 2153
    :cond_2c
    const/16 v31, 0x0

    goto :goto_1c

    .line 2154
    .end local v30    # "value":Z
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    move-object/from16 v31, p2

    .line 2155
    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_2e

    const/16 v28, 0x1

    .line 2156
    .restart local v28    # "value":I
    :goto_1d
    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_2f

    .line 2157
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v31

    .line 2156
    if-eqz v31, :cond_2f

    .line 2158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->maketurnOffUniversalPopup(Landroid/preference/Preference;)V

    .line 2164
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v31, p2

    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v31, p2

    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_31

    const v31, 0x7f0b1952

    :goto_1f
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v31, p2

    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_3

    .line 2155
    .end local v28    # "value":I
    :cond_2e
    const/16 v28, 0x0

    goto :goto_1d

    .line 2159
    .restart local v28    # "value":I
    :cond_2f
    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_30

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeTalkBackDisablePopup(Landroid/preference/Preference;)V

    goto :goto_1e

    .line 2162
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "intelligent_sleep_mode"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1e

    .line 2165
    :cond_31
    const v31, 0x7f0b0423

    goto :goto_1f

    .line 2190
    .end local v28    # "value":I
    .restart local v4    # "DcmLauncher":Landroid/content/ComponentName;
    .restart local v6    # "auto":Z
    .restart local v7    # "brightnessUserTouch":I
    .restart local v9    # "currentDefaultHome":Landroid/content/ComponentName;
    .restart local v14    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "homeBrightnessList":[I
    .restart local v21    # "lDefaultNttHomeBrightness":I
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "brightness_pms_marker_screen"

    const/16 v33, 0x64

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 2191
    .local v25, "pmsBrightness":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "screen_brightness"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 2194
    .end local v4    # "DcmLauncher":Landroid/content/ComponentName;
    .end local v9    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v14    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "homeBrightnessList":[I
    .end local v21    # "lDefaultNttHomeBrightness":I
    .end local v25    # "pmsBrightness":I
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "brightness_pms_marker_screen"

    const/16 v33, 0x64

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 2195
    .restart local v25    # "pmsBrightness":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "screen_brightness"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 2200
    .end local v7    # "brightnessUserTouch":I
    .end local v25    # "pmsBrightness":I
    :cond_34
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 2211
    .end local v6    # "auto":Z
    .restart local v30    # "value":Z
    :cond_35
    const/16 v31, 0x0

    goto/16 :goto_6

    .line 2215
    :cond_36
    const/16 v31, 0x0

    goto/16 :goto_7

    .line 2219
    :cond_37
    const/16 v31, 0x0

    goto/16 :goto_8

    .line 2224
    :cond_38
    const/16 v31, 0x1

    goto/16 :goto_9

    .line 2229
    :cond_39
    const/16 v31, 0x1

    goto/16 :goto_a

    .line 2237
    .end local v30    # "value":Z
    :catch_2
    move-exception v13

    .line 2238
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v31, "SecDisplaySettings"

    const-string/jumbo v32, "could not persist night mode setting"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v13}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 2243
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .restart local v30    # "value":Z
    :cond_3a
    const/16 v31, 0x0

    goto/16 :goto_c

    .line 2245
    :cond_3b
    const/16 v17, 0x0

    .restart local v17    # "isBlueLightFilterScheduled":Z
    goto/16 :goto_d

    .line 2254
    .restart local v16    # "intent":Landroid/content/Intent;
    :cond_3c
    const-string/jumbo v31, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v32, 0x16

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_e

    .line 2264
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "isBlueLightFilterScheduled":Z
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3f

    .line 2265
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "aod_night_mode"

    if-eqz v30, :cond_3e

    const/16 v31, 0x1

    :goto_20
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_3e
    const/16 v31, 0x0

    goto :goto_20

    .line 2267
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "night_mode"

    if-eqz v30, :cond_40

    const/16 v31, 0x1

    :goto_21
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_40
    const/16 v31, 0x0

    goto :goto_21

    .line 2032
    nop

    :sswitch_data_0
    .sparse-switch
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x493e0 -> :sswitch_4
        0x927c0 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 17
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1887
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1888
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1889
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1890
    .local v12, "intent2":Landroid/content/Intent;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1891
    .local v11, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1892
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.settings.ModePreviewTablet"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1893
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    .line 2021
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "intent2":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 1896
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v12    # "intent2":Landroid/content/Intent;
    :cond_1
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.settings.NewModePreview"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1897
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1900
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "intent2":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 1902
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1903
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDesktopEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1911
    :cond_4
    const/4 v1, 0x0

    return v1

    .line 1905
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1906
    const/4 v3, 0x0

    const v4, 0x7f0b0594

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p0

    .line 1905
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1907
    :catch_0
    move-exception v10

    .line 1908
    .local v10, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1914
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1915
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1916
    .restart local v11    # "intent":Landroid/content/Intent;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1917
    .restart local v12    # "intent2":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1918
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.settings.FontPreviewTablet"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1919
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1921
    :cond_7
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.settings.FontPreview"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1922
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1924
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "intent2":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1925
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1926
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.service.peoplestripe"

    const-string/jumbo v2, "com.samsung.android.service.peoplestripe.settings.TurnOverLighting"

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1928
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1929
    :catch_1
    move-exception v10

    .line 1930
    .restart local v10    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1932
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1933
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1934
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 1935
    .local v9, "conf":Landroid/content/res/Configuration;
    iget v1, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0552

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1937
    .local v16, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0405

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1938
    .local v8, "app":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1939
    const/4 v1, 0x0

    return v1

    .line 1944
    .end local v8    # "app":Ljava/lang/String;
    .end local v9    # "conf":Landroid/content/res/Configuration;
    .end local v16    # "msg":Ljava/lang/String;
    :cond_a
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 1945
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1951
    .end local v11    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_ALWAYS_ON_DISPLAY:I

    .line 1952
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_ALWAYS_ON_DISPLAY:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1946
    :catch_2
    move-exception v10

    .line 1947
    .restart local v10    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "SecDisplaySettings"

    const-string/jumbo v2, "ActivityNotFoundException in AlwaysOnDisplay"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1954
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1956
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1957
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    if-eqz v1, :cond_c

    .line 1958
    const-string/jumbo v1, "com.samsung.android.app.aodservice.settings.NightClock"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1962
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1968
    .end local v11    # "intent":Landroid/content/Intent;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_NIGHT_CLOCK:I

    .line 1969
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_NIGHT_CLOCK:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1960
    .restart local v11    # "intent":Landroid/content/Intent;
    :cond_c
    :try_start_4
    const-string/jumbo v1, "com.samsung.android.app.edge.setting.NightClock"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1963
    .end local v11    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v10

    .line 1964
    .restart local v10    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "SecDisplaySettings"

    const-string/jumbo v2, "ActivityNotFoundException in NightClock"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 1971
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1972
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v15, 0x1

    .line 1973
    .local v15, "isPSMEnabled":Z
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1974
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sem_perfomance_mode"

    const/4 v3, 0x0

    .line 1973
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v13, 0x1

    .line 1975
    .local v13, "isBoostModeEnalbed":Z
    :goto_5
    if-eqz v13, :cond_10

    .line 1976
    const/4 v1, 0x0

    return v1

    .line 1972
    .end local v13    # "isBoostModeEnalbed":Z
    .end local v15    # "isPSMEnabled":Z
    :cond_e
    const/4 v15, 0x0

    .restart local v15    # "isPSMEnabled":Z
    goto :goto_4

    .line 1973
    :cond_f
    const/4 v13, 0x0

    goto :goto_5

    .line 1977
    .restart local v13    # "isBoostModeEnalbed":Z
    :cond_10
    if-nez v15, :cond_11

    .line 1979
    :try_start_5
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1980
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.settings.SCREEN_RESOLUTION_ACTIVITY"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1981
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 1982
    .end local v11    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v10

    .line 1983
    .restart local v10    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1986
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    :cond_11
    const/4 v1, 0x0

    return v1

    .line 1988
    .end local v13    # "isBoostModeEnalbed":Z
    .end local v15    # "isPSMEnabled":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayScaling:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1989
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v15, 0x1

    .line 1990
    .restart local v15    # "isPSMEnabled":Z
    :goto_6
    if-nez v15, :cond_14

    .line 1991
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1992
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.settings.DisplayScalingActivity"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1993
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1989
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "isPSMEnabled":Z
    :cond_13
    const/4 v15, 0x0

    .restart local v15    # "isPSMEnabled":Z
    goto :goto_6

    .line 1995
    :cond_14
    const/4 v1, 0x0

    return v1

    .line 1997
    .end local v15    # "isPSMEnabled":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1998
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1999
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2000
    const-string/jumbo v1, "StartEdit"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2001
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2002
    const-string/jumbo v1, "PackageName"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2003
    const-string/jumbo v1, "ClassName"

    const-string/jumbo v2, "com.android.settings.Settings$LaunchDisplaySettingsActivity"

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2004
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2005
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2006
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2007
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sem_perfomance_mode"

    const/4 v3, 0x0

    .line 2006
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2007
    const/4 v2, 0x1

    .line 2006
    if-ne v1, v2, :cond_17

    const/4 v14, 0x1

    .line 2008
    .local v14, "isGameModeEnalbed":Z
    :goto_7
    if-eqz v14, :cond_18

    .line 2009
    const/4 v1, 0x0

    return v1

    .line 2006
    .end local v14    # "isGameModeEnalbed":Z
    :cond_17
    const/4 v14, 0x0

    goto :goto_7

    .line 2012
    .restart local v14    # "isGameModeEnalbed":Z
    :cond_18
    :try_start_6
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 2013
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 2014
    const-string/jumbo v2, "com.android.settings.Settings$EasyModeAppActivity"

    .line 2013
    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2015
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 2016
    .end local v11    # "intent":Landroid/content/Intent;
    :catch_5
    move-exception v10

    .line 2017
    .restart local v10    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 30

    .prologue
    .line 1270
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 1272
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mResolver:Landroid/content/ContentResolver;

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "screen_off_timeout"

    const-wide/16 v28, 0x7530

    invoke-static/range {v26 .. v29}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1275
    .local v8, "currentTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v26, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->disableUnusableTimeouts(Lcom/android/settings/TimeoutListPreference;)V

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    .line 1279
    const-string/jumbo v27, "device_policy"

    .line 1278
    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 1280
    .local v10, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v10, :cond_0

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    .line 1281
    invoke-static/range {v26 .. v26}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    .line 1284
    .local v4, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v26

    .line 1283
    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v18

    .line 1285
    .local v18, "maxTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1287
    .end local v4    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v18    # "maxTimeout":J
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateState()V

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    move-object/from16 v27, v0

    .line 1291
    invoke-static/range {v26 .. v27}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_1d

    const/16 v26, 0x0

    :goto_0
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1299
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 1300
    const-string/jumbo v27, "screen_off_timeout"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    .line 1300
    const/16 v29, 0x1

    .line 1299
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "screen_mode_setting"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1305
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1306
    .local v11, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v26, "com.android.settings.action.FONT_SIZE_CLOSE"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1307
    const-string/jumbo v26, "com.samsung.intent.action.MAX_BRIGHTNESS_CHANGED"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1309
    const-string/jumbo v26, "SecDisplaySettings"

    const-string/jumbo v27, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "access_control_enabled"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1313
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAccessControlCheckbox()V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "intelligent_sleep_mode"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_1e

    const/16 v24, 0x1

    .line 1317
    .local v24, "smartStayCheck":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v24, :cond_1f

    const v26, 0x7f0b1952

    :goto_2
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1320
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "intelligent_sleep_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1323
    .end local v24    # "smartStayCheck":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->registerBrightnessObserver()V

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessModeChanged()V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    .line 1330
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "screen_brightness_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1334
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "display_outdoor_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_20

    const/16 v16, 0x1

    .line 1336
    .local v16, "mIsOutdoorValue":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "display_outdoor_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1338
    if-eqz v16, :cond_21

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    .line 1344
    .end local v16    # "mIsOutdoorValue":Z
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 1345
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "turn_over_lighting"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 1346
    .local v20, "nValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v27, v0

    if-eqz v20, :cond_22

    const v26, 0x7f0b1952

    :goto_5
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1348
    .end local v20    # "nValue":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getLedIndicator()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1361
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "screen_off_pocket"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_23

    const/16 v21, 0x1

    .line 1363
    .local v21, "nValue":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1365
    .end local v21    # "nValue":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 1366
    sget-object v26, Lcom/samsung/android/settings/display/SecDisplaySettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v6

    .line 1367
    .local v6, "bPowerSaving":Z
    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v26

    if-nez v26, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_25

    .line 1368
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1370
    if-eqz v6, :cond_24

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    const v27, 0x7f0b0408

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 1380
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "aod_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1382
    .end local v6    # "bPowerSaving":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 1383
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    move/from16 v26, v0

    if-eqz v26, :cond_28

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "aod_night_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_26

    const/16 v17, 0x1

    .line 1385
    .local v17, "mNightClcokcheck":Z
    :goto_8
    if-eqz v17, :cond_27

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getNightclocksummary()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1390
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1391
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "aod_night_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1399
    .end local v17    # "mNightClcokcheck":Z
    :cond_c
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "blue_light_filter"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_2b

    const/4 v12, 0x1

    .line 1400
    .local v12, "isBlueLightFilterOn":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setChecked(Z)V

    .line 1402
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterSummary()V

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v27, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v26

    if-eqz v26, :cond_2c

    const/16 v26, 0x0

    :goto_c
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setEnabledAppearance(Z)V

    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "blue_light_filter"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1406
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "blue_light_filter_type"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1407
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "greyscale_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mGrayscaleObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "high_contrast"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1409
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "color_blind"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1411
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getCurrentResolution()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1413
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "display_size_forced"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolutionObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1415
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "low_power"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_2d

    const/4 v14, 0x1

    .line 1419
    .local v14, "isPSMEnabled":Z
    :goto_d
    if-nez v14, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v26

    if-eqz v26, :cond_2f

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "sem_perfomance_mode"

    const/16 v28, 0x0

    .line 1419
    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_2f

    .line 1421
    :cond_e
    if-eqz v14, :cond_2e

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b0a94

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b05af

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    .line 1437
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    .line 1443
    .end local v14    # "isPSMEnabled":Z
    :cond_f
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/settings/widget/RelativeLinkView;->resetLinkData()V

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->getRelativeLinkView()Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1448
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 1449
    const-string/jumbo v27, "sem_perfomance_mode"

    const/16 v28, 0x0

    .line 1448
    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 1450
    .local v22, "perfomanceMode":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v26

    if-eqz v26, :cond_11

    const/16 v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    .line 1451
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 1453
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 1456
    const/4 v5, 0x1

    .line 1457
    .local v5, "aodSupported":Z
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v26

    if-nez v26, :cond_13

    .line 1458
    const/4 v5, 0x0

    .line 1460
    :cond_13
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v26

    if-eqz v26, :cond_30

    const/4 v15, 0x1

    .line 1461
    .local v15, "isSecondaryUser":Z
    :goto_10
    if-eqz v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v26

    .line 1462
    const-string/jumbo v27, "com.samsung.android.app.aodservice"

    .line 1461
    invoke-static/range {v26 .. v27}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_14

    if-eqz v15, :cond_15

    .line 1463
    :cond_14
    const/4 v5, 0x0

    .line 1465
    :cond_15
    if-eqz v5, :cond_16

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v26

    .line 1466
    const-string/jumbo v27, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    .line 1465
    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 1467
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 1468
    .local v7, "conf":Landroid/content/res/Configuration;
    iget v0, v7, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 1469
    const/4 v5, 0x0

    .line 1472
    .end local v7    # "conf":Landroid/content/res/Configuration;
    :cond_16
    sget-object v26, Lcom/samsung/android/settings/display/SecDisplaySettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v6

    .line 1473
    .restart local v6    # "bPowerSaving":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 1474
    const-string/jumbo v27, "high_contrast"

    const/16 v28, 0x0

    .line 1473
    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_31

    const/4 v13, 0x1

    .line 1475
    .local v13, "isNegativeColorEnabled":Z
    :goto_11
    if-eqz v5, :cond_33

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v26

    if-nez v26, :cond_18

    .line 1476
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v26

    .line 1477
    const/16 v27, 0x2

    .line 1476
    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_32

    .line 1479
    :cond_18
    const/4 v5, 0x0

    .line 1483
    :cond_19
    :goto_12
    if-eqz v5, :cond_1a

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 1486
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 1489
    .end local v5    # "aodSupported":Z
    .end local v6    # "bPowerSaving":Z
    .end local v13    # "isNegativeColorEnabled":Z
    .end local v15    # "isSecondaryUser":Z
    .end local v22    # "perfomanceMode":I
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateStateForDesktopMenuItem()V

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 1492
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isGameModeEnabled(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_34

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b0adf

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b05af

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    .line 1501
    :cond_1c
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v28, v0

    const-string/jumbo v29, "Display"

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 1269
    return-void

    .line 1295
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "isBlueLightFilterOn":Z
    :cond_1d
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 1316
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    :cond_1e
    const/16 v24, 0x0

    .restart local v24    # "smartStayCheck":Z
    goto/16 :goto_1

    .line 1318
    :cond_1f
    const v26, 0x7f0b0423

    goto/16 :goto_2

    .line 1335
    .end local v24    # "smartStayCheck":Z
    :cond_20
    const/16 v16, 0x0

    .restart local v16    # "mIsOutdoorValue":Z
    goto/16 :goto_3

    .line 1341
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 1346
    .end local v16    # "mIsOutdoorValue":Z
    .restart local v20    # "nValue":I
    :cond_22
    const v26, 0x7f0b1953

    goto/16 :goto_5

    .line 1362
    .end local v20    # "nValue":I
    :cond_23
    const/16 v21, 0x0

    .restart local v21    # "nValue":Z
    goto/16 :goto_6

    .line 1373
    .end local v21    # "nValue":Z
    .restart local v6    # "bPowerSaving":Z
    :cond_24
    const v26, 0x7f0b0407

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b0405

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b0409

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 1374
    .local v25, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1377
    .end local v25    # "summary":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 1384
    .end local v6    # "bPowerSaving":Z
    :cond_26
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 1388
    .restart local v17    # "mNightClcokcheck":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    const v27, 0x7f0b0421

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 1393
    .end local v17    # "mNightClcokcheck":Z
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v28, "night_mode"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_29

    const v26, 0x7f0b1952

    :goto_14
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v28, "night_mode"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_2a

    const/16 v26, 0x1

    :goto_15
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1395
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "night_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_a

    .line 1393
    :cond_29
    const v26, 0x7f0b1953

    goto :goto_14

    .line 1394
    :cond_2a
    const/16 v26, 0x0

    goto :goto_15

    .line 1399
    :cond_2b
    const/4 v12, 0x0

    .restart local v12    # "isBlueLightFilterOn":Z
    goto/16 :goto_b

    .line 1403
    :cond_2c
    const/16 v26, 0x1

    goto/16 :goto_c

    .line 1415
    :cond_2d
    const/4 v14, 0x0

    goto/16 :goto_d

    .line 1424
    .restart local v14    # "isPSMEnabled":Z
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "sem_perfomance_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 1425
    .local v23, "performanceMode":I
    packed-switch v23, :pswitch_data_0

    goto/16 :goto_e

    .line 1427
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b0adf

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b05af

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1430
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b0add

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b05af

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1433
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b0adb

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b05af

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1439
    .end local v23    # "performanceMode":I
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    goto/16 :goto_f

    .line 1460
    .end local v14    # "isPSMEnabled":Z
    .restart local v5    # "aodSupported":Z
    .restart local v22    # "perfomanceMode":I
    :cond_30
    const/4 v15, 0x0

    .restart local v15    # "isSecondaryUser":Z
    goto/16 :goto_10

    .line 1473
    .restart local v6    # "bPowerSaving":Z
    :cond_31
    const/4 v13, 0x0

    .restart local v13    # "isNegativeColorEnabled":Z
    goto/16 :goto_11

    .line 1475
    :cond_32
    if-nez v13, :cond_18

    .line 1480
    :cond_33
    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 1481
    const/4 v5, 0x0

    goto/16 :goto_12

    .line 1496
    .end local v5    # "aodSupported":Z
    .end local v6    # "bPowerSaving":Z
    .end local v13    # "isNegativeColorEnabled":Z
    .end local v15    # "isSecondaryUser":Z
    .end local v22    # "perfomanceMode":I
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    goto/16 :goto_13

    .line 1425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showScreenTimeDialog()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 2289
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2290
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 2291
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v14}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 2292
    .local v6, "maxTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2294
    .local v2, "currentDeviceLockTimeout":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_0

    .line 2295
    cmp-long v9, v6, v2

    if-gez v9, :cond_0

    move-wide v2, v6

    .line 2298
    :cond_0
    const-string/jumbo v9, "SecDisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "maxTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    const-string/jumbo v9, "SecDisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "currentDeviceLockTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    iget-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_1

    .line 2302
    iget-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 2303
    iput-object v14, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 2306
    :cond_1
    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 2307
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f0401e7

    invoke-virtual {v4, v9, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2308
    .local v5, "layout":Landroid/view/View;
    const v9, 0x7f110564

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2309
    .local v8, "tv":Landroid/widget/TextView;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b05d7

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2310
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2311
    const v9, 0x7f0b12be    # 1.8486E38f

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2312
    const v9, 0x104000a

    invoke-virtual {v0, v9, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 2314
    iget-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 2287
    return-void

    .line 2291
    .end local v2    # "currentDeviceLockTimeout":J
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "layout":Landroid/view/View;
    .end local v6    # "maxTimeout":J
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_2
    const-wide/16 v6, 0x0

    .restart local v6    # "maxTimeout":J
    goto/16 :goto_0
.end method

.method public updateAccessControlCheckbox()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1870
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "access_control_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1871
    .local v0, "enable":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    .line 1869
    .local v1, "mIsBasicMode":Z
    :goto_1
    return-void

    .line 1870
    .end local v0    # "enable":Z
    .end local v1    # "mIsBasicMode":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 1871
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "mIsBasicMode":Z
    goto :goto_1
.end method
