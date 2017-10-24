.class public Lcom/android/settings/SettingsActivity;
.super Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/samsung/android/settings/wifi/ButtonImageBarHandler;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsActivity$1;,
        Lcom/android/settings/SettingsActivity$2;,
        Lcom/android/settings/SettingsActivity$3;,
        Lcom/android/settings/SettingsActivity$AssistantReceiver;,
        Lcom/android/settings/SettingsActivity$onEditButtonClicked;,
        Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;
    }
.end annotation


# static fields
.field public static final ENTRY_EXTRA_FOR_SEARCH:[Ljava/lang/String;

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field public static final SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mFpContext:Landroid/content/Context;

.field private static mSplitBarMovedLeftWeight:F

.field private static mUserUpdateSplit:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

.field private bEasymode:Z

.field private bFromRelativeLink:Z

.field private fromActSearch:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActionBar:Landroid/app/ActionBar;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mCurrentSuggestion:Landroid/content/ComponentName;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mKnoxCustomIsProKioskMode:Z

.field private mKnoxCustomProKioskSettingsItems:I

.field private mKnoxCustomSettingsState:I

.field private mLeftPane:Landroid/widget/LinearLayout;

.field private mLeftPaneToolbar:Landroid/widget/Toolbar;

.field protected mMainContentId:I

.field private mMore:Landroid/view/MenuItem;

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNextButtonArea:Landroid/widget/LinearLayout;

.field private mNextButtonArrow:Landroid/widget/ImageView;

.field private mNextButtonText:Landroid/widget/TextView;

.field private final mNfcStateReceiver:Landroid/content/BroadcastReceiver;

.field private mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

.field private mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

.field private mPrevButtonArea:Landroid/widget/LinearLayout;

.field private mPrevButtonArrow:Landroid/widget/ImageView;

.field private mPrevButtonText:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultIntentData:Landroid/content/Intent;

.field private mRightPane:Landroid/widget/LinearLayout;

.field private mRightPaneToolbar:Landroid/widget/Toolbar;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSinglePane:Z

.field private mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

.field private mSplitBarView:Landroid/view/View;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTopLevelTileId:Ljava/lang/String;

.field private mUpdateLayoutBySplitChange:Z

.field private final mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/SettingsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/SettingsActivity;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic -get5()F
    .locals 1

    sget v0, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/SettingsActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/SettingsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mUpdateLayoutBySplitChange:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic -set1(F)F
    .locals 0

    sput p0, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    return p0
.end method

.method static synthetic -set2(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mUpdateLayoutBySplitChange:Z

    return p1
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/SettingsActivity;->mUserUpdateSplit:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->doUpdateTilesList()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsActivity;->mFpContext:Landroid/content/Context;

    .line 319
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 330
    sput-boolean v3, Lcom/android/settings/SettingsActivity;->mUserUpdateSplit:Z

    .line 331
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    .line 381
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 382
    const-class v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 383
    const-string/jumbo v1, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    aput-object v1, v0, v4

    .line 384
    const-string/jumbo v1, "com.android.settings.notification.VolumeLimiterSettings"

    aput-object v1, v0, v5

    .line 385
    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintEntry"

    aput-object v1, v0, v6

    .line 386
    const-string/jumbo v1, "com.samsung.android.settings.iris.IrisLockSettings"

    aput-object v1, v0, v7

    .line 387
    const-string/jumbo v1, "com.samsung.android.settings.NewModePreview"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 381
    sput-object v0, Lcom/android/settings/SettingsActivity;->ENTRY_EXTRA_FOR_SEARCH:[Ljava/lang/String;

    .line 390
    const/16 v0, 0x61

    new-array v0, v0, [Ljava/lang/String;

    .line 391
    const-string/jumbo v1, "com.samsung.android.settings.GigaMultiPath"

    aput-object v1, v0, v3

    .line 392
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.ToggleMagnifierPreferenceFragment"

    aput-object v1, v0, v4

    .line 393
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.ToggleAirWakeUpPreferenceFragment"

    aput-object v1, v0, v5

    .line 394
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.ToggleAccessControlPreferenceFragment"

    aput-object v1, v0, v6

    .line 395
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.notificationreminder.NotificationReminderPreferenceFragment"

    aput-object v1, v0, v7

    .line 396
    const-string/jumbo v1, "com.samsung.android.settings.activekey.ActiveKeySettings"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 397
    const-string/jumbo v1, "com.samsung.android.settings.activekey.ActiveKeyAppGridView"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 398
    const-string/jumbo v1, "com.samsung.android.settings.AirplaneModeSettings"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 399
    const-string/jumbo v1, "com.samsung.android.settings.applications.ManageDefaultApps"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 400
    const-string/jumbo v1, "com.samsung.android.settings.ApplicationsSettings"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 401
    const-string/jumbo v1, "com.samsung.android.settings.DCMHomeSettings"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 402
    const-string/jumbo v1, "com.samsung.android.settings.autopoweronoff.AutoPowerOnOffSettings"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 403
    const-string/jumbo v1, "com.samsung.android.settings.bluelightfilter.BlueLightFilterSettings"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 404
    const-string/jumbo v1, "com.samsung.android.settings.bluetooth.BluetoothDualPlaySettings"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 405
    const-string/jumbo v1, "com.samsung.android.settings.CloudAccountSettings"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 406
    const-string/jumbo v1, "com.samsung.android.settings.ConnectionsSettings"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 407
    const-string/jumbo v1, "com.samsung.android.settings.DataSlotChoice"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 408
    const-string/jumbo v1, "com.samsung.android.settings.devicevisibility.DeviceVisibilitySettings"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 409
    const-string/jumbo v1, "com.samsung.android.settings.DockSettings"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 410
    const-string/jumbo v1, "com.samsung.android.settings.DomesticSettings"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 411
    const-string/jumbo v1, "com.samsung.android.settings.fmm.FindMyMobileSettings"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 412
    const-string/jumbo v1, "com.samsung.android.settings.GigaLteSettings"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 413
    const-string/jumbo v1, "com.samsung.android.settings.GlobalRoamingSettings"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 414
    const-string/jumbo v1, "com.samsung.android.settings.LGTCustomerService"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 415
    const-string/jumbo v1, "com.samsung.android.settings.GlobalLteRoaming"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 416
    const-string/jumbo v1, "com.samsung.android.settings.LGTRoamingEnv"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 417
    const-string/jumbo v1, "com.samsung.android.settings.HongBaoAssistantPreferenceFragment"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 418
    const-string/jumbo v1, "com.android.settings.datausage.BillingCycleChnSettings"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 419
    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.LockscreenMenuSettings"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 420
    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.SecuredLockSettingsMenu"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 421
    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.ShowInfomationMenu"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 422
    const-string/jumbo v1, "com.samsung.android.settings.LteModeActivity"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 423
    const-string/jumbo v1, "com.samsung.android.settings.mirrorlink.MirrorLink"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 424
    const-string/jumbo v1, "com.samsung.android.settings.notification.BlockNotificationList"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 425
    const-string/jumbo v1, "com.samsung.android.settings.notification.NotificationsSubSettings"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 426
    const-string/jumbo v1, "com.samsung.android.settings.notification.PriorityNotiAppList"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 427
    const-string/jumbo v1, "com.samsung.android.settings.notification.VibrationsSettings"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 428
    const-string/jumbo v1, "com.samsung.android.settings.notification.VolumeSettings"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 429
    const-string/jumbo v1, "com.samsung.android.settings.notification.ZenModeDNDSettings"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 430
    const-string/jumbo v1, "com.samsung.android.settings.OtherSecuritySettings"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 431
    const-string/jumbo v1, "com.samsung.android.settings.personalpage.PersonalPageSettings"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 432
    const-string/jumbo v1, "com.samsung.android.settings.safetycare.PanicModeSettings"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 433
    const-string/jumbo v1, "com.samsung.android.settings.safetycare.SafetyCareEmergencyMode"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 434
    const-string/jumbo v1, "com.samsung.android.settings.safetycare.SafetyCareSettings"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 435
    const-string/jumbo v1, "com.samsung.android.settings.SmartStaySettings"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 436
    const-string/jumbo v1, "com.samsung.android.settings.NewOneHandOperationSettings"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 437
    const-string/jumbo v1, "com.samsung.android.settings.TRoamingSettings"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 438
    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.HDReffectSettings"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 439
    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.MultiWindowSettings"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 440
    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.Usefulfeature"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 441
    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.UsefulFeatureHub"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 442
    const-string/jumbo v1, "com.samsung.android.settings.powersaving.LowBatteryFragment"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 443
    const-string/jumbo v1, "com.samsung.android.settings.powersaving.PowerSavingValueFragment"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 444
    const-string/jumbo v1, "com.samsung.android.settings.lockappshortcut.LockAppShortcutSettings"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 445
    const-string/jumbo v1, "com.samsung.android.settings.dualclock.DualClockSetting"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 446
    const-string/jumbo v1, "com.samsung.android.settings.easymode.EasyModeApp"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 447
    const-string/jumbo v1, "com.samsung.android.settings.SoftwareUpdateSettings"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 448
    const-string/jumbo v1, "com.samsung.android.settings.smartbonding.SmartBondingSettings"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 449
    const-string/jumbo v1, "com.samsung.android.settings.GeneralDeviceSettings"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 450
    const-string/jumbo v1, "com.samsung.android.settings.nfc.NfcSettings"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 451
    const-string/jumbo v1, "com.samsung.android.settings.nfc.NfcOsaifukeitaiSettings"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 452
    const-string/jumbo v1, "com.samsung.android.settings.nearby.NearbySettings"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 453
    const-string/jumbo v1, "com.samsung.android.settings.nfc.PaymentSettings"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 454
    const-string/jumbo v1, "com.samsung.android.settings.nfc.PaymentBaseSettings"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 455
    const-string/jumbo v1, "com.samsung.android.settings.boostmode.BoostModeCustomFragment"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 456
    const-string/jumbo v1, "com.samsung.android.settings.ethernet.EthernetSettings"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 457
    const-string/jumbo v1, "com.samsung.android.settings.spen.PenAirCmdSettingsMenu"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 458
    const-string/jumbo v1, "com.samsung.android.settings.multisound.MultiSoundSettings"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 459
    const-string/jumbo v1, "com.samsung.android.settings.spen.SPenSettingsMenu"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 460
    const-string/jumbo v1, "com.samsung.android.settings.handwritingsearch.HandwritingLanguagePreference"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 461
    const-string/jumbo v1, "com.samsung.android.settings.deviceinfo.simlockstatus.SimLockStatus"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 463
    const-string/jumbo v1, "com.samsung.android.settings.WirelessSettings"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 464
    const-string/jumbo v1, "com.samsung.android.settings.DateTimeSettings"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 465
    const-string/jumbo v1, "com.samsung.android.settings.display.SecDisplaySettings"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 466
    const-string/jumbo v1, "com.samsung.android.settings.display.StatusBar"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 467
    const-string/jumbo v1, "com.samsung.android.settings.display.ScreenResolutionSettings"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 468
    const-string/jumbo v1, "com.samsung.android.settings.display.DisplayTemperatureSettings"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 469
    const-string/jumbo v1, "com.samsung.android.settings.PrivacySettings"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 470
    const-string/jumbo v1, "com.samsung.android.settings.PrivacyResetSettings"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 471
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettings"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 472
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettingsHearing"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 473
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettingsMobility"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 474
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettingsVision"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 475
    const-string/jumbo v1, "com.samsung.android.settings.AssistantMenuPreferenceFragment"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 476
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.LightNotificationPreferenceFragment"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 477
    const-string/jumbo v1, "com.samsung.android.settings.notification.SoundSettings"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 478
    const-string/jumbo v1, "com.samsung.android.settings.notification.SoundModeSettings"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 479
    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.WifiApSettings"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 481
    const-string/jumbo v1, "com.samsung.android.settings.bluetooth.tethering.BtTetherSettings"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 483
    const-string/jumbo v1, "com.samsung.android.settings.deviceinfo.StatusVZW"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 484
    const-string/jumbo v1, "com.samsung.android.settings.location.LocationUseInBackground"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 485
    const-string/jumbo v1, "com.samsung.android.settings.accessories.LedCoverCallerIDSettings"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 486
    const-string/jumbo v1, "com.samsung.android.settings.accessories.LedCoverCallerIDList"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 487
    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.LockscreenNotificationApplist"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 488
    const-string/jumbo v1, "com.samsung.android.settings.navigationbar.NavigationBarSettings"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 489
    const-string/jumbo v1, "com.samsung.android.settings.navigationbar.PressureTouchActionSettings"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 490
    const-string/jumbo v1, "com.samsung.android.settings.DeviceMaintenanceSettings"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 390
    sput-object v0, Lcom/android/settings/SettingsActivity;->SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 494
    const/16 v0, 0x5d

    new-array v0, v0, [Ljava/lang/String;

    .line 503
    const-class v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 505
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 506
    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 507
    const-class v1, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 508
    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 509
    const-class v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 510
    const-class v1, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 511
    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 512
    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 514
    const-class v1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 516
    const-class v1, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 518
    const-class v1, Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 519
    const-class v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 520
    const-class v1, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 521
    const-class v1, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 522
    const-class v1, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 523
    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 524
    const-class v1, Lcom/android/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 525
    const-class v1, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 526
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 527
    const-class v1, Lcom/android/settings/applications/NotificationApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 528
    const-class v1, Lcom/android/settings/applications/ManageAssist;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 529
    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 530
    const-class v1, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 531
    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 532
    const-class v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 533
    const-class v1, Lcom/android/settings/applications/UsageAccessDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 534
    const-class v1, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 535
    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 536
    const-class v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 537
    const-class v1, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 538
    const-class v1, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 539
    const-class v1, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 540
    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 541
    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 542
    const-class v1, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 543
    const-class v1, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 544
    const-class v1, Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 545
    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 546
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 547
    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 548
    const-class v1, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 549
    const-class v1, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 550
    const-class v1, Lcom/android/settings/CryptKeeperInterstitial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 551
    const-class v1, Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 552
    const-class v1, Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 553
    const-class v1, Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 554
    const-class v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 555
    const-class v1, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 556
    const-class v1, Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 557
    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 558
    const-class v1, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 559
    const-class v1, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 560
    const-class v1, Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 561
    const-class v1, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 562
    const-class v1, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 563
    const-class v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 564
    const-class v1, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 565
    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 566
    const-class v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 567
    const-class v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 568
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 569
    const-class v1, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 570
    const-class v1, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 571
    const-class v1, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 572
    const-class v1, Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 573
    const-class v1, Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 574
    const-class v1, Lcom/android/settings/ApnEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 575
    const-class v1, Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 576
    const-class v1, Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 577
    const-class v1, Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 578
    const-class v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 579
    const-class v1, Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 580
    const-class v1, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 581
    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 582
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 583
    const-class v1, Lcom/android/settings/applications/ProcessStatsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 584
    const-class v1, Lcom/android/settings/applications/DrawOverlayDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 585
    const-class v1, Lcom/android/settings/applications/WriteSettingsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 586
    const-class v1, Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 587
    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 588
    const-class v1, Lcom/android/settings/applications/VrListenerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 589
    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 590
    const-class v1, Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 591
    const-class v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 592
    const-class v1, Lcom/android/settings/deviceinfo/ImeiInformation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 593
    const-class v1, Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 594
    const-class v1, Lcom/android/settings/deviceinfo/Status;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 595
    const-class v1, Lcom/android/settings/TestingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 596
    const-class v1, Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 597
    const-class v1, Lcom/android/settings/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 598
    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 599
    const-class v1, Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 494
    sput-object v0, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 612
    new-array v0, v4, [Ljava/lang/String;

    .line 613
    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    .line 612
    sput-object v0, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    .line 205
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;-><init>()V

    .line 318
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    .line 332
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mUpdateLayoutBySplitChange:Z

    .line 333
    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 337
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    .line 343
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    .line 345
    const-class v1, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 346
    const-class v1, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 347
    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 348
    const-class v1, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 349
    const-class v1, Lcom/android/settings/Settings$WirelessSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 351
    const-class v1, Lcom/android/settings/Settings$HomeSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 352
    const-class v1, Lcom/android/settings/Settings$SoundSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 353
    const-class v1, Lcom/android/settings/Settings$DisplaySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 354
    const-class v1, Lcom/android/settings/Settings$StorageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 355
    const-class v1, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 356
    const-class v1, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 357
    const-class v1, Lcom/android/settings/Settings$UsefulFeatureMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 359
    const-class v1, Lcom/android/settings/Settings$LocationSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 360
    const-class v1, Lcom/android/settings/Settings$SecuritySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 361
    const-class v1, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 362
    const-class v1, Lcom/android/settings/Settings$UserSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 363
    const-class v1, Lcom/android/settings/Settings$AccountSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 364
    const-class v1, Lcom/android/settings/Settings$EasyModeAppActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 366
    const-class v1, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 367
    const-class v1, Lcom/android/settings/Settings$DeviceInfoSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 368
    const-class v1, Lcom/android/settings/Settings$AccessibilitySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 369
    const-class v1, Lcom/android/settings/Settings$PrintSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 370
    const-class v1, Lcom/android/settings/Settings$PaymentSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 372
    const-class v1, Lcom/android/settings/Settings$ConnectionsSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 373
    const-class v1, Lcom/android/settings/Settings$BlockNotificationListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 374
    const-class v1, Lcom/android/settings/Settings$GeneralDeviceSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 375
    const-class v1, Lcom/android/settings/Settings$CloudAccountSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 376
    const-class v1, Lcom/android/settings/Settings$DomesticSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 377
    const-class v1, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 378
    const-class v1, Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 343
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    .line 626
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 627
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 642
    new-instance v0, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mNfcStateReceiver:Landroid/content/BroadcastReceiver;

    .line 652
    new-instance v0, Lcom/android/settings/SettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    .line 664
    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;-><init>()V

    .line 663
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    .line 684
    const v0, 0x7f1104bd

    iput v0, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    .line 690
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 695
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    .line 696
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    .line 697
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 705
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 850
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->fromActSearch:Z

    .line 1036
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    .line 2752
    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    .line 2782
    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    .line 205
    return-void
.end method

.method private doUpdateTilesList()V
    .locals 47

    .prologue
    .line 2059
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 2060
    .local v23, "pm":Landroid/content/pm/PackageManager;
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v40

    .line 2061
    .local v40, "um":Landroid/os/UserManager;
    invoke-virtual/range {v40 .. v40}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v13

    .line 2063
    .local v13, "isAdmin":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 2064
    .local v22, "packageName":Ljava/lang/String;
    const-string/jumbo v43, "android.hardware.wifi"

    move-object/from16 v0, v23

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    .line 2066
    .local v36, "showWifi":Z
    const/16 v17, 0x0

    .line 2067
    .local v17, "isKnoxCustomWifi":Z
    sget-object v43, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_1

    .line 2068
    const/16 v43, 0x1

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v43

    if-nez v43, :cond_0

    .line 2069
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v43, v0

    and-int/lit8 v43, v43, 0x1

    if-nez v43, :cond_1

    .line 2070
    :cond_0
    const/16 v36, 0x0

    .line 2071
    .local v36, "showWifi":Z
    const/16 v17, 0x1

    .line 2075
    .end local v36    # "showWifi":Z
    :cond_1
    new-instance v44, Landroid/content/ComponentName;

    const-class v43, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    if-eqz v17, :cond_17

    const/16 v43, 0x1

    .line 2075
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v36

    move/from16 v3, v43

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2078
    const-string/jumbo v43, "android.hardware.bluetooth"

    move-object/from16 v0, v23

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v25

    .line 2080
    .local v25, "showBT":Z
    const/4 v14, 0x0

    .line 2081
    .local v14, "isKnoxCustomBT":Z
    sget-object v43, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_3

    .line 2082
    const/16 v43, 0x2

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v43

    if-nez v43, :cond_2

    .line 2083
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v43, v0

    if-eqz v43, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v43, v0

    and-int/lit8 v43, v43, 0x2

    if-nez v43, :cond_3

    .line 2084
    :cond_2
    const/16 v25, 0x0

    .line 2085
    .local v25, "showBT":Z
    const/4 v14, 0x1

    .line 2089
    .end local v25    # "showBT":Z
    :cond_3
    new-instance v44, Landroid/content/ComponentName;

    .line 2090
    const-class v43, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    .line 2089
    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    if-eqz v14, :cond_18

    const/16 v43, 0x1

    .line 2089
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v25

    move/from16 v3, v43

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2093
    new-instance v43, Landroid/content/ComponentName;

    .line 2094
    const-class v44, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    .line 2093
    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v44

    .line 2093
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2097
    new-instance v43, Landroid/content/ComponentName;

    .line 2098
    const-class v44, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    .line 2097
    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v44

    .line 2097
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2101
    new-instance v43, Landroid/content/ComponentName;

    .line 2102
    const-class v44, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    .line 2101
    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    move/from16 v44, v0

    .line 2101
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2106
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v43

    .line 2105
    if-eqz v43, :cond_1a

    .line 2106
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v43

    if-eqz v43, :cond_19

    const/16 v35, 0x0

    .line 2108
    .local v35, "showUser":Z
    :goto_2
    const/16 v16, 0x0

    .line 2109
    .local v16, "isKnoxCustomUsers":Z
    sget-object v43, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_4

    .line 2110
    const/16 v43, 0x80

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v43

    .line 2109
    if-eqz v43, :cond_4

    .line 2111
    const/16 v35, 0x0

    .line 2112
    const/16 v16, 0x1

    .line 2115
    :cond_4
    new-instance v44, Landroid/content/ComponentName;

    .line 2116
    const-class v43, Lcom/android/settings/Settings$UserSettingsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    .line 2115
    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    if-eqz v16, :cond_1b

    const/16 v43, 0x1

    .line 2115
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v35

    move/from16 v3, v43

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2119
    const/16 v32, 0x1

    .line 2120
    .local v32, "showNfc":Z
    const-string/jumbo v43, "android.hardware.nfc"

    move-object/from16 v0, v23

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isFactoryBinary()Z

    move-result v43

    if-eqz v43, :cond_1c

    .line 2123
    :cond_5
    :goto_4
    new-instance v44, Landroid/content/ComponentName;

    .line 2124
    const-class v43, Lcom/android/settings/Settings$NfcSettingsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    .line 2123
    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    if-eqz v32, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v43

    if-eqz v43, :cond_1d

    :cond_6
    const/16 v43, 0x0

    .line 2123
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2127
    new-instance v44, Landroid/content/ComponentName;

    .line 2128
    const-class v43, Lcom/android/settings/Settings$NfcOsaifukeitaiSettingsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    .line 2127
    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    if-eqz v32, :cond_1e

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v43

    .line 2127
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2131
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    .line 2132
    .local v5, "adapter":Landroid/nfc/NfcAdapter;
    new-instance v44, Landroid/content/ComponentName;

    .line 2133
    const-class v43, Lcom/android/settings/Settings$PaymentSettingsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    .line 2132
    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    const-string/jumbo v43, "android.hardware.nfc"

    move-object/from16 v0, v23

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_20

    .line 2135
    const-string/jumbo v43, "android.hardware.nfc.hce"

    move-object/from16 v0, v23

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v43

    .line 2134
    if-eqz v43, :cond_20

    .line 2136
    if-eqz v5, :cond_20

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->isAllEnabled()Z

    move-result v43

    .line 2134
    if-eqz v43, :cond_20

    .line 2136
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v43

    if-nez v43, :cond_1f

    const/16 v43, 0x1

    .line 2132
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2138
    new-instance v43, Landroid/content/ComponentName;

    .line 2139
    const-class v44, Lcom/android/settings/Settings$PrintSettingsActivity;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    .line 2138
    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    const-string/jumbo v44, "android.software.print"

    move-object/from16 v0, v23

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v44

    .line 2138
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2142
    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v12

    .line 2143
    .local v12, "helpMenuData":Lcom/android/settings/Utils$OnlineHelpMenuState;
    new-instance v44, Landroid/content/ComponentName;

    const-class v43, Lcom/android/settings/Settings$HelpActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    iget-boolean v0, v12, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    move/from16 v43, v0

    if-eqz v43, :cond_21

    const/16 v43, 0x0

    .line 2143
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2147
    const-string/jumbo v43, "connectivity"

    .line 2146
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/ConnectivityManager;

    .line 2148
    .local v19, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v20

    .line 2149
    .local v20, "mUsbRegexs":[Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v21

    .line 2150
    .local v21, "mWifiRegexs":[Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v18

    .line 2152
    .local v18, "mBluetoothRegexs":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v43, v0

    if-eqz v43, :cond_22

    const/16 v41, 0x1

    .line 2153
    .local v41, "usbAvailable":Z
    :goto_9
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v43, v0

    if-eqz v43, :cond_23

    const/16 v42, 0x1

    .line 2154
    .local v42, "wifiAvailable":Z
    :goto_a
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v43, v0

    if-eqz v43, :cond_24

    const/4 v6, 0x1

    .line 2156
    .local v6, "bluetoothAvailable":Z
    :goto_b
    new-instance v43, Landroid/content/ComponentName;

    const-class v44, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    if-nez v41, :cond_25

    if-nez v42, :cond_25

    .line 2156
    .end local v6    # "bluetoothAvailable":Z
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v6, v13, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2160
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v24

    .line 2161
    .local v24, "salesCode":Ljava/lang/String;
    new-instance v44, Landroid/content/ComponentName;

    const-class v43, Lcom/android/settings/Settings$SoftwareUpdateSettingActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isUsingVZWFota(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isUsingATTFota(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_26

    :cond_7
    const/16 v43, 0x0

    .line 2161
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2165
    new-instance v43, Landroid/content/ComponentName;

    const-class v44, Lcom/android/settings/Settings$DockSettingsActivity;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v44

    .line 2165
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2168
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isEasyModeDisplayed(Landroid/content/Context;)Z

    move-result v28

    .line 2169
    .local v28, "showEasyMode":Z
    new-instance v43, Landroid/content/ComponentName;

    const-class v44, Lcom/android/settings/Settings$EasyModeAppActivity;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v28

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2172
    const/16 v29, 0x1

    .line 2173
    .local v29, "showFingerprint":Z
    const-string/jumbo v43, "com.sec.feature.fingerprint_manager_service"

    move-object/from16 v0, v23

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v43

    if-nez v43, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v43

    if-nez v43, :cond_8

    .line 2174
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v43

    .line 2173
    if-nez v43, :cond_8

    .line 2174
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->isUCMKeyguardEnabled()Z

    move-result v43

    .line 2173
    if-eqz v43, :cond_9

    .line 2175
    :cond_8
    const/16 v29, 0x0

    .line 2177
    :cond_9
    new-instance v43, Landroid/content/ComponentName;

    const-class v44, Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v29

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2179
    const/16 v26, 0x1

    .line 2180
    .local v26, "showBioFace":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v43

    if-eqz v43, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v43

    if-nez v43, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v43

    if-nez v43, :cond_a

    .line 2181
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v43

    .line 2180
    if-eqz v43, :cond_b

    .line 2182
    :cond_a
    const/16 v26, 0x0

    .line 2184
    :cond_b
    new-instance v43, Landroid/content/ComponentName;

    const-class v44, Lcom/samsung/android/settings/face/FaceEntry;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v26

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2186
    const/16 v30, 0x1

    .line 2187
    .local v30, "showIris":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v43

    if-eqz v43, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v43

    if-nez v43, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v43

    if-nez v43, :cond_c

    .line 2188
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v43

    .line 2187
    if-eqz v43, :cond_d

    .line 2189
    :cond_c
    const/16 v30, 0x0

    .line 2191
    :cond_d
    new-instance v43, Landroid/content/ComponentName;

    const-class v44, Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v30

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2194
    new-instance v44, Landroid/content/ComponentName;

    const-class v43, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    const/16 v43, 0x10

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v43

    if-eqz v43, :cond_27

    const/16 v43, 0x0

    :goto_e
    const/16 v45, 0x1

    .line 2194
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move/from16 v3, v45

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2197
    new-instance v44, Landroid/content/ComponentName;

    const-class v43, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    const/16 v43, 0x200

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v43

    if-eqz v43, :cond_28

    const/16 v43, 0x0

    :goto_f
    const/16 v45, 0x1

    .line 2197
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move/from16 v3, v45

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2200
    sget-object v43, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_10

    .line 2202
    const/16 v31, 0x1

    .line 2203
    .local v31, "showLocation":Z
    const/16 v43, 0x400

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v43

    if-nez v43, :cond_e

    .line 2204
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v43, v0

    if-eqz v43, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v43, v0

    and-int/lit8 v43, v43, 0x4

    if-nez v43, :cond_f

    .line 2205
    :cond_e
    const/16 v31, 0x0

    .line 2207
    :cond_f
    new-instance v43, Landroid/content/ComponentName;

    const-class v44, Lcom/android/settings/Settings$LocationSettingsActivity;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    const/16 v44, 0x1

    .line 2207
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v31

    move/from16 v3, v44

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2210
    new-instance v44, Landroid/content/ComponentName;

    const-class v43, Lcom/android/settings/Settings$AirplaneModeSettingsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    const/16 v43, 0x4

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v43

    if-eqz v43, :cond_29

    const/16 v43, 0x0

    :goto_10
    const/16 v45, 0x1

    .line 2210
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move/from16 v3, v45

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2213
    new-instance v44, Landroid/content/ComponentName;

    const-class v43, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    const/16 v43, 0x20

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v43

    if-eqz v43, :cond_2a

    const/16 v43, 0x0

    :goto_11
    const/16 v45, 0x1

    .line 2213
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move/from16 v3, v45

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2216
    new-instance v44, Landroid/content/ComponentName;

    const-class v43, Lcom/android/settings/Settings$ApplicationsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    const/16 v43, 0x200

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v43

    if-eqz v43, :cond_2b

    const/16 v43, 0x0

    :goto_12
    const/16 v45, 0x1

    .line 2216
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move/from16 v3, v45

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2219
    new-instance v44, Landroid/content/ComponentName;

    const-class v43, Lcom/android/settings/Settings$PrivacySettingsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    const/16 v43, 0x40

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v43

    if-eqz v43, :cond_2c

    const/16 v43, 0x0

    :goto_13
    const/16 v45, 0x1

    .line 2219
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move/from16 v3, v45

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2224
    .end local v31    # "showLocation":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v43, v0

    .line 2225
    const-string/jumbo v44, "show"

    sget-object v45, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v46, "eng"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    .line 2224
    invoke-interface/range {v43 .. v45}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    if-eqz v43, :cond_2e

    .line 2226
    const-string/jumbo v43, "no_debugging_features"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_2d

    const/16 v27, 0x0

    .line 2228
    .local v27, "showDev":Z
    :goto_14
    const/4 v15, 0x0

    .line 2229
    .local v15, "isKnoxCustomDev":Z
    const/16 v43, 0x100

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v43

    if-eqz v43, :cond_11

    .line 2230
    const/16 v27, 0x0

    .line 2231
    const/4 v15, 0x1

    .line 2234
    :cond_11
    new-instance v44, Landroid/content/ComponentName;

    .line 2235
    const-class v43, Lcom/android/settings/Settings$DevelopmentSettingsActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    .line 2234
    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    if-eqz v15, :cond_2f

    const/16 v43, 0x1

    .line 2234
    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v27

    move/from16 v3, v43

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2239
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/settings/qstile/DevelopmentTiles;->setTilesEnabled(Landroid/content/Context;Z)V

    .line 2241
    const/16 v33, 0x1

    .line 2242
    .local v33, "showPrivate":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v43

    if-eqz v43, :cond_12

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v43

    if-nez v43, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v43

    if-nez v43, :cond_12

    .line 2244
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v43

    if-eqz v43, :cond_30

    .line 2247
    :cond_12
    :goto_16
    const/16 v33, 0x0

    .line 2249
    :cond_13
    new-instance v43, Landroid/content/ComponentName;

    const-class v44, Lcom/android/settings/Settings$PersonalPageSettingsActivity;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v33

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2252
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v43

    const-string/jumbo v44, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v43 .. v44}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_15

    .line 2253
    const/16 v34, 0x1

    .line 2255
    .local v34, "showTile":Z
    const-string/jumbo v43, "connectivity"

    .line 2254
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 2256
    .local v10, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/content/Context;Landroid/net/ConnectivityManager;)I

    move-result v37

    .line 2257
    .local v37, "tetherSummary":I
    const-string/jumbo v43, "Settings"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, " tetherSummary : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    const/16 v43, -0x1

    move/from16 v0, v37

    move/from16 v1, v43

    if-ne v0, v1, :cond_14

    .line 2259
    const/16 v34, 0x0

    .line 2260
    const-string/jumbo v43, "Settings"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "sprint chameleon tethering showTile : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_14
    new-instance v43, Landroid/content/ComponentName;

    .line 2264
    const-class v44, Lcom/android/settings/Settings$SprTetherSettingsActivity;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    .line 2263
    move-object/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v34

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2269
    .end local v10    # "cm":Landroid/net/ConnectivityManager;
    .end local v34    # "showTile":Z
    .end local v37    # "tetherSummary":I
    :cond_15
    if-eqz v13, :cond_31

    .line 2283
    :cond_16
    new-instance v44, Landroid/content/ComponentName;

    const-class v43, Lcom/android/settings/Settings$PenSettingsMenuActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    sget-object v43, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v43

    if-nez v43, :cond_34

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v43

    .line 2283
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v43

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2058
    return-void

    .end local v5    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v12    # "helpMenuData":Lcom/android/settings/Utils$OnlineHelpMenuState;
    .end local v14    # "isKnoxCustomBT":Z
    .end local v15    # "isKnoxCustomDev":Z
    .end local v16    # "isKnoxCustomUsers":Z
    .end local v18    # "mBluetoothRegexs":[Ljava/lang/String;
    .end local v19    # "mCm":Landroid/net/ConnectivityManager;
    .end local v20    # "mUsbRegexs":[Ljava/lang/String;
    .end local v21    # "mWifiRegexs":[Ljava/lang/String;
    .end local v24    # "salesCode":Ljava/lang/String;
    .end local v26    # "showBioFace":Z
    .end local v27    # "showDev":Z
    .end local v28    # "showEasyMode":Z
    .end local v29    # "showFingerprint":Z
    .end local v30    # "showIris":Z
    .end local v32    # "showNfc":Z
    .end local v33    # "showPrivate":Z
    .end local v35    # "showUser":Z
    .end local v41    # "usbAvailable":Z
    .end local v42    # "wifiAvailable":Z
    :cond_17
    move/from16 v43, v13

    .line 2076
    goto/16 :goto_0

    .restart local v14    # "isKnoxCustomBT":Z
    :cond_18
    move/from16 v43, v13

    .line 2091
    goto/16 :goto_1

    .line 2106
    :cond_19
    const/16 v35, 0x1

    .restart local v35    # "showUser":Z
    goto/16 :goto_2

    .line 2105
    .end local v35    # "showUser":Z
    :cond_1a
    const/16 v35, 0x0

    .restart local v35    # "showUser":Z
    goto/16 :goto_2

    .restart local v16    # "isKnoxCustomUsers":Z
    :cond_1b
    move/from16 v43, v13

    .line 2117
    goto/16 :goto_3

    .line 2121
    .restart local v32    # "showNfc":Z
    :cond_1c
    const/16 v32, 0x0

    goto/16 :goto_4

    .line 2125
    :cond_1d
    const/16 v43, 0x1

    goto/16 :goto_5

    .line 2129
    :cond_1e
    const/16 v43, 0x0

    goto/16 :goto_6

    .line 2136
    .restart local v5    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_1f
    const/16 v43, 0x0

    goto/16 :goto_7

    .line 2134
    :cond_20
    const/16 v43, 0x0

    goto/16 :goto_7

    .line 2144
    .restart local v12    # "helpMenuData":Lcom/android/settings/Utils$OnlineHelpMenuState;
    :cond_21
    const/16 v43, 0x1

    goto/16 :goto_8

    .line 2152
    .restart local v18    # "mBluetoothRegexs":[Ljava/lang/String;
    .restart local v19    # "mCm":Landroid/net/ConnectivityManager;
    .restart local v20    # "mUsbRegexs":[Ljava/lang/String;
    .restart local v21    # "mWifiRegexs":[Ljava/lang/String;
    :cond_22
    const/16 v41, 0x0

    .restart local v41    # "usbAvailable":Z
    goto/16 :goto_9

    .line 2153
    :cond_23
    const/16 v42, 0x0

    .restart local v42    # "wifiAvailable":Z
    goto/16 :goto_a

    .line 2154
    :cond_24
    const/4 v6, 0x0

    .restart local v6    # "bluetoothAvailable":Z
    goto/16 :goto_b

    .line 2157
    :cond_25
    const/4 v6, 0x1

    goto/16 :goto_c

    .line 2162
    .end local v6    # "bluetoothAvailable":Z
    .restart local v24    # "salesCode":Ljava/lang/String;
    :cond_26
    const/16 v43, 0x1

    goto/16 :goto_d

    .line 2195
    .restart local v26    # "showBioFace":Z
    .restart local v28    # "showEasyMode":Z
    .restart local v29    # "showFingerprint":Z
    .restart local v30    # "showIris":Z
    :cond_27
    const/16 v43, 0x1

    goto/16 :goto_e

    .line 2198
    :cond_28
    const/16 v43, 0x1

    goto/16 :goto_f

    .line 2211
    .restart local v31    # "showLocation":Z
    :cond_29
    const/16 v43, 0x1

    goto/16 :goto_10

    .line 2214
    :cond_2a
    const/16 v43, 0x1

    goto/16 :goto_11

    .line 2217
    :cond_2b
    const/16 v43, 0x1

    goto/16 :goto_12

    .line 2220
    :cond_2c
    const/16 v43, 0x1

    goto/16 :goto_13

    .line 2226
    .end local v31    # "showLocation":Z
    :cond_2d
    const/16 v27, 0x1

    .restart local v27    # "showDev":Z
    goto/16 :goto_14

    .line 2224
    .end local v27    # "showDev":Z
    :cond_2e
    const/16 v27, 0x0

    .restart local v27    # "showDev":Z
    goto/16 :goto_14

    .restart local v15    # "isKnoxCustomDev":Z
    :cond_2f
    move/from16 v43, v13

    .line 2236
    goto/16 :goto_15

    .line 2245
    .restart local v33    # "showPrivate":Z
    :cond_30
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v43

    .line 2243
    if-nez v43, :cond_12

    .line 2245
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v43

    .line 2243
    if-nez v43, :cond_12

    .line 2246
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v43

    .line 2242
    if-eqz v43, :cond_13

    goto/16 :goto_16

    .line 2271
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v7

    .line 2272
    .local v7, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "category$iterator":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 2273
    .local v8, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v0, v8, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "tile$iterator":Ljava/util/Iterator;
    :cond_33
    :goto_18
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_32

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/settingslib/drawer/Tile;

    .line 2274
    .local v38, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 2275
    .local v11, "component":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_33

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v44

    .line 2275
    invoke-static/range {v43 .. v44}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_33

    .line 2277
    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v23

    invoke-direct {v0, v11, v1, v13, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    goto :goto_18

    .line 2284
    .end local v7    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v8    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v9    # "category$iterator":Ljava/util/Iterator;
    .end local v11    # "component":Landroid/content/ComponentName;
    .end local v38    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v39    # "tile$iterator":Ljava/util/Iterator;
    :cond_34
    const/16 v43, 0x1

    goto/16 :goto_17
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 2298
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 2299
    const/16 v4, 0x80

    .line 2298
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2300
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 2301
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 2303
    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2304
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID_VZW"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    .line 2305
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2306
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    .line 2311
    :cond_2
    :goto_0
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2312
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.tileid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    .line 2296
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_3
    :goto_1
    return-void

    .line 2309
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_4
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2314
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 2316
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getMetricsTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    :cond_0
    const-string/jumbo v1, "com.android.settings."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1014
    const-string/jumbo v1, "com.android.settings."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    :cond_1
    return-object v0
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 4

    .prologue
    .line 2721
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledFingerPrints()Z

    move-result v0

    .line 2722
    .local v0, "hasFingerprints":Z
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v1

    .line 2725
    .local v1, "hasIrises":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2726
    const v2, 0x7f0b091e

    .line 2733
    .local v2, "resourceId":I
    :goto_0
    return v2

    .line 2727
    .end local v2    # "resourceId":I
    :cond_0
    if-eqz v0, :cond_1

    .line 2728
    const v2, 0x7f0b091c

    .restart local v2    # "resourceId":I
    goto :goto_0

    .line 2730
    .end local v2    # "resourceId":I
    :cond_1
    const v2, 0x7f0b091d

    .restart local v2    # "resourceId":I
    goto :goto_0
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 3

    .prologue
    .line 2738
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 2737
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    .line 2739
    .local v0, "isProfile":Z
    if-eqz v0, :cond_0

    const v1, 0x7f0b111e

    :goto_0
    return v1

    .line 2740
    :cond_0
    const v1, 0x7f0b111d

    goto :goto_0
.end method

.method private getSavedSplitbarLeftWeight(F)F
    .locals 4
    .param p1, "leftDefaultWeightValue"    # F

    .prologue
    .line 3110
    const-string/jumbo v2, "com.android.settings_preferences"

    const/4 v3, 0x4

    .line 3109
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3111
    .local v0, "sharedPreference":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "split_bar_left_wegigh"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 3114
    .local v1, "splitBarMovedLeftWeight":F
    return v1
.end method

.method public static getSettingsActivityContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2746
    sget-object v0, Lcom/android/settings/SettingsActivity;->mFpContext:Landroid/content/Context;

    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1848
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    return-object v1

    .line 1850
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1851
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 1853
    :cond_1
    const-string/jumbo v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1854
    const-string/jumbo v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1853
    if-nez v1, :cond_2

    .line 1855
    const-string/jumbo v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1853
    if-eqz v1, :cond_3

    .line 1857
    :cond_2
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1860
    :cond_3
    return-object v0
.end method

.method private initializeLayoutBySplitBar()V
    .locals 7

    .prologue
    .line 2816
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2817
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2819
    .local v1, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 2821
    .local v3, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2822
    .local v0, "leftPanelWeight":F
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2823
    .local v2, "rightPanelWeight":F
    add-float v4, v0, v2

    .line 2825
    .local v4, "weightSum":F
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->getSavedSplitbarLeftWeight(F)F

    move-result v5

    sput v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    .line 2828
    sget v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 2829
    sget v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2830
    sget v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    sub-float v5, v4, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2831
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2832
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2836
    .end local v0    # "leftPanelWeight":F
    .end local v1    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "rightPanelWeight":F
    .end local v3    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "weightSum":F
    :cond_0
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    if-nez v5, :cond_1

    .line 2837
    new-instance v5, Lcom/android/settings/SettingsActivity$13;

    invoke-direct {v5, p0}, Lcom/android/settings/SettingsActivity$13;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 2863
    :cond_1
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 2864
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    new-instance v6, Lcom/android/settings/SettingsActivity$14;

    invoke-direct {v6, p0}, Lcom/android/settings/SettingsActivity$14;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3083
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    new-instance v6, Lcom/android/settings/SettingsActivity$15;

    invoke-direct {v6, p0}, Lcom/android/settings/SettingsActivity$15;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 3101
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2815
    :cond_2
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1025
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1027
    return v3

    .line 1029
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1030
    sget-object v2, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 1029
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1032
    :cond_2
    return v3
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1020
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 1021
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUCMKeyguardEnabled()Z
    .locals 6

    .prologue
    .line 3120
    const/4 v1, 0x0

    .line 3121
    .local v1, "isEnabled":Z
    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v3

    .line 3122
    .local v3, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-nez v3, :cond_0

    .line 3123
    const-string/jumbo v4, "Settings"

    const-string/jumbo v5, "Failed to get UCM Service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    return v1

    .line 3127
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v2

    .line 3128
    .local v2, "keyguardCSName":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "none"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3129
    :cond_1
    return v1

    .line 3131
    :cond_2
    const-string/jumbo v4, "Settings"

    const-string/jumbo v5, "UCM Keyguard is enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3132
    const/4 v1, 0x1

    .line 3136
    .end local v2    # "keyguardCSName":Ljava/lang/String;
    :goto_0
    return v1

    .line 3133
    :catch_0
    move-exception v0

    .line 3134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private revertToInitialFragment()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2483
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 2484
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    .line 2485
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 2489
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v1, :cond_1

    .line 2491
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2516
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 2517
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 2519
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->mainViewVisible(Z)V

    .line 2482
    return-void

    .line 2503
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, ":settings:prefs"

    .line 2504
    const/4 v3, 0x1

    .line 2503
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2505
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 2492
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public static setSettingsActivityContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 617
    sput-object p0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 616
    return-void
.end method

.method private setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .param p3, "isAdmin"    # Z
    .param p4, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 2289
    if-eqz p3, :cond_1

    .line 2293
    .end local p2    # "enabled":Z
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;Z)V

    .line 2288
    return-void

    .line 2289
    .restart local p2    # "enabled":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2290
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2291
    const/4 p2, 0x0

    .local p2, "enabled":Z
    goto :goto_0
.end method

.method private setTitleFromBackStack()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1650
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1652
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 1653
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 1654
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 1658
    :goto_0
    return v3

    .line 1656
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1662
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_2

    .line 1663
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1664
    if-ne v1, v4, :cond_3

    .line 1665
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1666
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1673
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    if-eqz v2, :cond_2

    .line 1674
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1675
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1676
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    .line 1681
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 1682
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    .line 1684
    return v1

    .line 1668
    .end local v0    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1669
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 1689
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 1690
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 1691
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1695
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 1696
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1687
    :cond_0
    return-void

    .line 1693
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1590
    const-string/jumbo v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1591
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 1592
    iput-object v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1593
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1596
    const-string/jumbo v5, ":settings:show_fragment_title_res_package_name"

    .line 1595
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1597
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1600
    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    .line 1599
    invoke-virtual {p0, v4, v6, v5}, Lcom/android/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 1601
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1602
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1603
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    return-void

    .line 1605
    .end local v0    # "authContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1606
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1609
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_0
    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 1612
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1613
    const-string/jumbo v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1615
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1614
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method private showAndHandleBiometricDialog()V
    .locals 5

    .prologue
    .line 2711
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v2

    .line 2712
    .local v2, "title":I
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 2714
    .local v1, "message":I
    const-string/jumbo v3, "unlock_set_none"

    const/4 v4, 0x1

    .line 2713
    invoke-static {v2, v1, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;Z)Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 2715
    .local v0, "dialog":Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 2716
    const-string/jumbo v4, "frp_warning_dialog"

    .line 2715
    invoke-virtual {v0, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2710
    return-void
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 2008
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2012
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 2013
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2016
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_6

    .line 2017
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2028
    :goto_0
    if-eqz p7, :cond_1

    .line 2029
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 2031
    :cond_1
    if-eqz p4, :cond_2

    .line 2032
    const-string/jumbo v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2034
    :cond_2
    if-lez p5, :cond_9

    .line 2035
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 2039
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2040
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_4

    .line 2041
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2043
    :cond_4
    return-object v0

    .line 2009
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2019
    .restart local v0    # "f":Landroid/app/Fragment;
    .restart local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_6
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2020
    const v2, 0x7f11064e

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 2021
    :cond_7
    const-class v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2022
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 2024
    :cond_8
    const v2, 0x7f110652

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 2036
    :cond_9
    if-eqz p6, :cond_3

    .line 2037
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2457
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v0, :cond_0

    .line 2458
    return-void

    .line 2460
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 2461
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v0, :cond_1

    .line 2462
    check-cast v8, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    .line 2473
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 2474
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 2475
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->mainViewVisible(Z)V

    .line 2456
    return-void

    .line 2469
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2470
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    move v7, v4

    :goto_1
    const v5, 0x7f0b187d

    move-object v0, p0

    move-object v6, v2

    .line 2468
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    goto :goto_0

    :cond_2
    move v7, v3

    .line 2470
    goto :goto_1
.end method

.method private updateTilesList()V
    .locals 1

    .prologue
    .line 2050
    new-instance v0, Lcom/android/settings/SettingsActivity$12;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$12;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 2046
    return-void
.end method


# virtual methods
.method public fingerprintEditBtnClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const v1, 0x7f0b0680

    if-ne v1, v0, :cond_0

    .line 2760
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    invoke-interface {v0}, Lcom/android/settings/SettingsActivity$onEditButtonClicked;->editKeyPressed()V

    .line 2758
    :cond_0
    return-void
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1959
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_2

    .line 1961
    if-eqz p1, :cond_1

    .line 1962
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    .line 1966
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1967
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1957
    :cond_1
    :goto_0
    return-void

    .line 1972
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1973
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_0
.end method

.method protected getAssistantBundle(Z)Landroid/os/Bundle;
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 1054
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1055
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "ActivityName"

    const-string/jumbo v2, "com.android.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    if-eqz p1, :cond_1

    .line 1057
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1058
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1060
    :cond_0
    const-string/jumbo v1, "IconName"

    const-string/jumbo v2, "Search"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_1
    :goto_0
    const-string/jumbo v1, "register"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1066
    return-object v0

    .line 1059
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v1

    .line 1057
    if-nez v1, :cond_0

    .line 1059
    sget-object v1, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v1

    .line 1057
    if-nez v1, :cond_0

    .line 1062
    const-string/jumbo v1, "IconName"

    const-string/jumbo v2, "Search;Edit quick settings;"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    .line 1822
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1823
    .local v5, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v5}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 1826
    .local v4, "startingFragment":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1827
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1828
    .local v2, "modIntent":Landroid/content/Intent;
    const-string/jumbo v6, ":settings:show_fragment"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1829
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1830
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1831
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 1835
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v6, "intent"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1836
    const-string/jumbo v6, "needSearchMenuInSub"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1837
    .local v3, "needSearchMenuInSub":Z
    const-string/jumbo v6, ":settings:show_fragment_args"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1838
    return-object v2

    .line 1833
    .end local v3    # "needSearchMenuInSub":Z
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .line 1840
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    return-object v5
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    new-instance v0, Lcom/android/settings/SharedPreferencesLogger;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SharedPreferencesLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 1005
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNextButtonImage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2330
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public irisRemoveBtnClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const v1, 0x7f0b07a3

    if-ne v1, v0, :cond_0

    .line 2766
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    invoke-interface {v0}, Lcom/android/settings/SettingsActivity$onEditButtonClicked;->editKeyPressed()V

    .line 2764
    :cond_0
    return-void
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1807
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1808
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    .line 1807
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1810
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/android/settings/SettingsActivity;->SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1811
    sget-object v2, Lcom/android/settings/SettingsActivity;->SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    .line 1810
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1813
    :cond_3
    const-string/jumbo v2, "com.samsung.android.settings"

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1814
    .local v1, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 1815
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    .line 1814
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1817
    :cond_5
    const/4 v2, 0x0

    return v2
.end method

.method public mainViewVisible(Z)V
    .locals 8
    .param p1, "bVisible"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const v5, 0x7f110653

    const v4, 0x7f110649

    .line 2524
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2525
    .local v0, "fade_in":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2526
    if-eqz p1, :cond_2

    .line 2527
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2528
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2529
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2531
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2532
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2523
    :cond_1
    :goto_0
    return-void

    .line 2535
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2536
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2538
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2539
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 2479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 2478
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x68

    const/4 v9, 0x1

    const/4 v7, -0x1

    .line 2564
    if-ne p1, v6, :cond_4

    .line 2565
    if-ne p2, v9, :cond_2

    .line 2566
    const/4 v3, 0x0

    .line 2567
    .local v3, "mToken":[B
    if-eqz p3, :cond_0

    .line 2569
    const-string/jumbo v6, "hw_auth_token"

    .line 2568
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 2571
    .end local v3    # "mToken":[B
    :cond_0
    const/4 v4, 0x0

    .line 2572
    .local v4, "mToken2nd":[B
    if-eqz p3, :cond_1

    .line 2574
    const-string/jumbo v6, "hw_auth_token_2nd"

    .line 2573
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 2576
    .end local v4    # "mToken2nd":[B
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportIris()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2578
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 2577
    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v6

    .line 2576
    if-eqz v6, :cond_3

    .line 2579
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v6, v3, v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startUseFingerprintIrisSettings([B[B)V

    .line 2707
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2559
    return-void

    .line 2582
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 2581
    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2583
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startFingerprintLockSettings([B)V

    goto :goto_0

    .line 2586
    :cond_4
    const/16 v6, 0x67

    if-ne p1, v6, :cond_5

    .line 2587
    if-ne p2, v7, :cond_2

    .line 2588
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->switchToSwipe()V

    goto :goto_0

    .line 2595
    :cond_5
    const/16 v6, 0x65

    if-ne p1, v6, :cond_9

    .line 2596
    if-ne p2, v7, :cond_2

    .line 2598
    const/4 v5, 0x0

    .line 2599
    .local v5, "mUserPassword":Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 2600
    const-string/jumbo v6, "password"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2602
    .end local v5    # "mUserPassword":Ljava/lang/String;
    :cond_6
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 2603
    const-class v8, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    .line 2602
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 2604
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 2605
    const-string/jumbo v6, "password"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2608
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 2607
    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2609
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportIris()Z

    move-result v6

    .line 2607
    if-eqz v6, :cond_8

    .line 2612
    :cond_7
    const/16 v6, 0x68

    .line 2610
    invoke-virtual {p0, v2, v6}, Lcom/android/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2616
    :catch_0
    move-exception v0

    .line 2617
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2614
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_8
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2626
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_9
    const/16 v6, 0x66

    if-ne p1, v6, :cond_c

    .line 2627
    if-ne p2, v7, :cond_2

    .line 2628
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledFingerPrints()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2629
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v6

    .line 2628
    if-eqz v6, :cond_b

    .line 2631
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->showAndHandleBiometricDialog()V

    goto :goto_0

    .line 2635
    :cond_b
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->switchToSwipe()V

    goto/16 :goto_0

    .line 2646
    :cond_c
    const/16 v6, 0x69

    if-ne p1, v6, :cond_e

    .line 2647
    if-ne p2, v7, :cond_2

    .line 2648
    const/4 v3, 0x0

    .line 2649
    .restart local v3    # "mToken":[B
    if-eqz p3, :cond_d

    .line 2651
    const-string/jumbo v6, "hw_auth_token"

    .line 2650
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 2653
    .end local v3    # "mToken":[B
    :cond_d
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startFingerprintLockSettings([B)V

    goto/16 :goto_0

    .line 2662
    :cond_e
    const/16 v6, 0x6a

    if-ne p1, v6, :cond_f

    .line 2663
    if-ne p2, v7, :cond_2

    .line 2664
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->setFingerPrintLockOff()V

    goto/16 :goto_0

    .line 2673
    :cond_f
    const/16 v6, 0x6b

    if-ne p1, v6, :cond_11

    .line 2674
    if-ne p2, v7, :cond_2

    .line 2675
    const/4 v3, 0x0

    .line 2676
    .restart local v3    # "mToken":[B
    if-eqz p3, :cond_10

    .line 2678
    const-string/jumbo v6, "hw_auth_token"

    .line 2677
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 2680
    .end local v3    # "mToken":[B
    :cond_10
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startUseAdditionalBiometricsSettings([B)V

    goto/16 :goto_0

    .line 2689
    :cond_11
    const/16 v6, 0x6c

    if-ne p1, v6, :cond_12

    .line 2690
    if-ne p2, v7, :cond_2

    .line 2691
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->setIrisLockOff()V

    goto/16 :goto_0

    .line 2693
    :cond_12
    const/16 v6, 0x2a

    if-ne p1, v6, :cond_13

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    if-eqz v6, :cond_13

    .line 2694
    if-eqz p2, :cond_13

    .line 2695
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    .line 2696
    const/4 v8, 0x2

    .line 2695
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 2697
    :cond_13
    const/16 v6, 0x1f7

    if-eq p1, v6, :cond_14

    if-eqz p3, :cond_2

    const-string/jumbo v6, "chg"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2699
    :cond_14
    iget-boolean v6, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v6, :cond_15

    .line 2700
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 2703
    .local v1, "fragment":Landroid/app/Fragment;
    :goto_1
    if-eqz v1, :cond_2

    .line 2704
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 2702
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f110652

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .restart local v1    # "fragment":Landroid/app/Fragment;
    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 1622
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v1, :cond_2

    .line 1623
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 1624
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1625
    return-void

    .line 1628
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    if-eqz v1, :cond_1

    .line 1629
    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBackPressed consume backKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    invoke-interface {v1}, Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;->onBackKey()V

    .line 1631
    return-void

    .line 1633
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 1634
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1635
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1636
    return-void

    .line 1640
    .end local v0    # "count":I
    :cond_2
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onBackPressed()V

    .line 1621
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 1645
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 2374
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 24
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 741
    invoke-super/range {p0 .. p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 744
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 745
    sget-object v20, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 746
    const v20, 0x7f11065c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 747
    .local v5, "centerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 750
    .local v6, "clp":Landroid/widget/LinearLayout$LayoutParams;
    const v20, 0x7f11065b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 751
    .local v9, "leftView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 753
    .local v10, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const v20, 0x7f11065d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 754
    .local v4, "RightView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 757
    .local v13, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f0f0216

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f0f02ec

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 761
    :cond_0
    const/16 v20, -0x2

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 780
    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    invoke-virtual {v4, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    .end local v4    # "RightView":Landroid/view/View;
    .end local v5    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v6    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "leftView":Landroid/view/View;
    .end local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 788
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 790
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 791
    .local v11, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 792
    iget v14, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 794
    .local v14, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 795
    .restart local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 796
    .restart local v13    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v20, v0

    iget v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v21, v0

    add-float v19, v20, v21

    .line 799
    .local v19, "weightSum":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    sget-boolean v20, Lcom/android/settings/SettingsActivity;->mUserUpdateSplit:Z

    if-eqz v20, :cond_6

    .line 812
    :cond_2
    int-to-float v0, v14

    move/from16 v20, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    div-float v18, v20, v19

    .line 813
    .local v18, "tempLeftPaneWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 814
    const v21, 0x7f0a0597

    .line 813
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 815
    .local v8, "leftPaneMinSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 816
    const v21, 0x7f0a0613

    .line 815
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    .line 818
    .local v16, "snapCenterPosition":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f100364

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    .line 817
    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    .line 819
    .local v17, "splitXinFullview":F
    cmpl-float v20, v18, v16

    if-lez v20, :cond_8

    .line 820
    int-to-float v0, v8

    move/from16 v20, v0

    cmpg-float v20, v18, v20

    if-gtz v20, :cond_8

    .line 821
    int-to-double v0, v8

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v22

    int-to-double v0, v14

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v12, v0

    .line 822
    .local v12, "newLeftPanelWeight":F
    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 823
    sub-int v20, v14, v8

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    const-string/jumbo v20, "com.android.settings_preferences"

    const/16 v21, 0x4

    .line 827
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 829
    .local v15, "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 830
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v20, "split_bar_left_wegigh"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 831
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 740
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "leftPaneMinSize":I
    .end local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "metrics":Landroid/util/DisplayMetrics;
    .end local v12    # "newLeftPanelWeight":F
    .end local v13    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "screenWidth":I
    .end local v15    # "sharedPreference":Landroid/content/SharedPreferences;
    .end local v16    # "snapCenterPosition":F
    .end local v17    # "splitXinFullview":F
    .end local v18    # "tempLeftPaneWidth":F
    .end local v19    # "weightSum":F
    :cond_3
    :goto_1
    return-void

    .line 759
    .restart local v4    # "RightView":Landroid/view/View;
    .restart local v5    # "centerLayout":Landroid/widget/LinearLayout;
    .restart local v6    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "leftView":Landroid/view/View;
    .restart local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f0f02f4

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f0f0309

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 763
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 764
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 765
    const/high16 v20, 0x40f00000    # 7.5f

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 766
    const/high16 v20, 0x3fa00000    # 1.25f

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 767
    const/high16 v20, 0x3fa00000    # 1.25f

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 768
    const v20, 0x7f11065b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 769
    const v20, 0x7f11065d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 771
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 772
    const/high16 v20, 0x41200000    # 10.0f

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 773
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 774
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 775
    const v20, 0x7f11065b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 776
    const v20, 0x7f11065d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 800
    .end local v4    # "RightView":Landroid/view/View;
    .end local v5    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v6    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "leftView":Landroid/view/View;
    .restart local v11    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v14    # "screenWidth":I
    .restart local v19    # "weightSum":F
    :cond_6
    const/high16 v20, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->getSavedSplitbarLeftWeight(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 801
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_7

    .line 802
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 807
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    return-void

    .line 804
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f100012

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f100013

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    .line 832
    .restart local v8    # "leftPaneMinSize":I
    .restart local v16    # "snapCenterPosition":F
    .restart local v17    # "splitXinFullview":F
    .restart local v18    # "tempLeftPaneWidth":F
    :cond_8
    cmpg-float v20, v18, v16

    if-gtz v20, :cond_3

    .line 833
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v22

    int-to-double v0, v14

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v12, v0

    .line 834
    .restart local v12    # "newLeftPanelWeight":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 835
    int-to-float v0, v14

    move/from16 v20, v0

    sub-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    const-string/jumbo v20, "com.android.settings_preferences"

    const/16 v21, 0x4

    .line 839
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 841
    .restart local v15    # "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 842
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v20, "split_bar_left_wegigh"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 843
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 47
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1101
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v39

    .line 1102
    .local v39, "proKioskManager":Lcom/samsung/android/knox/custom/ProKioskManager;
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v36

    .line 1103
    .local v36, "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    if-eqz v39, :cond_0

    if-eqz v36, :cond_0

    .line 1104
    invoke-virtual/range {v39 .. v39}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    .line 1105
    invoke-virtual/range {v36 .. v36}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    .line 1106
    invoke-virtual/range {v39 .. v39}, Lcom/samsung/android/knox/custom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    .line 1111
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    .line 1113
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_14

    .line 1114
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 1121
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    .line 1125
    .local v42, "startTime":J
    sput-object p0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 1126
    const-string/jumbo v2, "accessibility"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1130
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    .line 1133
    .local v32, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "settings:ui_options"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string/jumbo v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 1136
    :cond_2
    const-string/jumbo v2, ":settings:hide_drawer"

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1137
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setIsDrawerPresent(Z)V

    .line 1140
    :cond_3
    const-string/jumbo v2, "development"

    .line 1141
    const/4 v5, 0x0

    .line 1140
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1144
    const-string/jumbo v2, ":settings:show_fragment"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1146
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/android/settings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static/range {v32 .. v32}, Lcom/android/settings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1147
    const-string/jumbo v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1146
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    .line 1149
    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    .line 1150
    .local v25, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    .line 1153
    .local v23, "className":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_4

    .line 1155
    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1157
    const-class v2, Lcom/android/settings/Settings$WirelessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1155
    if-nez v2, :cond_16

    .line 1158
    const-class v2, Lcom/android/settings/Settings$DeviceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1155
    if-nez v2, :cond_16

    .line 1159
    const-class v2, Lcom/android/settings/Settings$PersonalSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1155
    if-nez v2, :cond_16

    .line 1160
    const-class v2, Lcom/android/settings/Settings$SystemSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1155
    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 1167
    :cond_4
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings/SubSettings;

    if-nez v2, :cond_17

    .line 1168
    const-string/jumbo v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v33

    .line 1171
    .local v33, "isSubSettings":Z
    :goto_3
    if-eqz v33, :cond_5

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v44

    .line 1174
    .local v44, "themeResId":I
    const v2, 0x7f0f02ec

    move/from16 v0, v44

    if-eq v0, v2, :cond_5

    .line 1175
    const v2, 0x7f0f02f4

    move/from16 v0, v44

    if-eq v0, v2, :cond_5

    .line 1176
    const v2, 0x7f0f0309

    move/from16 v0, v44

    if-eq v0, v2, :cond_5

    .line 1177
    const v2, 0x7f0f02e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 1181
    .end local v44    # "themeResId":I
    :cond_5
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_18

    const v2, 0x7f04028c

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/Window;->setContentView(I)V

    .line 1192
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 1196
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_1d

    .line 1197
    const v2, 0x7f11064a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    .line 1198
    const v2, 0x7f11064f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    .line 1200
    const v2, 0x7f11064d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    .line 1201
    const v2, 0x7f110651

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mRightPaneToolbar:Landroid/widget/Toolbar;

    .line 1203
    const v2, 0x7f110653

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    const v5, 0x7f0b107f

    invoke-virtual {v2, v5}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 1207
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    const v5, 0x7f14000b

    invoke-virtual {v2, v5}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v5, 0x7f1108be

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v41

    .line 1210
    .local v41, "search":Landroid/view/MenuItem;
    new-instance v2, Lcom/android/settings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$5;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v41

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1219
    .end local v41    # "search":Landroid/view/MenuItem;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mRightPaneToolbar:Landroid/widget/Toolbar;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 1220
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mRightPaneToolbar:Landroid/widget/Toolbar;

    new-instance v5, Lcom/android/settings/SettingsActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$6;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1227
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->initializeLayoutBySplitBar()V

    .line 1237
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_9

    .line 1238
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_9

    .line 1239
    const v2, 0x7f11065c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 1240
    .local v22, "centerLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout$LayoutParams;

    .line 1243
    .local v24, "clp":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f11065b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .line 1244
    .local v37, "leftView":Landroid/view/View;
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v38

    check-cast v38, Landroid/widget/LinearLayout$LayoutParams;

    .line 1246
    .local v38, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f11065d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1247
    .local v16, "RightView":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v40

    check-cast v40, Landroid/widget/LinearLayout$LayoutParams;

    .line 1250
    .local v40, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v2

    const v5, 0x7f0f0216

    if-eq v5, v2, :cond_8

    .line 1251
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v2

    const v5, 0x7f0f02ec

    if-ne v5, v2, :cond_1e

    .line 1254
    :cond_8
    const/4 v2, -0x2

    move-object/from16 v0, v24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1273
    :goto_7
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    invoke-virtual/range {v37 .. v38}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1275
    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1279
    .end local v16    # "RightView":Landroid/view/View;
    .end local v22    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v24    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v37    # "leftView":Landroid/view/View;
    .end local v38    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v40    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    const-string/jumbo v2, "relative_link"

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1284
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_a

    .line 1286
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 1296
    :cond_a
    :goto_8
    if-eqz p1, :cond_21

    .line 1299
    const-string/jumbo v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1300
    const-string/jumbo v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1302
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1305
    const-string/jumbo v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1306
    .local v20, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    if-eqz v20, :cond_b

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1309
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 1312
    :cond_b
    const-string/jumbo v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1313
    const-string/jumbo v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1314
    const-string/jumbo v2, ":settings:need_to_revert_to_initial_fragment"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1415
    .end local v20    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1418
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_c

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1423
    :cond_c
    const v2, 0x7f110625

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 1424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_d

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setMetricsTag(Ljava/lang/String;)V

    .line 1429
    :cond_d
    const-string/jumbo v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1431
    const-string/jumbo v2, "wifi_enable_next_on_connect"

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1433
    const v2, 0x7f110654

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1435
    .local v18, "buttonBar":Landroid/view/View;
    if-eqz v18, :cond_12

    .line 1437
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1439
    const v2, 0x7f110655

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    .line 1440
    const v2, 0x7f110657

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonText:Landroid/widget/TextView;

    .line 1441
    const v2, 0x7f110656

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArrow:Landroid/widget/ImageView;

    .line 1443
    const v2, 0x7f110658

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    .line 1444
    const v2, 0x7f110659

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    .line 1445
    const v2, 0x7f11065a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    .line 1447
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "show_button_background"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0205dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0205dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1452
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_f

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/settings/SettingsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$7;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1462
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_10

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/settings/SettingsActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$8;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1472
    :cond_10
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1473
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1474
    .local v19, "buttonText":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1482
    .end local v19    # "buttonText":Ljava/lang/String;
    :cond_11
    :goto_a
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1483
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1484
    .restart local v19    # "buttonText":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonText:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArrow:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1537
    .end local v18    # "buttonBar":Landroid/view/View;
    .end local v19    # "buttonText":Ljava/lang/String;
    :cond_12
    :goto_b
    new-instance v2, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    .line 1540
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1099
    :cond_13
    return-void

    .line 1116
    .end local v3    # "initialFragmentName":Ljava/lang/String;
    .end local v23    # "className":Ljava/lang/String;
    .end local v25    # "cn":Landroid/content/ComponentName;
    .end local v32    # "intent":Landroid/content/Intent;
    .end local v33    # "isSubSettings":Z
    .end local v42    # "startTime":J
    :cond_14
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 1117
    const v2, 0x7f0f02f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    goto/16 :goto_0

    .line 1146
    .restart local v3    # "initialFragmentName":Ljava/lang/String;
    .restart local v32    # "intent":Landroid/content/Intent;
    .restart local v42    # "startTime":J
    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1155
    .restart local v23    # "className":Ljava/lang/String;
    .restart local v25    # "cn":Landroid/content/ComponentName;
    :cond_16
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 1167
    :cond_17
    const/16 v33, 0x1

    goto/16 :goto_3

    .line 1183
    .restart local v33    # "isSubSettings":Z
    :cond_18
    const v2, 0x7f04028e

    goto/16 :goto_4

    .line 1184
    :cond_19
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1185
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_1a

    const v2, 0x7f04028d

    :goto_c
    invoke-virtual {v5, v2}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_5

    .line 1186
    :cond_1a
    const v2, 0x7f04028f

    goto :goto_c

    .line 1188
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_1c

    const v2, 0x7f04028c

    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    goto/16 :goto_5

    .line 1189
    :cond_1c
    const v2, 0x7f04028e

    goto :goto_d

    .line 1230
    :cond_1d
    const v2, 0x7f110653

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    goto/16 :goto_6

    .line 1252
    .restart local v16    # "RightView":Landroid/view/View;
    .restart local v22    # "centerLayout":Landroid/widget/LinearLayout;
    .restart local v24    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v37    # "leftView":Landroid/view/View;
    .restart local v38    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v40    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v2

    const v5, 0x7f0f02f4

    if-eq v5, v2, :cond_8

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v2

    const v5, 0x7f0f0309

    if-eq v5, v2, :cond_8

    .line 1256
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1f

    .line 1257
    const/4 v2, 0x1

    move-object/from16 v0, v24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1258
    const/high16 v2, 0x40f00000    # 7.5f

    move-object/from16 v0, v24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1259
    const/high16 v2, 0x3fa00000    # 1.25f

    move-object/from16 v0, v38

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1260
    const/high16 v2, 0x3fa00000    # 1.25f

    move-object/from16 v0, v40

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1261
    const v2, 0x7f11065b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    const v2, 0x7f11065d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1264
    :cond_1f
    const/4 v2, 0x1

    move-object/from16 v0, v24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1265
    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, v24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1266
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1267
    const/4 v2, 0x0

    move-object/from16 v0, v40

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1268
    const v2, 0x7f11065b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1269
    const v2, 0x7f11065d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1292
    .end local v16    # "RightView":Landroid/view/View;
    .end local v22    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v24    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v37    # "leftView":Landroid/view/View;
    .end local v38    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v40    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_20
    const-string/jumbo v2, "Settings"

    const-string/jumbo v5, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1316
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_25

    .line 1317
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1319
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_23

    .line 1320
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1326
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1328
    const-string/jumbo v2, ":settings:show_fragment_args"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1329
    .local v4, "initialArguments":Landroid/os/Bundle;
    if-eqz v4, :cond_22

    .line 1330
    const-string/jumbo v2, "needSearchMenuInSub"

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1333
    :cond_22
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1332
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1333
    const/4 v9, 0x0

    move-object/from16 v2, p0

    .line 1332
    invoke-direct/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_9

    .line 1321
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_23
    if-eqz v33, :cond_24

    .line 1322
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_e

    .line 1324
    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_e

    .line 1336
    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1338
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1344
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_26

    .line 1345
    const v2, 0x7f0b107f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1346
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1347
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1346
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1347
    const/4 v12, 0x0

    move-object/from16 v5, p0

    .line 1346
    invoke-direct/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_9

    .line 1349
    :cond_26
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1350
    .local v7, "arguments":Landroid/os/Bundle;
    const/16 v29, 0x0

    .line 1351
    .local v29, "initialFragment":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1352
    .local v4, "initialArguments":Landroid/os/Bundle;
    const/16 v46, 0x0

    .line 1354
    .local v46, "topLevelTileId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v21

    .line 1356
    .local v21, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1357
    const/16 v27, 0x0

    .line 1359
    .local v27, "first":Lcom/android/settingslib/drawer/Tile;
    const/16 v28, 0x0

    .end local v27    # "first":Lcom/android/settingslib/drawer/Tile;
    .local v28, "i":I
    :goto_f
    if-nez v27, :cond_29

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_29

    .line 1360
    const/16 v34, 0x0

    .local v34, "j":I
    :goto_10
    if-nez v27, :cond_28

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v2

    move/from16 v0, v34

    if-ge v0, v2, :cond_28

    .line 1361
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v45

    .line 1362
    .local v45, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 1363
    move-object/from16 v27, v45

    .line 1360
    :cond_27
    add-int/lit8 v34, v34, 0x1

    goto :goto_10

    .line 1359
    .end local v45    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_28
    add-int/lit8 v28, v28, 0x1

    goto :goto_f

    .line 1367
    .end local v34    # "j":I
    :cond_29
    if-eqz v27, :cond_2b

    .line 1368
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 1369
    .local v29, "initialFragment":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1370
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1371
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1372
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1373
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings.TOP_LEVEL_TILE_ID_VZW"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1374
    .local v46, "topLevelTileId":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1375
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1380
    :cond_2a
    :goto_11
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1381
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings.tileid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1404
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    .end local v28    # "i":I
    .end local v29    # "initialFragment":Ljava/lang/String;
    .end local v46    # "topLevelTileId":Ljava/lang/String;
    :cond_2b
    :goto_12
    const-string/jumbo v2, "topLevelTileId"

    move-object/from16 v0, v46

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1406
    const v10, 0x7f0b187c

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    .line 1405
    invoke-direct/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    .line 1409
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1408
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1409
    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, v29

    move-object v10, v4

    .line 1408
    invoke-direct/range {v8 .. v15}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_9

    .line 1378
    .restart local v4    # "initialArguments":Landroid/os/Bundle;
    .restart local v28    # "i":I
    .restart local v29    # "initialFragment":Ljava/lang/String;
    .local v46, "topLevelTileId":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .local v46, "topLevelTileId":Ljava/lang/String;
    goto :goto_11

    .line 1384
    .end local v28    # "i":I
    .local v29, "initialFragment":Ljava/lang/String;
    .local v46, "topLevelTileId":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1385
    move-object/from16 v29, v3

    .line 1386
    .local v29, "initialFragment":Ljava/lang/String;
    const-string/jumbo v2, ":settings:show_fragment_args"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1387
    .local v4, "initialArguments":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-gez v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_2e

    .line 1389
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ActivityInfo;->labelRes:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    :cond_2e
    :goto_13
    if-eqz v4, :cond_2f

    .line 1395
    const-string/jumbo v2, ":settings:fragment_args_key"

    .line 1394
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1397
    const-string/jumbo v2, ":settings:fragment_args_key"

    .line 1396
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1398
    .local v35, "key":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Lcom/android/settings/search/SecIndex;->getTopLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .local v46, "topLevelTileId":Ljava/lang/String;
    goto/16 :goto_12

    .line 1390
    .end local v35    # "key":Ljava/lang/String;
    .local v46, "topLevelTileId":Ljava/lang/String;
    :catch_0
    move-exception v26

    .line 1391
    .local v26, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_13

    .line 1400
    .end local v26    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    move-object/from16 v46, v0

    .local v46, "topLevelTileId":Ljava/lang/String;
    goto/16 :goto_12

    .line 1479
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    .end local v7    # "arguments":Landroid/os/Bundle;
    .end local v21    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v29    # "initialFragment":Ljava/lang/String;
    .end local v46    # "topLevelTileId":Ljava/lang/String;
    .restart local v18    # "buttonBar":Landroid/view/View;
    .restart local v19    # "buttonText":Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1489
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonText:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 1496
    .end local v18    # "buttonBar":Landroid/view/View;
    .end local v19    # "buttonText":Ljava/lang/String;
    :cond_32
    const v2, 0x7f11018e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1497
    .restart local v18    # "buttonBar":Landroid/view/View;
    if-eqz v18, :cond_12

    .line 1498
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1500
    const v2, 0x7f110574

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 1501
    .local v17, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/SettingsActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$9;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1507
    const v2, 0x7f1101ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 1508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/SettingsActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$10;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1516
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1517
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1518
    .restart local v19    # "buttonText":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1525
    .end local v19    # "buttonText":Ljava/lang/String;
    :cond_33
    :goto_14
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1526
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1527
    .restart local v19    # "buttonText":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1528
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_b

    .line 1522
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 1531
    :cond_35
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 865
    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    .line 870
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 872
    :cond_0
    return v2

    .line 876
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    if-eqz v1, :cond_2

    .line 877
    return v2

    .line 881
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 882
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f140009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 884
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->updateOptionMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1797
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onDestroy()V

    .line 1799
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1800
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1799
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1796
    return-void
.end method

.method public onIsHidingHeaders()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2800
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 2802
    .local v0, "isSettingWizard":Z
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_2

    .line 2803
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 2800
    .end local v0    # "isSettingWizard":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isSettingWizard":Z
    goto :goto_0

    .line 2802
    :cond_2
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2806
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":android:no_headers"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2790
    const-string/jumbo v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyDown called with keycode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 2792
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->openSearchView()V

    .line 2793
    const/4 v0, 0x1

    return v0

    .line 2795
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2387
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2388
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 2389
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 2392
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2380
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 2382
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/high16 v6, 0x1c800000

    const/4 v5, 0x1

    .line 974
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0f90

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 975
    .local v2, "simplified_list":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0f91

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, "extended_list":Ljava/lang/String;
    sget-object v3, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 977
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 978
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "settings_ui"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 979
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 980
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 981
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 983
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 997
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 985
    :cond_1
    sget-object v3, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 986
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "settings_ui"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 988
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 989
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 990
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 992
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 725
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 726
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const v0, 0x7f0b12c4

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 729
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, -0x1

    .line 730
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 729
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 731
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public onProfileTileOpen()V
    .locals 1

    .prologue
    .line 2451
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v0, :cond_0

    .line 2452
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 2450
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 2365
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 2366
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-nez v0, :cond_0

    .line 2367
    const/4 v0, 0x0

    return v0

    .line 2369
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 2353
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 2354
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 2360
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1743
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1744
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1745
    const-string/jumbo v0, ":settings:need_to_revert_to_initial_fragment"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1746
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 1747
    const-string/jumbo v0, "settings"

    const-string/jumbo v1, "revertToInitialFragment called in onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 1742
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1550
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onResume()V

    .line 1553
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_4

    .line 1554
    :cond_0
    sput-object p0, Lcom/android/settings/SettingsActivity;->mFpContext:Landroid/content/Context;

    .line 1559
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    if-eqz v2, :cond_3

    .line 1561
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    if-nez v2, :cond_1

    .line 1562
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1566
    :cond_1
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    .line 1567
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 1572
    .local v0, "featuresAvailable":Z
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 1573
    const-string/jumbo v1, "Settings"

    const-string/jumbo v2, "onResume SRUK: !featuresAvailable, finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1578
    .end local v0    # "featuresAvailable":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 1549
    return-void

    .line 1553
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1568
    :cond_5
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    .line 1569
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 1570
    :cond_6
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_7

    .line 1571
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v1

    .line 1570
    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1717
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1719
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1720
    const-string/jumbo v2, ":settings:categories"

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1723
    :cond_0
    const-string/jumbo v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1724
    const-string/jumbo v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1725
    const-string/jumbo v2, ":settings:need_to_revert_to_initial_fragment"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1727
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 1733
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    .line 1734
    :goto_0
    const-string/jumbo v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1736
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1737
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    return-void

    .line 1733
    :cond_2
    const/4 v0, 0x0

    .local v0, "isExpanded":Z
    goto :goto_0

    .line 1736
    .end local v0    # "isExpanded":Z
    :cond_3
    const-string/jumbo v1, ""

    .restart local v1    # "query":Ljava/lang/String;
    goto :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 1755
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onStart()V

    .line 1757
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 1758
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 1761
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsActivity$11;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$11;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1767
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1768
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1767
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1770
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1771
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1772
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1773
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNfcStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1774
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->register(Landroid/app/Activity;I)V

    .line 1776
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1779
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    .line 1754
    return-void

    .line 1777
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 1784
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onStop()V

    .line 1786
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1787
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1788
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNfcStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->unregister()V

    .line 1783
    return-void

    .line 1789
    :catch_0
    move-exception v0

    .line 1790
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "LOG_TAG"

    const-string/jumbo v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openEditView()V
    .locals 0

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->switchToEditFavoriteFragment()V

    .line 1050
    return-void
.end method

.method public openSearchView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 711
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    goto :goto_0
.end method

.method public openTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 9
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 2408
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 2409
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    return v0

    .line 2411
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2412
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    return v0

    .line 2414
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2415
    return v7

    .line 2417
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f110652

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 2418
    .local v8, "currentFragment":Landroid/app/Fragment;
    if-eqz v8, :cond_3

    .line 2419
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2426
    :goto_0
    return v3

    .line 2420
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 2422
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    const/4 v5, -0x1

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto :goto_0
.end method

.method protected openTileForBiby(Ljava/lang/String;)Z
    .locals 8
    .param p1, "TileId"    # Ljava/lang/String;

    .prologue
    .line 2432
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 2433
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    const/4 v4, 0x0

    .line 2435
    .local v4, "targetTile":Lcom/android/settingslib/drawer/Tile;
    const/4 v2, 0x0

    .end local v4    # "targetTile":Lcom/android/settingslib/drawer/Tile;
    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 2436
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v6}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 2437
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v6, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v5

    .line 2438
    .local v5, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v6, v5, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "com.android.settings.tileid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2439
    .local v1, "currentTileId":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2440
    move-object v4, v5

    .line 2435
    .end local v1    # "currentTileId":Ljava/lang/String;
    .end local v5    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2436
    .restart local v1    # "currentTileId":Ljava/lang/String;
    .restart local v5    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2445
    .end local v1    # "currentTileId":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_2
    invoke-super {p0, v4}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v6

    return v6
.end method

.method public registerAssistant()V
    .locals 4

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, "className":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const-class v3, Lcom/android/settings/Settings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1072
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v3, :cond_3

    return-void

    .line 1073
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->getAssistantBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 1074
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    .line 1076
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1077
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.android.settings.Favorite"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1078
    const-string/jumbo v3, "com.android.settings.Search"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1079
    new-instance v3, Lcom/android/settings/SettingsActivity$AssistantReceiver;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$AssistantReceiver;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1080
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1069
    return-void
.end method

.method public setEnableNextButtonImage(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x4a

    .line 2334
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->hasNextButtonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2335
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2336
    if-eqz p1, :cond_1

    .line 2337
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2338
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2333
    :cond_0
    :goto_0
    return-void

    .line 2340
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2341
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method protected setMainContentId(I)V
    .locals 0
    .param p1, "contentId"    # I

    .prologue
    .line 1586
    iput p1, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    .line 1585
    return-void
.end method

.method public setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    .prologue
    .line 2755
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    .line 2754
    return-void
.end method

.method public setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    .prologue
    .line 2785
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    .line 2784
    return-void
.end method

.method public setQueryFromOutter(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 852
    const-string/jumbo v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 858
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->fromActSearch:Z

    .line 851
    return-void

    .line 856
    :cond_0
    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "mSearchView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 2550
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 2549
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1703
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1704
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v1, :cond_0

    .line 1705
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1706
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 1707
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1702
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 1709
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t get ActionBar with : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 2348
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1985
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1988
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v1, :cond_0

    .line 1989
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1994
    :goto_0
    if-eqz p2, :cond_1

    .line 1995
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1996
    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2000
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1984
    return-void

    .line 1991
    :cond_0
    const v1, 0x7f110652

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1998
    :cond_1
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 15
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1884
    const/4 v6, 0x0

    .line 1885
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 1886
    if-eqz p4, :cond_1

    .line 1887
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1897
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1899
    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p3

    .line 1898
    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 1883
    :goto_1
    return-void

    .line 1890
    .restart local v6    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ""

    .local v6, "title":Ljava/lang/String;
    goto :goto_0

    .line 1901
    .end local v6    # "title":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1902
    const/4 v14, 0x0

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 1901
    invoke-direct/range {v7 .. v14}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto :goto_1
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1931
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1932
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1920
    :goto_0
    return-void

    .line 1934
    :cond_0
    const/4 v4, 0x0

    .line 1935
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 1936
    if-eqz p4, :cond_2

    .line 1937
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1944
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    .line 1943
    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 1940
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    .local v4, "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public switchToEditFavoriteFragment()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2810
    const-class v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2811
    const v3, 0x7f0b0480

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    .line 2810
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2809
    return-void
.end method

.method public unregisterAssistant()V
    .locals 3

    .prologue
    .line 1083
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    return-void

    .line 1084
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_1

    return-void

    .line 1085
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->getAssistantBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 1086
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    .line 1089
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1090
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :goto_0
    return-void

    .line 1091
    :catch_0
    move-exception v1

    .line 1092
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateOptionMenu(Landroid/view/Menu;)Z
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 890
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 892
    .local v5, "query":Ljava/lang/String;
    const v9, 0x7f1108be

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 893
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-nez v9, :cond_0

    .line 894
    const/4 v9, 0x0

    return v9

    .line 897
    :cond_0
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v9}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SearchView;

    iput-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 898
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v9, :cond_1

    .line 899
    const/4 v9, 0x0

    return v9

    .line 902
    :cond_1
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const v10, 0x102048c

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 903
    .local v7, "searchPlate":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_2

    .line 904
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 905
    .local v8, "searchPlateParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 908
    .end local v8    # "searchPlateParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v9, :cond_3

    .line 909
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v10, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9, v10}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 912
    :cond_3
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->sendAccessibilityEvent(I)V

    .line 913
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 914
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f1108be

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 915
    .local v4, "mSearch":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 916
    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 919
    :cond_4
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b01d4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 920
    const-string/jumbo v9, "search"

    invoke-virtual {p0, v9}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchManager;

    .line 921
    .local v6, "searchManager":Landroid/app/SearchManager;
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v10, Landroid/content/ComponentName;

    const-class v11, Lcom/android/settings/SecSearchActivity;

    invoke-direct {v10, p0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v10}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 922
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 925
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v10, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v10}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 926
    const-string/jumbo v11, "android:id/search_src_text"

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 925
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 927
    .local v1, "et":Landroid/widget/EditText;
    new-instance v3, Lcom/android/settings/Utils$LengthFilter;

    sget-object v9, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 928
    .local v3, "lengthFilter":Lcom/android/settings/Utils$LengthFilter;
    const/16 v9, 0x64

    invoke-virtual {v3, v9}, Lcom/android/settings/Utils$LengthFilter;->setMaxLength(I)V

    .line 929
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 930
    const-string/jumbo v9, "disableEmoticonInput=true"

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 931
    new-instance v9, Lcom/android/settings/SettingsActivity$4;

    invoke-direct {v9, p0}, Lcom/android/settings/SettingsActivity$4;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    .end local v1    # "et":Landroid/widget/EditText;
    .end local v3    # "lengthFilter":Lcom/android/settings/Utils$LengthFilter;
    :goto_0
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v9, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 950
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 951
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 953
    iget-boolean v9, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v9, :cond_5

    .line 954
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v9}, Landroid/view/MenuItem;->expandActionView()Z

    .line 956
    :cond_5
    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v10, 0x1

    invoke-virtual {v9, v5, v10}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 958
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/android/settings/Settings;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 959
    .local v2, "isMainScreen":Z
    if-eqz v2, :cond_6

    iget-boolean v9, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v9, :cond_7

    .line 969
    :cond_6
    :goto_1
    const/4 v9, 0x1

    return v9

    .line 943
    .end local v2    # "isMainScreen":Z
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 960
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "isMainScreen":Z
    :cond_7
    sget-object v9, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 961
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const v12, 0x7f0b0f90

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 962
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SettingsActivity;->mMore:Landroid/view/MenuItem;

    goto :goto_1

    .line 963
    :cond_8
    sget-object v9, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 964
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const v12, 0x7f0b0f91

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 965
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SettingsActivity;->mMore:Landroid/view/MenuItem;

    goto :goto_1
.end method
