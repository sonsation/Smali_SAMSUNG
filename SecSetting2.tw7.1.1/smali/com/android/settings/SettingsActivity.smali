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
        Lcom/android/settings/SettingsActivity$4;,
        Lcom/android/settings/SettingsActivity$AssistantReceiver;,
        Lcom/android/settings/SettingsActivity$onEditButtonClicked;,
        Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;
    }
.end annotation


# static fields
.field private static final BIXBY_PROVISION_URL:Landroid/net/Uri;

.field private static final BIXBY_URL:Landroid/net/Uri;

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

.field private mGameModeObserver:Landroid/database/ContentObserver;

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

.field private mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

.field private mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

.field private mPreSettingUi:I

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

.field private mSettingsUIObserver:Landroid/database/ContentObserver;

.field private mSinglePane:Z

.field private mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

.field private mSplitBarView:Landroid/view/View;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTitleRedID:I

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

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateEasyModeTitle()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/SettingsActivity;)V
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

    .line 348
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsActivity;->mFpContext:Landroid/content/Context;

    .line 350
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 361
    sput-boolean v3, Lcom/android/settings/SettingsActivity;->mUserUpdateSplit:Z

    .line 362
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    .line 422
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 423
    const-class v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 424
    const-string/jumbo v1, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    aput-object v1, v0, v4

    .line 425
    const-string/jumbo v1, "com.android.settings.notification.VolumeLimiterSettings"

    aput-object v1, v0, v5

    .line 426
    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintEntry"

    aput-object v1, v0, v6

    .line 427
    const-string/jumbo v1, "com.samsung.android.settings.iris.IrisLockSettings"

    aput-object v1, v0, v7

    .line 428
    const-string/jumbo v1, "com.samsung.android.settings.NewModePreview"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 422
    sput-object v0, Lcom/android/settings/SettingsActivity;->ENTRY_EXTRA_FOR_SEARCH:[Ljava/lang/String;

    .line 431
    const/16 v0, 0x6c

    new-array v0, v0, [Ljava/lang/String;

    .line 432
    const-string/jumbo v1, "com.samsung.android.settings.GigaMultiPath"

    aput-object v1, v0, v3

    .line 433
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.ToggleMagnifierPreferenceFragment"

    aput-object v1, v0, v4

    .line 434
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.ToggleAirWakeUpPreferenceFragment"

    aput-object v1, v0, v5

    .line 435
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.ToggleAccessControlPreferenceFragment"

    aput-object v1, v0, v6

    .line 436
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.notificationreminder.NotificationReminderPreferenceFragment"

    aput-object v1, v0, v7

    .line 437
    const-string/jumbo v1, "com.samsung.android.settings.activekey.ActiveKeySettings"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 438
    const-string/jumbo v1, "com.samsung.android.settings.activekey.ActiveKeyAppGridView"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 439
    const-string/jumbo v1, "com.samsung.android.settings.AirplaneModeSettings"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 440
    const-string/jumbo v1, "com.samsung.android.settings.applications.ManageDefaultApps"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 441
    const-string/jumbo v1, "com.samsung.android.settings.ApplicationsSettings"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 442
    const-string/jumbo v1, "com.samsung.android.settings.DCMHomeSettings"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 443
    const-string/jumbo v1, "com.samsung.android.settings.autopoweronoff.AutoPowerOnOffSettings"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 444
    const-string/jumbo v1, "com.samsung.android.settings.bluelightfilter.BlueLightFilterSettings"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 445
    const-string/jumbo v1, "com.samsung.android.settings.bluetooth.BluetoothAVCSettings"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 446
    const-string/jumbo v1, "com.samsung.android.settings.bluetooth.BluetoothDualPlaySettings"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 447
    const-string/jumbo v1, "com.samsung.android.settings.bluetooth.BluetoothControlHistory"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 448
    const-string/jumbo v1, "com.samsung.android.settings.guide.BluetoothHelpPage"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 449
    const-string/jumbo v1, "com.samsung.android.settings.CloudAccountSettings"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 450
    const-string/jumbo v1, "com.samsung.android.settings.ConnectionsSettings"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 451
    const-string/jumbo v1, "com.samsung.android.settings.DataSlotChoice"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 452
    const-string/jumbo v1, "com.samsung.android.settings.devicevisibility.DeviceVisibilitySettings"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 453
    const-string/jumbo v1, "com.samsung.android.settings.DockSettings"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 454
    const-string/jumbo v1, "com.samsung.android.settings.DomesticSettings"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 455
    const-string/jumbo v1, "com.samsung.android.settings.fmm.FindMyMobileSettings"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 456
    const-string/jumbo v1, "com.samsung.android.settings.GigaLteSettings"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 457
    const-string/jumbo v1, "com.samsung.android.settings.GlobalRoamingSettings"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 458
    const-string/jumbo v1, "com.samsung.android.settings.LGTCustomerService"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 459
    const-string/jumbo v1, "com.samsung.android.settings.GlobalLteRoaming"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 460
    const-string/jumbo v1, "com.samsung.android.settings.LGTRoamingEnv"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 461
    const-string/jumbo v1, "com.samsung.android.settings.HongBaoAssistantPreferenceFragment"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 462
    const-string/jumbo v1, "com.android.settings.datausage.BillingCycleChnSettings"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 463
    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.LockscreenMenuSettings"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 464
    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.SecuredLockSettingsMenu"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 465
    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.ShowInfomationMenu"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 466
    const-string/jumbo v1, "com.samsung.android.settings.LteModeActivity"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 467
    const-string/jumbo v1, "com.samsung.android.settings.mirrorlink.MirrorLink"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 468
    const-string/jumbo v1, "com.samsung.android.settings.notification.BlockNotificationList"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 469
    const-string/jumbo v1, "com.samsung.android.settings.notification.NotificationsSubSettings"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 470
    const-string/jumbo v1, "com.samsung.android.settings.notification.PriorityNotiAppList"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 471
    const-string/jumbo v1, "com.samsung.android.settings.notification.VibrationsSettings"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 472
    const-string/jumbo v1, "com.samsung.android.settings.notification.VolumeSettings"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 473
    const-string/jumbo v1, "com.samsung.android.settings.notification.ZenModeDNDSettings"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 474
    const-string/jumbo v1, "com.samsung.android.settings.OtherSecuritySettings"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 475
    const-string/jumbo v1, "com.samsung.android.settings.personalpage.PersonalPageSettings"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 476
    const-string/jumbo v1, "com.samsung.android.settings.safetycare.PanicModeSettings"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 477
    const-string/jumbo v1, "com.samsung.android.settings.safetycare.SafetyCareEmergencyMode"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 478
    const-string/jumbo v1, "com.samsung.android.settings.safetycare.SafetyCareSettings"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 479
    const-string/jumbo v1, "com.samsung.android.settings.SmartStaySettings"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 480
    const-string/jumbo v1, "com.samsung.android.settings.display.FullScreenAppsSettings"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 481
    const-string/jumbo v1, "com.samsung.android.settings.NewOneHandOperationSettings"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 482
    const-string/jumbo v1, "com.samsung.android.settings.TRoamingSettings"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 483
    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.HDReffectSettings"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 484
    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.FingerSensorGestureSettings"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 485
    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.QuickCameraSettings"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 486
    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.MultiWindowSettings"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 487
    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.RecentsKeySettings"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 488
    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.Usefulfeature"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 489
    const-string/jumbo v1, "com.samsung.android.settings.usefulfeature.UsefulFeatureHub"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 490
    const-string/jumbo v1, "com.samsung.android.settings.powersaving.LowBatteryFragment"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 491
    const-string/jumbo v1, "com.samsung.android.settings.powersaving.PowerSavingValueFragment"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 492
    const-string/jumbo v1, "com.samsung.android.settings.lockappshortcut.LockAppShortcutSettings"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 493
    const-string/jumbo v1, "com.samsung.android.settings.dualclock.DualClockSetting"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 494
    const-string/jumbo v1, "com.samsung.android.settings.easymode.EasyModeApp"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 495
    const-string/jumbo v1, "com.samsung.android.settings.SoftwareUpdateSettings"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 496
    const-string/jumbo v1, "com.samsung.android.settings.smartbonding.SmartBondingSettings"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 497
    const-string/jumbo v1, "com.samsung.android.settings.GeneralDeviceSettings"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 498
    const-string/jumbo v1, "com.samsung.android.settings.nfc.NfcSettings"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 499
    const-string/jumbo v1, "com.samsung.android.settings.nfc.NfcOsaifukeitaiSettings"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 500
    const-string/jumbo v1, "com.samsung.android.settings.nearby.NearbySettings"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 501
    const-string/jumbo v1, "com.samsung.android.settings.nfc.PaymentSettings"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 502
    const-string/jumbo v1, "com.samsung.android.settings.nfc.TapAndPaySettings"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 503
    const-string/jumbo v1, "com.samsung.android.settings.boostmode.BoostModeCustomFragment"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 504
    const-string/jumbo v1, "com.samsung.android.settings.ethernet.EthernetSettings"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 505
    const-string/jumbo v1, "com.samsung.android.settings.spen.PenAirCmdSettingsMenu"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 506
    const-string/jumbo v1, "com.samsung.android.settings.multisound.MultiSoundSettings"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 507
    const-string/jumbo v1, "com.samsung.android.settings.spen.SPenSettingsMenu"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 508
    const-string/jumbo v1, "com.samsung.android.settings.handwritingsearch.HandwritingLanguagePreference"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 509
    const-string/jumbo v1, "com.samsung.android.settings.deviceinfo.simlockstatus.SimLockStatus"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 510
    const-string/jumbo v1, "com.samsung.android.settings.display.AutoBrightness"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 511
    const-string/jumbo v1, "com.samsung.android.settings.navigationbar.NavigationBarHardPressSetting"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 513
    const-string/jumbo v1, "com.samsung.android.settings.WirelessSettings"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 514
    const-string/jumbo v1, "com.samsung.android.settings.DateTimeSettings"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 515
    const-string/jumbo v1, "com.samsung.android.settings.display.SecDisplaySettings"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 516
    const-string/jumbo v1, "com.samsung.android.settings.display.StatusBar"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 517
    const-string/jumbo v1, "com.samsung.android.settings.display.ScreenResolutionSettings"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 518
    const-string/jumbo v1, "com.samsung.android.settings.display.DisplayTemperatureSettings"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 519
    const-string/jumbo v1, "com.samsung.android.settings.PrivacySettings"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 520
    const-string/jumbo v1, "com.samsung.android.settings.PrivacyResetSettings"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 521
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettings"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 522
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettingsHearing"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 523
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettingsMobility"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 524
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.AccessibilitySettingsVision"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 525
    const-string/jumbo v1, "com.samsung.android.settings.AssistantMenuPreferenceFragment"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 526
    const-string/jumbo v1, "com.samsung.android.settings.accessibility.LightNotificationPreferenceFragment"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 527
    const-string/jumbo v1, "com.samsung.android.settings.notification.SoundSettings"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 528
    const-string/jumbo v1, "com.samsung.android.settings.notification.SoundModeSettings"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 529
    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.WifiApSettings"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 531
    const-string/jumbo v1, "com.samsung.android.settings.bluetooth.tethering.BtTetherSettings"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 533
    const-string/jumbo v1, "com.samsung.android.settings.deviceinfo.StatusVZW"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 534
    const-string/jumbo v1, "com.samsung.android.settings.location.LocationUseInBackground"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 535
    const-string/jumbo v1, "com.samsung.android.settings.accessories.LedCoverCallerIDSettings"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 536
    const-string/jumbo v1, "com.samsung.android.settings.accessories.LedCoverCallerIDList"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 537
    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.LockscreenNotificationApplist"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 538
    const-string/jumbo v1, "com.samsung.android.settings.lockscreen.AdditionalInformationSettings"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    .line 539
    const-string/jumbo v1, "com.samsung.android.settings.navigationbar.NavigationBarSettings"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 540
    const-string/jumbo v1, "com.samsung.android.settings.navigationbar.NavigationBarHideButtonAppsSettings"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    .line 541
    const-string/jumbo v1, "com.samsung.android.settings.navigationbar.PressureTouchActionSettings"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    .line 542
    const-string/jumbo v1, "com.samsung.android.settings.DeviceMaintenanceSettings"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    .line 431
    sput-object v0, Lcom/android/settings/SettingsActivity;->SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 546
    const/16 v0, 0x63

    new-array v0, v0, [Ljava/lang/String;

    .line 555
    const-class v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 557
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 558
    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 559
    const-class v1, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 560
    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 561
    const-class v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 562
    const-class v1, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 563
    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 564
    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 566
    const-class v1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 568
    const-class v1, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 570
    const-class v1, Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 571
    const-class v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 572
    const-class v1, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 573
    const-class v1, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 574
    const-class v1, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 575
    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 576
    const-class v1, Lcom/android/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 577
    const-class v1, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 578
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 579
    const-class v1, Lcom/android/settings/applications/NotificationApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 580
    const-class v1, Lcom/android/settings/applications/ManageAssist;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 581
    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 582
    const-class v1, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 583
    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 584
    const-class v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 585
    const-class v1, Lcom/android/settings/applications/UsageAccessDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 586
    const-class v1, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 587
    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 588
    const-class v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 589
    const-class v1, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 590
    const-class v1, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 591
    const-class v1, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 592
    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 593
    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 594
    const-class v1, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 595
    const-class v1, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 596
    const-class v1, Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 597
    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 598
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 599
    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 600
    const-class v1, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 601
    const-class v1, Lcom/android/settings/gestures/GestureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 602
    const-class v1, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 603
    const-class v1, Lcom/android/settings/CryptKeeperInterstitial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 604
    const-class v1, Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 605
    const-class v1, Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 606
    const-class v1, Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 607
    const-class v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 608
    const-class v1, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 609
    const-class v1, Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 610
    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 611
    const-class v1, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 612
    const-class v1, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 613
    const-class v1, Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 614
    const-class v1, Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 615
    const-class v1, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 616
    const-class v1, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 617
    const-class v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 618
    const-class v1, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 619
    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 620
    const-class v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 621
    const-class v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 622
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 623
    const-class v1, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 624
    const-class v1, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 625
    const-class v1, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 626
    const-class v1, Lcom/samsung/android/settings/notification/SoundEffectSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 627
    const-class v1, Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 628
    const-class v1, Lcom/android/settings/ApnEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 629
    const-class v1, Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 630
    const-class v1, Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 631
    const-class v1, Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 632
    const-class v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 633
    const-class v1, Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 634
    const-class v1, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 635
    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 636
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 637
    const-class v1, Lcom/android/settings/applications/ProcessStatsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 638
    const-class v1, Lcom/android/settings/applications/DrawOverlayDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 639
    const-class v1, Lcom/android/settings/applications/WriteSettingsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 640
    const-class v1, Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 641
    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 642
    const-class v1, Lcom/android/settings/applications/VrListenerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 643
    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 644
    const-class v1, Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 645
    const-class v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 646
    const-class v1, Lcom/android/settings/deviceinfo/ImeiInformation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 647
    const-class v1, Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 648
    const-class v1, Lcom/android/settings/deviceinfo/Status;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 649
    const-class v1, Lcom/android/settings/TestingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 650
    const-class v1, Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 651
    const-class v1, Lcom/android/settings/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 652
    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 653
    const-class v1, Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 654
    const-class v1, Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 655
    const-class v1, Lcom/android/settings/display/NightDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 656
    const-class v1, Lcom/android/settings/applications/ManageDomainUrls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 657
    const-class v1, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 546
    sput-object v0, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 670
    new-array v0, v4, [Ljava/lang/String;

    .line 671
    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    .line 670
    sput-object v0, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    .line 761
    const-string/jumbo v0, "content://com.samsung.android.bixby.bridge.provision"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SettingsActivity;->BIXBY_URL:Landroid/net/Uri;

    .line 762
    sget-object v0, Lcom/android/settings/SettingsActivity;->BIXBY_URL:Landroid/net/Uri;

    const-string/jumbo v1, "provision"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SettingsActivity;->BIXBY_PROVISION_URL:Landroid/net/Uri;

    .line 224
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;-><init>()V

    .line 332
    iput v0, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    .line 349
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    .line 363
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mUpdateLayoutBySplitChange:Z

    .line 364
    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 368
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    .line 369
    iput v0, p0, Lcom/android/settings/SettingsActivity;->mPreSettingUi:I

    .line 375
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    .line 377
    const-class v1, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 378
    const-class v1, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 379
    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 380
    const-class v1, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 381
    const-class v1, Lcom/android/settings/Settings$WirelessSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 383
    const-class v1, Lcom/android/settings/Settings$HomeSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 384
    const-class v1, Lcom/android/settings/Settings$SoundSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 385
    const-class v1, Lcom/android/settings/Settings$DisplaySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 386
    const-class v1, Lcom/android/settings/Settings$StorageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 387
    const-class v1, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 388
    const-class v1, Lcom/android/settings/Settings$ApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 389
    const-class v1, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 390
    const-class v1, Lcom/android/settings/Settings$GestureSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 391
    const-class v1, Lcom/android/settings/Settings$UsefulFeatureMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 393
    const-class v1, Lcom/android/settings/Settings$LocationSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 394
    const-class v1, Lcom/android/settings/Settings$SecuritySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 395
    const-class v1, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 396
    const-class v1, Lcom/android/settings/Settings$UserSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 397
    const-class v1, Lcom/android/settings/Settings$AccountSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 398
    const-class v1, Lcom/android/settings/Settings$EasyModeAppActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 399
    const-class v1, Lcom/android/settings/Settings$EasyModeMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 401
    const-class v1, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 402
    const-class v1, Lcom/android/settings/Settings$DeviceInfoSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 403
    const-class v1, Lcom/android/settings/Settings$AccessibilitySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 404
    const-class v1, Lcom/android/settings/Settings$PrintSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 405
    const-class v1, Lcom/android/settings/Settings$PaymentSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 407
    const-class v1, Lcom/android/settings/Settings$ConnectionsSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 408
    const-class v1, Lcom/android/settings/Settings$GeneralDeviceSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 409
    const-class v1, Lcom/android/settings/Settings$CloudAccountSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 410
    const-class v1, Lcom/android/settings/Settings$DomesticSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 411
    const-class v1, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 412
    const-class v1, Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 413
    const-class v1, Lcom/android/settings/Settings$ZenModeDNDSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 414
    const-class v1, Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 415
    const-class v1, Lcom/samsung/android/settings/face/FaceEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 416
    const-class v1, Lcom/android/settings/Settings$NfcSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 417
    const-class v1, Lcom/android/settings/Settings$NfcOsaifukeitaiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 418
    const-class v1, Lcom/android/settings/Settings$PenSettingsMenuActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 419
    const-class v1, Lcom/android/settings/Settings$DeviceMaintenanceSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 375
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    .line 684
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 685
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 700
    new-instance v0, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    .line 712
    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;-><init>()V

    .line 711
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    .line 732
    const v0, 0x7f1105a0

    iput v0, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    .line 738
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 743
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    .line 744
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    .line 745
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 753
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 764
    new-instance v0, Lcom/android/settings/SettingsActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mGameModeObserver:Landroid/database/ContentObserver;

    .line 771
    new-instance v0, Lcom/android/settings/SettingsActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsActivity$4;-><init>(Lcom/android/settings/SettingsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    .line 929
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->fromActSearch:Z

    .line 1157
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    .line 3148
    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    .line 3178
    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    .line 224
    return-void
.end method

.method private bixbyAvailableDialog()V
    .locals 3

    .prologue
    .line 1104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1105
    .local v0, "mBixbyAvailableDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b11fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1106
    new-instance v1, Lcom/android/settings/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$6;-><init>(Lcom/android/settings/SettingsActivity;)V

    const v2, 0x7f0b08df

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1112
    const v1, 0x7f0b13e7

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/SettingsActivity$7;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsActivity$7;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1118
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1103
    return-void
.end method

.method private doUpdateTilesList()V
    .locals 54

    .prologue
    .line 2376
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    .line 2377
    .local v29, "pm":Landroid/content/pm/PackageManager;
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v46

    .line 2378
    .local v46, "um":Landroid/os/UserManager;
    invoke-virtual/range {v46 .. v46}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v17

    .line 2380
    .local v17, "isAdmin":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 2381
    .local v28, "packageName":Ljava/lang/String;
    const-string/jumbo v50, "android.hardware.wifi"

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v42

    .line 2383
    .local v42, "showWifi":Z
    const/16 v21, 0x0

    .line 2384
    .local v21, "isKnoxCustomWifi":Z
    sget-object v50, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v50

    if-eqz v50, :cond_1

    .line 2385
    const/16 v50, 0x1

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    if-nez v50, :cond_0

    .line 2386
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v50, v0

    and-int/lit8 v50, v50, 0x1

    if-nez v50, :cond_1

    .line 2387
    :cond_0
    const/16 v42, 0x0

    .line 2388
    .local v42, "showWifi":Z
    const/16 v21, 0x1

    .line 2392
    .end local v42    # "showWifi":Z
    :cond_1
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    if-eqz v21, :cond_1c

    const/16 v50, 0x1

    .line 2392
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v42

    move/from16 v3, v50

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2395
    const-string/jumbo v50, "android.hardware.bluetooth"

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v31

    .line 2397
    .local v31, "showBT":Z
    const/16 v18, 0x0

    .line 2398
    .local v18, "isKnoxCustomBT":Z
    sget-object v50, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v50

    if-eqz v50, :cond_3

    .line 2399
    const/16 v50, 0x2

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    if-nez v50, :cond_2

    .line 2400
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v50, v0

    and-int/lit8 v50, v50, 0x2

    if-nez v50, :cond_3

    .line 2401
    :cond_2
    const/16 v31, 0x0

    .line 2402
    .local v31, "showBT":Z
    const/16 v18, 0x1

    .line 2406
    .end local v31    # "showBT":Z
    :cond_3
    new-instance v51, Landroid/content/ComponentName;

    .line 2407
    const-class v50, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    .line 2406
    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    if-eqz v18, :cond_1d

    const/16 v50, 0x1

    .line 2406
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v31

    move/from16 v3, v50

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2410
    new-instance v50, Landroid/content/ComponentName;

    .line 2411
    const-class v51, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    .line 2410
    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v51

    .line 2410
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2414
    new-instance v50, Landroid/content/ComponentName;

    .line 2415
    const-class v51, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    .line 2414
    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v51

    .line 2414
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2418
    new-instance v50, Landroid/content/ComponentName;

    .line 2419
    const-class v51, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    .line 2418
    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    move/from16 v51, v0

    .line 2418
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2423
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v50

    .line 2422
    if-eqz v50, :cond_1f

    .line 2423
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v50

    if-eqz v50, :cond_1e

    const/16 v41, 0x0

    .line 2425
    .local v41, "showUser":Z
    :goto_2
    const/16 v20, 0x0

    .line 2426
    .local v20, "isKnoxCustomUsers":Z
    sget-object v50, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v50

    if-eqz v50, :cond_4

    .line 2427
    const/16 v50, 0x80

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    .line 2426
    if-eqz v50, :cond_4

    .line 2428
    const/16 v41, 0x0

    .line 2429
    const/16 v20, 0x1

    .line 2432
    :cond_4
    new-instance v51, Landroid/content/ComponentName;

    .line 2433
    const-class v50, Lcom/android/settings/Settings$UserSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    .line 2432
    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    if-eqz v20, :cond_20

    const/16 v50, 0x1

    .line 2432
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v41

    move/from16 v3, v50

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2436
    new-instance v51, Landroid/content/ComponentName;

    .line 2437
    const-class v50, Lcom/android/settings/Settings$WirelessSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    .line 2436
    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v50

    if-eqz v50, :cond_21

    const/16 v50, 0x0

    .line 2436
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2440
    new-instance v51, Landroid/content/ComponentName;

    .line 2441
    const-class v50, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    .line 2440
    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v50

    if-eqz v50, :cond_22

    const/16 v50, 0x0

    .line 2440
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2444
    const/16 v37, 0x1

    .line 2445
    .local v37, "showNfc":Z
    const-string/jumbo v50, "android.hardware.nfc"

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v50

    if-nez v50, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isFactoryBinary()Z

    move-result v50

    if-eqz v50, :cond_23

    .line 2448
    :cond_5
    :goto_6
    new-instance v51, Landroid/content/ComponentName;

    .line 2449
    const-class v50, Lcom/android/settings/Settings$NfcSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    .line 2448
    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    if-eqz v37, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v50

    if-eqz v50, :cond_24

    :cond_6
    const/16 v50, 0x0

    .line 2448
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2452
    new-instance v51, Landroid/content/ComponentName;

    .line 2453
    const-class v50, Lcom/android/settings/Settings$NfcOsaifukeitaiSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    .line 2452
    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    if-eqz v37, :cond_25

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v50

    .line 2452
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2456
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    .line 2457
    .local v5, "adapter":Landroid/nfc/NfcAdapter;
    new-instance v51, Landroid/content/ComponentName;

    .line 2458
    const-class v50, Lcom/android/settings/Settings$PaymentSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    .line 2457
    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    const-string/jumbo v50, "android.hardware.nfc"

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_27

    .line 2460
    const-string/jumbo v50, "android.hardware.nfc.hce"

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v50

    .line 2459
    if-eqz v50, :cond_27

    .line 2461
    if-eqz v5, :cond_27

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v50

    if-nez v50, :cond_26

    const/16 v50, 0x1

    .line 2457
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2463
    new-instance v50, Landroid/content/ComponentName;

    .line 2464
    const-class v51, Lcom/android/settings/Settings$PrintSettingsActivity;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    .line 2463
    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    const-string/jumbo v51, "android.software.print"

    move-object/from16 v0, v29

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v51

    .line 2463
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2467
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v15

    .line 2468
    .local v15, "helpMenuData":Lcom/android/settings/Utils$OnlineHelpMenuState;
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$HelpActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    iget-boolean v0, v15, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    move/from16 v50, v0

    if-eqz v50, :cond_28

    const/16 v50, 0x0

    .line 2468
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2472
    const-string/jumbo v50, "connectivity"

    .line 2471
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/ConnectivityManager;

    .line 2473
    .local v24, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual/range {v24 .. v24}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v26

    .line 2474
    .local v26, "mUsbRegexs":[Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v27

    .line 2475
    .local v27, "mWifiRegexs":[Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v23

    .line 2477
    .local v23, "mBluetoothRegexs":[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v50, v0

    if-eqz v50, :cond_29

    const/16 v47, 0x1

    .line 2478
    .local v47, "usbAvailable":Z
    :goto_b
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v50, v0

    if-eqz v50, :cond_2a

    const/16 v49, 0x1

    .line 2479
    .local v49, "wifiAvailable":Z
    :goto_c
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v50, v0

    if-eqz v50, :cond_2b

    const/4 v7, 0x1

    .line 2480
    .local v7, "bluetoothAvailable":Z
    :goto_d
    const-string/jumbo v50, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/UserManager;

    .line 2481
    .local v25, "mUm":Landroid/os/UserManager;
    const-string/jumbo v50, "no_config_tethering"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    .line 2483
    .local v22, "isRestricted":Z
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    if-nez v47, :cond_2c

    if-nez v49, :cond_2c

    if-nez v7, :cond_2c

    move/from16 v50, v22

    .line 2483
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2487
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v30

    .line 2488
    .local v30, "salesCode":Ljava/lang/String;
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$SoftwareUpdateSettingActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isUsingVZWFota(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v50

    if-nez v50, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isUsingATTFota(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_2d

    :cond_7
    const/16 v50, 0x0

    .line 2488
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2492
    new-instance v50, Landroid/content/ComponentName;

    const-class v51, Lcom/android/settings/Settings$DockSettingsActivity;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v51

    .line 2492
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2495
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->updateEasyModeTitle()V

    .line 2497
    const/16 v34, 0x1

    .line 2498
    .local v34, "showFingerprint":Z
    const-string/jumbo v50, "com.sec.feature.fingerprint_manager_service"

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v50

    if-nez v50, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v50

    if-nez v50, :cond_8

    .line 2499
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->isUCMKeyguardEnabled()Z

    move-result v50

    .line 2498
    if-eqz v50, :cond_9

    .line 2500
    :cond_8
    const/16 v34, 0x0

    .line 2502
    :cond_9
    new-instance v50, Landroid/content/ComponentName;

    const-class v51, Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v34

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2504
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$TRoamingSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v50

    if-nez v50, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v50

    if-eqz v50, :cond_2e

    :cond_a
    const/16 v50, 0x0

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2506
    const/16 v32, 0x1

    .line 2507
    .local v32, "showBioFace":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v50

    if-eqz v50, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v50

    if-nez v50, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v50

    if-eqz v50, :cond_c

    .line 2508
    :cond_b
    const/16 v32, 0x0

    .line 2510
    :cond_c
    new-instance v50, Landroid/content/ComponentName;

    const-class v51, Lcom/samsung/android/settings/face/FaceEntry;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v32

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2512
    const/16 v35, 0x1

    .line 2513
    .local v35, "showIris":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v50

    if-eqz v50, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v50

    if-nez v50, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v50

    if-eqz v50, :cond_e

    .line 2514
    :cond_d
    const/16 v35, 0x0

    .line 2516
    :cond_e
    new-instance v50, Landroid/content/ComponentName;

    const-class v51, Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v35

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2519
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    const/16 v50, 0x10

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    if-eqz v50, :cond_2f

    const/16 v50, 0x0

    :goto_11
    const/16 v52, 0x1

    .line 2519
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v52

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2522
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    const/16 v50, 0x200

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    if-eqz v50, :cond_30

    const/16 v50, 0x0

    :goto_12
    const/16 v52, 0x1

    .line 2522
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v52

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2525
    sget-object v50, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v50

    if-eqz v50, :cond_11

    .line 2527
    const/16 v36, 0x1

    .line 2528
    .local v36, "showLocation":Z
    const/16 v50, 0x400

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    if-nez v50, :cond_f

    .line 2529
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v50, v0

    and-int/lit8 v50, v50, 0x4

    if-nez v50, :cond_10

    .line 2530
    :cond_f
    const/16 v36, 0x0

    .line 2532
    :cond_10
    new-instance v50, Landroid/content/ComponentName;

    const-class v51, Lcom/android/settings/Settings$LocationSettingsActivity;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    const/16 v51, 0x1

    .line 2532
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v36

    move/from16 v3, v51

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2535
    sget-object v50, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v50

    if-eqz v50, :cond_31

    .line 2536
    new-instance v50, Landroid/content/ComponentName;

    const-class v51, Lcom/android/settings/Settings$AirplaneModeSettingsActivity;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    const/16 v51, 0x0

    .line 2536
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2543
    :goto_13
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    const/16 v50, 0x20

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    if-eqz v50, :cond_33

    const/16 v50, 0x0

    :goto_14
    const/16 v52, 0x1

    .line 2543
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v52

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2546
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$LocalePickerActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    const/16 v50, 0x20

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    if-eqz v50, :cond_34

    const/16 v50, 0x0

    :goto_15
    const/16 v52, 0x1

    .line 2546
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v52

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2549
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$ApplicationsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    const/16 v50, 0x200

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    if-eqz v50, :cond_35

    const/16 v50, 0x0

    :goto_16
    const/16 v52, 0x1

    .line 2549
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v52

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2555
    .end local v36    # "showLocation":Z
    :cond_11
    const-string/jumbo v50, "com.android.settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v51

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_13

    .line 2556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v50, v0

    .line 2557
    const-string/jumbo v51, "show"

    sget-object v52, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v53, "eng"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    .line 2556
    invoke-interface/range {v50 .. v52}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    if-eqz v50, :cond_37

    .line 2558
    const-string/jumbo v50, "no_debugging_features"

    move-object/from16 v0, v46

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_36

    const/16 v33, 0x0

    .line 2560
    .local v33, "showDev":Z
    :goto_17
    const/16 v19, 0x0

    .line 2561
    .local v19, "isKnoxCustomDev":Z
    const/16 v50, 0x100

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    if-eqz v50, :cond_12

    .line 2562
    const/16 v33, 0x0

    .line 2563
    const/16 v19, 0x1

    .line 2566
    :cond_12
    new-instance v51, Landroid/content/ComponentName;

    .line 2567
    const-class v50, Lcom/android/settings/Settings$DevelopmentSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    .line 2566
    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    if-eqz v19, :cond_38

    const/16 v50, 0x1

    .line 2566
    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v33

    move/from16 v3, v50

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2571
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/settings/qstile/DevelopmentTiles;->setTilesEnabled(Landroid/content/Context;Z)V

    .line 2574
    .end local v19    # "isKnoxCustomDev":Z
    .end local v33    # "showDev":Z
    :cond_13
    const/16 v39, 0x1

    .line 2575
    .local v39, "showPrivate":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v50

    if-eqz v50, :cond_14

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v50

    if-nez v50, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v50

    if-nez v50, :cond_14

    .line 2580
    :cond_14
    const/16 v39, 0x0

    .line 2582
    new-instance v50, Landroid/content/ComponentName;

    const-class v51, Lcom/android/settings/Settings$PersonalPageSettingsActivity;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v39

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2585
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v50

    const-string/jumbo v51, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v50 .. v51}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_16

    .line 2586
    const/16 v40, 0x1

    .line 2588
    .local v40, "showTile":Z
    const-string/jumbo v50, "connectivity"

    .line 2587
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 2589
    .local v11, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/content/Context;Landroid/net/ConnectivityManager;)I

    move-result v43

    .line 2590
    .local v43, "tetherSummary":I
    const-string/jumbo v50, "Settings"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v52, " tetherSummary : "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    const/16 v50, -0x1

    move/from16 v0, v43

    move/from16 v1, v50

    if-ne v0, v1, :cond_15

    .line 2592
    const/16 v40, 0x0

    .line 2593
    const-string/jumbo v50, "Settings"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v52, "sprint chameleon tethering showTile : "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_15
    new-instance v50, Landroid/content/ComponentName;

    .line 2597
    const-class v51, Lcom/android/settings/Settings$SprTetherSettingsActivity;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    .line 2596
    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    if-nez v40, :cond_39

    .line 2595
    .end local v22    # "isRestricted":Z
    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v22

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2602
    .end local v11    # "cm":Landroid/net/ConnectivityManager;
    .end local v40    # "showTile":Z
    .end local v43    # "tetherSummary":I
    :cond_16
    if-eqz v17, :cond_3a

    .line 2617
    :cond_17
    const/16 v38, 0x1

    .line 2618
    .local v38, "showPrivacy":Z
    sget-object v50, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v50

    if-eqz v50, :cond_19

    .line 2619
    const/16 v50, 0x40

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    if-nez v50, :cond_18

    .line 2620
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v50

    if-eqz v50, :cond_19

    .line 2621
    :cond_18
    const/16 v38, 0x0

    .line 2626
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f0b0233

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2627
    .local v6, "backupIntent":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    .line 2628
    .local v48, "useDefaultBackup":Z
    new-instance v51, Landroid/content/ComponentName;

    .line 2629
    const-class v50, Lcom/android/settings/Settings$PrivacySettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    .line 2628
    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    if-eqz v38, :cond_3d

    move/from16 v50, v48

    .line 2628
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2630
    const/4 v14, 0x0

    .line 2631
    .local v14, "hasBackupActivity":Z
    if-nez v48, :cond_1a

    .line 2633
    const/16 v50, 0x0

    :try_start_0
    move/from16 v0, v50

    invoke-static {v6, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v16

    .line 2634
    .local v16, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v50

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v16

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v50

    if-eqz v50, :cond_3e

    const/4 v14, 0x0

    .line 2639
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_1a
    :goto_1b
    new-instance v50, Landroid/content/ComponentName;

    .line 2640
    const-class v51, Lcom/android/settings/BackupSettingsActivity;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    .line 2639
    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v17

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2642
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$PenSettingsMenuActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    sget-object v50, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v50

    if-nez v50, :cond_3f

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v50

    .line 2642
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2645
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$AccountSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    sget-object v50, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v52, "no_modify_accounts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v50

    if-eqz v50, :cond_40

    const/16 v50, 0x0

    .line 2645
    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 2648
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v50

    if-eqz v50, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v50

    if-eqz v50, :cond_41

    .line 2375
    :cond_1b
    :goto_1e
    return-void

    .end local v5    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v6    # "backupIntent":Ljava/lang/String;
    .end local v7    # "bluetoothAvailable":Z
    .end local v14    # "hasBackupActivity":Z
    .end local v15    # "helpMenuData":Lcom/android/settings/Utils$OnlineHelpMenuState;
    .end local v18    # "isKnoxCustomBT":Z
    .end local v20    # "isKnoxCustomUsers":Z
    .end local v23    # "mBluetoothRegexs":[Ljava/lang/String;
    .end local v24    # "mCm":Landroid/net/ConnectivityManager;
    .end local v25    # "mUm":Landroid/os/UserManager;
    .end local v26    # "mUsbRegexs":[Ljava/lang/String;
    .end local v27    # "mWifiRegexs":[Ljava/lang/String;
    .end local v30    # "salesCode":Ljava/lang/String;
    .end local v32    # "showBioFace":Z
    .end local v34    # "showFingerprint":Z
    .end local v35    # "showIris":Z
    .end local v37    # "showNfc":Z
    .end local v38    # "showPrivacy":Z
    .end local v39    # "showPrivate":Z
    .end local v41    # "showUser":Z
    .end local v47    # "usbAvailable":Z
    .end local v48    # "useDefaultBackup":Z
    .end local v49    # "wifiAvailable":Z
    :cond_1c
    move/from16 v50, v17

    .line 2393
    goto/16 :goto_0

    .restart local v18    # "isKnoxCustomBT":Z
    :cond_1d
    move/from16 v50, v17

    .line 2408
    goto/16 :goto_1

    .line 2423
    :cond_1e
    const/16 v41, 0x1

    .restart local v41    # "showUser":Z
    goto/16 :goto_2

    .line 2422
    .end local v41    # "showUser":Z
    :cond_1f
    const/16 v41, 0x0

    .restart local v41    # "showUser":Z
    goto/16 :goto_2

    .restart local v20    # "isKnoxCustomUsers":Z
    :cond_20
    move/from16 v50, v17

    .line 2434
    goto/16 :goto_3

    .line 2438
    :cond_21
    const/16 v50, 0x1

    goto/16 :goto_4

    .line 2442
    :cond_22
    const/16 v50, 0x1

    goto/16 :goto_5

    .line 2446
    .restart local v37    # "showNfc":Z
    :cond_23
    const/16 v37, 0x0

    goto/16 :goto_6

    .line 2450
    :cond_24
    const/16 v50, 0x1

    goto/16 :goto_7

    .line 2454
    :cond_25
    const/16 v50, 0x0

    goto/16 :goto_8

    .line 2461
    .restart local v5    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_26
    const/16 v50, 0x0

    goto/16 :goto_9

    .line 2459
    :cond_27
    const/16 v50, 0x0

    goto/16 :goto_9

    .line 2469
    .restart local v15    # "helpMenuData":Lcom/android/settings/Utils$OnlineHelpMenuState;
    :cond_28
    const/16 v50, 0x1

    goto/16 :goto_a

    .line 2477
    .restart local v23    # "mBluetoothRegexs":[Ljava/lang/String;
    .restart local v24    # "mCm":Landroid/net/ConnectivityManager;
    .restart local v26    # "mUsbRegexs":[Ljava/lang/String;
    .restart local v27    # "mWifiRegexs":[Ljava/lang/String;
    :cond_29
    const/16 v47, 0x0

    .restart local v47    # "usbAvailable":Z
    goto/16 :goto_b

    .line 2478
    :cond_2a
    const/16 v49, 0x0

    .restart local v49    # "wifiAvailable":Z
    goto/16 :goto_c

    .line 2479
    :cond_2b
    const/4 v7, 0x0

    .restart local v7    # "bluetoothAvailable":Z
    goto/16 :goto_d

    .line 2484
    .restart local v22    # "isRestricted":Z
    .restart local v25    # "mUm":Landroid/os/UserManager;
    :cond_2c
    const/16 v50, 0x1

    goto/16 :goto_e

    .line 2489
    .restart local v30    # "salesCode":Ljava/lang/String;
    :cond_2d
    const/16 v50, 0x1

    goto/16 :goto_f

    .line 2504
    .restart local v34    # "showFingerprint":Z
    :cond_2e
    const/16 v50, 0x1

    goto/16 :goto_10

    .line 2520
    .restart local v32    # "showBioFace":Z
    .restart local v35    # "showIris":Z
    :cond_2f
    const/16 v50, 0x1

    goto/16 :goto_11

    .line 2523
    :cond_30
    const/16 v50, 0x1

    goto/16 :goto_12

    .line 2539
    .restart local v36    # "showLocation":Z
    :cond_31
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$AirplaneModeSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    const/16 v50, 0x4

    invoke-static/range {v50 .. v50}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v50

    if-eqz v50, :cond_32

    const/16 v50, 0x0

    :goto_1f
    const/16 v52, 0x1

    .line 2539
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v52

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    goto/16 :goto_13

    .line 2540
    :cond_32
    const/16 v50, 0x1

    goto :goto_1f

    .line 2544
    :cond_33
    const/16 v50, 0x1

    goto/16 :goto_14

    .line 2547
    :cond_34
    const/16 v50, 0x1

    goto/16 :goto_15

    .line 2550
    :cond_35
    const/16 v50, 0x1

    goto/16 :goto_16

    .line 2558
    .end local v36    # "showLocation":Z
    :cond_36
    const/16 v33, 0x1

    .restart local v33    # "showDev":Z
    goto/16 :goto_17

    .line 2556
    .end local v33    # "showDev":Z
    :cond_37
    const/16 v33, 0x0

    .restart local v33    # "showDev":Z
    goto/16 :goto_17

    .restart local v19    # "isKnoxCustomDev":Z
    :cond_38
    move/from16 v50, v17

    .line 2568
    goto/16 :goto_18

    .line 2598
    .end local v19    # "isKnoxCustomDev":Z
    .end local v33    # "showDev":Z
    .restart local v11    # "cm":Landroid/net/ConnectivityManager;
    .restart local v39    # "showPrivate":Z
    .restart local v40    # "showTile":Z
    .restart local v43    # "tetherSummary":I
    :cond_39
    const/16 v22, 0x1

    goto/16 :goto_19

    .line 2604
    .end local v11    # "cm":Landroid/net/ConnectivityManager;
    .end local v22    # "isRestricted":Z
    .end local v40    # "showTile":Z
    .end local v43    # "tetherSummary":I
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v8

    .line 2605
    .local v8, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "category$iterator":Ljava/util/Iterator;
    :cond_3b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 2606
    .local v9, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v0, v9, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .local v45, "tile$iterator":Ljava/util/Iterator;
    :cond_3c
    :goto_20
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_3b

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/settingslib/drawer/Tile;

    .line 2607
    .local v44, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 2608
    .local v12, "component":Landroid/content/ComponentName;
    if-eqz v12, :cond_3c

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v28

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_3c

    .line 2609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v51

    .line 2608
    invoke-static/range {v50 .. v51}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_3c

    .line 2610
    const/16 v50, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v17

    move-object/from16 v3, v29

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    goto :goto_20

    .line 2629
    .end local v8    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v9    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v10    # "category$iterator":Ljava/util/Iterator;
    .end local v12    # "component":Landroid/content/ComponentName;
    .end local v44    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v45    # "tile$iterator":Ljava/util/Iterator;
    .restart local v6    # "backupIntent":Ljava/lang/String;
    .restart local v38    # "showPrivacy":Z
    .restart local v48    # "useDefaultBackup":Z
    :cond_3d
    const/16 v50, 0x0

    goto/16 :goto_1a

    .line 2634
    .restart local v14    # "hasBackupActivity":Z
    .restart local v16    # "intent":Landroid/content/Intent;
    :cond_3e
    const/4 v14, 0x1

    goto/16 :goto_1b

    .line 2635
    .end local v16    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v13

    .line 2636
    .local v13, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v50, "Settings"

    const-string/jumbo v51, "Invalid backup intent URI!"

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .line 2643
    .end local v13    # "e":Ljava/net/URISyntaxException;
    :cond_3f
    const/16 v50, 0x1

    goto/16 :goto_1c

    .line 2646
    :cond_40
    const/16 v50, 0x1

    goto/16 :goto_1d

    .line 2649
    :cond_41
    new-instance v51, Landroid/content/ComponentName;

    const-class v50, Lcom/android/settings/Settings$WirelessSettingsActivity;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isContainerOnlyModeFromOwner(Landroid/content/Context;)Z

    move-result v50

    if-eqz v50, :cond_42

    const/16 v50, 0x0

    .line 2649
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v17

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    goto/16 :goto_1e

    .line 2650
    :cond_42
    const/16 v50, 0x1

    goto :goto_21
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 2672
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 2673
    const/16 v4, 0x80

    .line 2672
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2674
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 2675
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 2677
    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2678
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID_VZW"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    .line 2679
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2680
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    .line 2685
    :cond_2
    :goto_0
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2686
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.tileid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    .line 2670
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_3
    :goto_1
    return-void

    .line 2683
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

    .line 2688
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 2690
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
    .line 1130
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1131
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

    .line 1132
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    :cond_0
    const-string/jumbo v1, "com.android.settings."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1135
    const-string/jumbo v1, "com.android.settings."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    :cond_1
    return-object v0
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 4

    .prologue
    .line 3117
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledFingerPrints()Z

    move-result v0

    .line 3118
    .local v0, "hasFingerprints":Z
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v1

    .line 3121
    .local v1, "hasIrises":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3122
    const v2, 0x7f0b0ae1

    .line 3129
    .local v2, "resourceId":I
    :goto_0
    return v2

    .line 3123
    .end local v2    # "resourceId":I
    :cond_0
    if-eqz v0, :cond_1

    .line 3124
    const v2, 0x7f0b0add

    .restart local v2    # "resourceId":I
    goto :goto_0

    .line 3126
    .end local v2    # "resourceId":I
    :cond_1
    const v2, 0x7f0b0ade

    .restart local v2    # "resourceId":I
    goto :goto_0
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 3

    .prologue
    .line 3134
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 3133
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    .line 3135
    .local v0, "isProfile":Z
    if-eqz v0, :cond_0

    const v1, 0x7f0b148c

    :goto_0
    return v1

    .line 3136
    :cond_0
    const v1, 0x7f0b148b

    goto :goto_0
.end method

.method private getSavedSplitbarLeftWeight(F)F
    .locals 4
    .param p1, "leftDefaultWeightValue"    # F

    .prologue
    .line 3511
    const-string/jumbo v2, "com.android.settings_preferences"

    const/4 v3, 0x4

    .line 3510
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3512
    .local v0, "sharedPreference":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "split_bar_left_wegigh"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 3515
    .local v1, "splitBarMovedLeftWeight":F
    return v1
.end method

.method public static getSettingsActivityContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3142
    sget-object v0, Lcom/android/settings/SettingsActivity;->mFpContext:Landroid/content/Context;

    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2126
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    return-object v1

    .line 2128
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2129
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 2131
    :cond_1
    const-string/jumbo v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2132
    const-string/jumbo v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2131
    if-nez v1, :cond_2

    .line 2133
    const-string/jumbo v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2131
    if-eqz v1, :cond_3

    .line 2135
    :cond_2
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2138
    :cond_3
    return-object v0
.end method

.method private initializeLayoutBySplitBar()V
    .locals 7

    .prologue
    .line 3217
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 3218
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3220
    .local v1, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 3222
    .local v3, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3223
    .local v0, "leftPanelWeight":F
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3224
    .local v2, "rightPanelWeight":F
    add-float v4, v0, v2

    .line 3226
    .local v4, "weightSum":F
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->getSavedSplitbarLeftWeight(F)F

    move-result v5

    sput v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    .line 3229
    sget v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 3230
    sget v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3231
    sget v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    sub-float v5, v4, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3232
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3233
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3237
    .end local v0    # "leftPanelWeight":F
    .end local v1    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "rightPanelWeight":F
    .end local v3    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "weightSum":F
    :cond_0
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    if-nez v5, :cond_1

    .line 3238
    new-instance v5, Lcom/android/settings/SettingsActivity$17;

    invoke-direct {v5, p0}, Lcom/android/settings/SettingsActivity$17;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 3264
    :cond_1
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 3265
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    new-instance v6, Lcom/android/settings/SettingsActivity$18;

    invoke-direct {v6, p0}, Lcom/android/settings/SettingsActivity$18;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3484
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    new-instance v6, Lcom/android/settings/SettingsActivity$19;

    invoke-direct {v6, p0}, Lcom/android/settings/SettingsActivity$19;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 3502
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3216
    :cond_2
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1146
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1148
    return v3

    .line 1150
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1151
    sget-object v2, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 1150
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1153
    :cond_2
    return v3
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1141
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 1142
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
    .line 3586
    const/4 v1, 0x0

    .line 3587
    .local v1, "isEnabled":Z
    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v3

    .line 3588
    .local v3, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-nez v3, :cond_0

    .line 3589
    const-string/jumbo v4, "Settings"

    const-string/jumbo v5, "Failed to get UCM Service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    return v1

    .line 3593
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v2

    .line 3594
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

    .line 3595
    :cond_1
    return v1

    .line 3597
    :cond_2
    const-string/jumbo v4, "Settings"

    const-string/jumbo v5, "UCM Keyguard is enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3598
    const/4 v1, 0x1

    .line 3602
    .end local v2    # "keyguardCSName":Ljava/lang/String;
    :goto_0
    return v1

    .line 3599
    :catch_0
    move-exception v0

    .line 3600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private revertToInitialFragment()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2866
    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 2867
    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    .line 2868
    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 2872
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_1

    .line 2874
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2905
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    .line 2906
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 2908
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->mainViewVisible(Z)V

    .line 2865
    return-void

    .line 2884
    :catch_0
    move-exception v0

    .line 2885
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2875
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 2876
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 2889
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, ":settings:prefs"

    .line 2890
    const/4 v4, 0x1

    .line 2889
    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 2891
    :catch_2
    move-exception v1

    .line 2892
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 2900
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 2901
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSettingsActivityContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 675
    sput-object p0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 674
    return-void
.end method

.method private setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .param p3, "isAdmin"    # Z
    .param p4, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 2656
    if-eqz p3, :cond_1

    .line 2667
    .end local p2    # "enabled":Z
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;Z)V

    .line 2655
    return-void

    .line 2656
    .restart local p2    # "enabled":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2657
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2659
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2660
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/Settings$BlockNotificationListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2659
    if-eqz v0, :cond_2

    .line 2661
    const/4 p2, 0x1

    .local p2, "enabled":Z
    goto :goto_0

    .line 2664
    .local p2, "enabled":Z
    :cond_2
    const/4 p2, 0x0

    .local p2, "enabled":Z
    goto :goto_0
.end method

.method private setTitleFromBackStack()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1894
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1896
    .local v1, "count":I
    if-nez v1, :cond_3

    .line 1897
    iget v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v3, :cond_1

    .line 1898
    iget v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 1903
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    if-lez v3, :cond_0

    .line 1905
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1906
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.knox.securefolder"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    :cond_0
    :goto_1
    return-void

    .line 1900
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1908
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.knox.containeragent2"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1910
    :catch_0
    move-exception v2

    .line 1911
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1919
    .end local v2    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v3, :cond_4

    .line 1920
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1921
    if-ne v1, v5, :cond_5

    .line 1922
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1923
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1930
    :goto_2
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    if-eqz v3, :cond_4

    .line 1931
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1932
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1933
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    .line 1938
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 1939
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    .line 1893
    return-void

    .line 1925
    .end local v0    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1926
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_2
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 1944
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 1945
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 1946
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1950
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 1951
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1942
    :cond_0
    return-void

    .line 1948
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1803
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    if-lez v7, :cond_0

    .line 1805
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1806
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.knox.securefolder"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1815
    :cond_0
    :goto_0
    const-string/jumbo v7, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1816
    .local v5, "initialTitleResId":I
    if-lez v5, :cond_3

    .line 1817
    iput-object v10, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1818
    iput v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1821
    const-string/jumbo v7, ":settings:show_fragment_title_res_package_name"

    .line 1820
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1822
    .local v6, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1825
    :try_start_1
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v8, 0x0

    .line 1824
    invoke-virtual {p0, v6, v8, v7}, Lcom/android/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 1826
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1827
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1828
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1829
    return-void

    .line 1808
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v5    # "initialTitleResId":I
    .end local v6    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.knox.containeragent2"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1810
    :catch_0
    move-exception v3

    .line 1811
    .local v3, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1832
    .end local v3    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "initialTitleResId":I
    .restart local v6    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1834
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not find resource"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 1830
    .restart local v6    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1831
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not find package"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1837
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    goto :goto_1

    .line 1840
    .end local v6    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_3
    iput v9, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1841
    const-string/jumbo v7, ":settings:show_fragment_title"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1842
    .local v4, "initialTitle":Ljava/lang/String;
    if-eqz v4, :cond_4

    .end local v4    # "initialTitle":Ljava/lang/String;
    :goto_2
    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1843
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1842
    .restart local v4    # "initialTitle":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2
.end method

.method private showAndHandleBiometricDialog()V
    .locals 5

    .prologue
    .line 3107
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v2

    .line 3108
    .local v2, "title":I
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 3110
    .local v1, "message":I
    const-string/jumbo v3, "unlock_set_none"

    const/4 v4, 0x1

    .line 3109
    invoke-static {v2, v1, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;Z)Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 3111
    .local v0, "dialog":Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 3112
    const-string/jumbo v4, "frp_warning_dialog"

    .line 3111
    invoke-virtual {v0, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3106
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
    const v3, 0x7f1105a0

    .line 2286
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2290
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 2291
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2294
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_6

    .line 2295
    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2306
    :goto_0
    if-eqz p7, :cond_1

    .line 2307
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 2309
    :cond_1
    if-eqz p4, :cond_2

    .line 2310
    const-string/jumbo v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2312
    :cond_2
    if-lez p5, :cond_9

    .line 2313
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 2317
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2318
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_4

    .line 2319
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2321
    :cond_4
    return-object v0

    .line 2287
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

    .line 2297
    .restart local v0    # "f":Landroid/app/Fragment;
    .restart local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_6
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2298
    const v2, 0x7f11078e

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 2299
    :cond_7
    const-class v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2300
    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 2302
    :cond_8
    const v2, 0x7f110792

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 2314
    :cond_9
    if-eqz p6, :cond_3

    .line 2315
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z
    .param p8, "resultTo"    # Landroid/app/Fragment;
    .param p9, "resultRequestCode"    # I

    .prologue
    const v3, 0x7f1105a0

    .line 2326
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2330
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 2331
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2332
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p8, :cond_1

    .line 2333
    invoke-virtual {v0, p8, p9}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2335
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_7

    .line 2336
    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2346
    :goto_0
    if-eqz p7, :cond_2

    .line 2347
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 2349
    :cond_2
    if-eqz p4, :cond_3

    .line 2350
    const-string/jumbo v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2352
    :cond_3
    if-lez p5, :cond_a

    .line 2353
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 2357
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2358
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_5

    .line 2359
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2361
    :cond_5
    return-object v0

    .line 2327
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_6
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

    .line 2338
    .restart local v0    # "f":Landroid/app/Fragment;
    .restart local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_7
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2339
    const v2, 0x7f11078e

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 2340
    :cond_8
    const-class v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2341
    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 2343
    :cond_9
    const v2, 0x7f110792

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 2354
    :cond_a
    if-eqz p6, :cond_4

    .line 2355
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2839
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v0, :cond_0

    .line 2840
    return-void

    .line 2842
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1105a0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 2843
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v0, :cond_1

    .line 2844
    check-cast v8, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    .line 2856
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 2857
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 2858
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->mainViewVisible(Z)V

    .line 2838
    return-void

    .line 2852
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2853
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    move v7, v4

    :goto_1
    const v5, 0x7f0b13eb

    move-object v0, p0

    move-object v6, v2

    .line 2851
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    goto :goto_0

    :cond_2
    move v7, v3

    .line 2853
    goto :goto_1
.end method

.method private updateEasyModeTitle()V
    .locals 5

    .prologue
    .line 786
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isEasyModeDisplayed(Landroid/content/Context;)Z

    move-result v0

    .line 787
    .local v0, "showEasyMode":Z
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 788
    .local v1, "um":Landroid/os/UserManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/settings/Settings$EasyModeMainActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 788
    invoke-direct {p0, v2, v0, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 785
    return-void
.end method

.method private updateTilesList()V
    .locals 1

    .prologue
    .line 2367
    new-instance v0, Lcom/android/settings/SettingsActivity$16;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$16;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 2363
    return-void
.end method


# virtual methods
.method public fingerprintEditBtnClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1103bd

    if-ne v0, v1, :cond_0

    .line 3156
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    invoke-interface {v0}, Lcom/android/settings/SettingsActivity$onEditButtonClicked;->editKeyPressed()V

    .line 3154
    :cond_0
    return-void
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 2237
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v0, :cond_2

    .line 2239
    if-eqz p1, :cond_1

    .line 2240
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2241
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    .line 2244
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2245
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2235
    :cond_1
    :goto_0
    return-void

    .line 2250
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 2251
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_0
.end method

.method protected getAssistantBundle(Z)Landroid/os/Bundle;
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 1175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1176
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "ActivityName"

    const-string/jumbo v2, "com.android.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    if-eqz p1, :cond_1

    .line 1178
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1179
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1181
    :cond_0
    const-string/jumbo v1, "IconName"

    const-string/jumbo v2, "Search"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    :cond_1
    :goto_0
    const-string/jumbo v1, "register"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1187
    return-object v0

    .line 1180
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v1

    .line 1178
    if-nez v1, :cond_0

    .line 1180
    sget-object v1, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v1

    .line 1178
    if-nez v1, :cond_0

    .line 1183
    const-string/jumbo v1, "IconName"

    const-string/jumbo v2, "Search;Edit quick settings;"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    .line 2100
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 2101
    .local v5, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v5}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 2104
    .local v4, "startingFragment":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2105
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2106
    .local v2, "modIntent":Landroid/content/Intent;
    const-string/jumbo v6, ":settings:show_fragment"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2107
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2108
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2109
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 2113
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v6, "intent"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2114
    const-string/jumbo v6, "needSearchMenuInSub"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2115
    .local v3, "needSearchMenuInSub":Z
    const-string/jumbo v6, ":settings:show_fragment_args"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2116
    return-object v2

    .line 2111
    .end local v3    # "needSearchMenuInSub":Z
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .line 2118
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    return-object v5
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 1123
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

    .line 1124
    new-instance v0, Lcom/android/settings/SharedPreferencesLogger;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SharedPreferencesLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 1126
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 2696
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

    .line 2704
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
    .line 3161
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const v1, 0x7f0b092d

    if-ne v1, v0, :cond_0

    .line 3162
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    invoke-interface {v0}, Lcom/android/settings/SettingsActivity$onEditButtonClicked;->editKeyPressed()V

    .line 3160
    :cond_0
    return-void
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 6
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2082
    if-nez p1, :cond_0

    .line 2083
    return v5

    .line 2085
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2086
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    .line 2085
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2088
    :cond_2
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/android/settings/SettingsActivity;->SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 2089
    sget-object v2, Lcom/android/settings/SettingsActivity;->SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v4

    .line 2088
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2091
    :cond_4
    const-string/jumbo v2, "com.samsung.android.settings"

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2092
    .local v1, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 2093
    sget-object v2, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v4

    .line 2092
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2095
    :cond_6
    return v5
.end method

.method public mainViewVisible(Z)V
    .locals 8
    .param p1, "bVisible"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const v5, 0x7f110793

    const v4, 0x7f110789

    .line 2913
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2914
    .local v0, "fade_in":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2915
    if-eqz p1, :cond_2

    .line 2916
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2917
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2918
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2920
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2921
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2912
    :cond_1
    :goto_0
    return-void

    .line 2924
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2925
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2927
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2928
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 2862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 2861
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x68

    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 2956
    if-ne p1, v7, :cond_5

    .line 2957
    if-ne p2, v10, :cond_3

    .line 2958
    const/4 v3, 0x0

    .line 2959
    .local v3, "mToken":[B
    if-eqz p3, :cond_0

    .line 2961
    const-string/jumbo v7, "hw_auth_token"

    .line 2960
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 2963
    .end local v3    # "mToken":[B
    :cond_0
    const/4 v5, 0x0

    .line 2964
    .local v5, "mTokenIris":[B
    if-eqz p3, :cond_1

    .line 2966
    const-string/jumbo v7, "hw_auth_token_iris"

    .line 2965
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 2968
    .end local v5    # "mTokenIris":[B
    :cond_1
    const/4 v4, 0x0

    .line 2969
    .local v4, "mTokenFace":[B
    if-eqz p3, :cond_2

    .line 2971
    const-string/jumbo v7, "hw_auth_token_face"

    .line 2970
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 2973
    .end local v4    # "mTokenFace":[B
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportIris()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFace()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3103
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2951
    return-void

    .line 2977
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 2976
    invoke-static {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2978
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startFingerprintLockSettings([B)V

    goto :goto_0

    .line 2981
    :cond_5
    const/16 v7, 0x67

    if-ne p1, v7, :cond_6

    .line 2982
    if-ne p2, v8, :cond_3

    .line 2983
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->switchToSwipe()V

    goto :goto_0

    .line 2990
    :cond_6
    const/16 v7, 0x65

    if-ne p1, v7, :cond_a

    .line 2991
    if-ne p2, v8, :cond_3

    .line 2993
    const/4 v6, 0x0

    .line 2994
    .local v6, "mUserPassword":Ljava/lang/String;
    if-eqz p3, :cond_7

    .line 2995
    const-string/jumbo v7, "password"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2997
    .end local v6    # "mUserPassword":Ljava/lang/String;
    :cond_7
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 2998
    const-class v9, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    .line 2997
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 2999
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 3000
    const-string/jumbo v7, "password"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3003
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 3002
    invoke-static {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 3004
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportIris()Z

    move-result v7

    .line 3002
    if-eqz v7, :cond_9

    .line 3007
    :cond_8
    const/16 v7, 0x68

    .line 3005
    invoke-virtual {p0, v2, v7}, Lcom/android/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3011
    :catch_0
    move-exception v0

    .line 3012
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3009
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_9
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3021
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_a
    const/16 v7, 0x66

    if-ne p1, v7, :cond_d

    .line 3022
    if-ne p2, v8, :cond_3

    .line 3023
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledFingerPrints()Z

    move-result v7

    if-nez v7, :cond_b

    .line 3024
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v7

    .line 3023
    if-eqz v7, :cond_c

    .line 3026
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->showAndHandleBiometricDialog()V

    goto :goto_0

    .line 3030
    :cond_c
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->switchToSwipe()V

    goto/16 :goto_0

    .line 3041
    :cond_d
    const/16 v7, 0x69

    if-ne p1, v7, :cond_f

    .line 3042
    if-ne p2, v8, :cond_3

    .line 3043
    const/4 v3, 0x0

    .line 3044
    .restart local v3    # "mToken":[B
    if-eqz p3, :cond_e

    .line 3046
    const-string/jumbo v7, "hw_auth_token"

    .line 3045
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 3048
    .end local v3    # "mToken":[B
    :cond_e
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startFingerprintLockSettings([B)V

    goto/16 :goto_0

    .line 3057
    :cond_f
    const/16 v7, 0x6a

    if-ne p1, v7, :cond_10

    .line 3058
    if-ne p2, v8, :cond_3

    .line 3059
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->setFingerPrintLockOff()V

    goto/16 :goto_0

    .line 3068
    :cond_10
    const/16 v7, 0x6b

    if-ne p1, v7, :cond_12

    .line 3069
    if-ne p2, v8, :cond_3

    .line 3070
    const/4 v3, 0x0

    .line 3071
    .restart local v3    # "mToken":[B
    if-eqz p3, :cond_11

    .line 3073
    const-string/jumbo v7, "hw_auth_token"

    .line 3072
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 3075
    .end local v3    # "mToken":[B
    :cond_11
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startIrisLockSettings([B)V

    goto/16 :goto_0

    .line 3084
    :cond_12
    const/16 v7, 0x6c

    if-ne p1, v7, :cond_13

    .line 3085
    if-ne p2, v8, :cond_3

    .line 3086
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->setIrisLockOff()V

    goto/16 :goto_0

    .line 3088
    :cond_13
    const/16 v7, 0x2a

    if-ne p1, v7, :cond_14

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    if-eqz v7, :cond_14

    .line 3089
    if-eqz p2, :cond_14

    .line 3090
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    .line 3091
    const/4 v9, 0x2

    .line 3090
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 3092
    :cond_14
    const/16 v7, 0x1f7

    if-eq p1, v7, :cond_16

    if-eqz p3, :cond_15

    const-string/jumbo v7, "chg"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 3093
    :cond_15
    if-ne p1, v10, :cond_3

    .line 3095
    :cond_16
    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v7, :cond_17

    .line 3096
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 3099
    .local v1, "fragment":Landroid/app/Fragment;
    :goto_1
    if-eqz v1, :cond_3

    .line 3100
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 3098
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f110792

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .restart local v1    # "fragment":Landroid/app/Fragment;
    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1851
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    if-eqz v3, :cond_0

    .line 1852
    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBackPressed consume backKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    invoke-interface {v3}, Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;->onBackKey()V

    .line 1854
    return-void

    .line 1857
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v3, :cond_3

    .line 1858
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_1

    .line 1859
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1860
    return-void

    .line 1863
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 1864
    .local v0, "count":I
    if-ne v0, v5, :cond_3

    .line 1865
    const-string/jumbo v3, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1866
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->moveTaskToBack(Z)Z

    .line 1870
    :goto_0
    return-void

    .line 1868
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_0

    .line 1874
    .end local v0    # "count":I
    :cond_3
    :try_start_0
    const-string/jumbo v3, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1875
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1876
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "com.samsung.feature.device_category_phone_low_end"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v3, :cond_4

    .line 1877
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->moveTaskToBack(Z)Z

    .line 1878
    return-void

    .line 1881
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1849
    :goto_1
    return-void

    .line 1882
    :catch_0
    move-exception v1

    .line 1883
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 1890
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    .line 1889
    return-void
.end method

.method public onCategoriesChanged()V
    .locals 20

    .prologue
    .line 3520
    invoke-super/range {p0 .. p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCategoriesChanged()V

    .line 3522
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3519
    :cond_0
    :goto_0
    return-void

    .line 3524
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3525
    const-string/jumbo v3, "settings_ui"

    const/4 v4, -0x1

    .line 3524
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 3527
    .local v17, "settingUi":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/SettingsActivity;->mPreSettingUi:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_0

    .line 3528
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->isResumed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3529
    return-void

    .line 3532
    :cond_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SettingsActivity;->mPreSettingUi:I

    .line 3534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v15

    .line 3535
    .local v15, "menu":Landroid/view/Menu;
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 3536
    .local v16, "more":Landroid/view/MenuItem;
    if-eqz v16, :cond_3

    .line 3537
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3538
    const v2, 0x7f0b11eb

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3544
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v10

    .line 3546
    .local v10, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    const/4 v12, 0x0

    .line 3548
    .local v12, "first":Lcom/android/settingslib/drawer/Tile;
    const/4 v13, 0x0

    .end local v12    # "first":Lcom/android/settingslib/drawer/Tile;
    .local v13, "i":I
    :goto_2
    if-nez v12, :cond_7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_7

    .line 3549
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    if-nez v12, :cond_6

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v2

    if-ge v14, v2, :cond_6

    .line 3550
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v2, v14}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v18

    .line 3551
    .local v18, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 3552
    move-object/from16 v12, v18

    .line 3549
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 3539
    .end local v10    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v13    # "i":I
    .end local v14    # "j":I
    .end local v18    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_5
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3540
    const v2, 0x7f0b11ec

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 3548
    .restart local v10    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .restart local v13    # "i":I
    .restart local v14    # "j":I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 3557
    .end local v14    # "j":I
    :cond_7
    if-eqz v12, :cond_0

    .line 3558
    const/16 v19, 0x0

    .line 3559
    .local v19, "topLevelTileId":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3560
    iget-object v2, v12, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 3561
    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID_VZW"

    .line 3560
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3562
    .local v19, "topLevelTileId":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3563
    iget-object v2, v12, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 3564
    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID"

    .line 3563
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3570
    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 3571
    const v3, 0x7f11078e

    .line 3570
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    check-cast v11, Lcom/android/settings/dashboard/DashboardSummary;

    .line 3572
    .local v11, "dashboardSummary":Lcom/android/settings/dashboard/DashboardSummary;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/settings/dashboard/DashboardSummary;->setSelectedTile(Ljava/lang/String;)V

    .line 3574
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, ":settings:prefs"

    .line 3575
    const/4 v4, 0x1

    .line 3574
    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 3576
    iget-object v3, v12, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    iget v7, v12, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    iget-object v8, v12, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 3577
    const/4 v9, 0x0

    move-object/from16 v2, p0

    .line 3576
    invoke-direct/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_0

    .line 3567
    .end local v11    # "dashboardSummary":Lcom/android/settings/dashboard/DashboardSummary;
    .local v19, "topLevelTileId":Ljava/lang/String;
    :cond_9
    iget-object v2, v12, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "topLevelTileId":Ljava/lang/String;
    goto :goto_4
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 2748
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 24
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 818
    invoke-super/range {p0 .. p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 821
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 822
    sget-object v20, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 823
    const v20, 0x7f110795

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 824
    .local v5, "centerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 827
    .local v6, "clp":Landroid/widget/LinearLayout$LayoutParams;
    const v20, 0x7f110794

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 828
    .local v9, "leftView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 830
    .local v10, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const v20, 0x7f110796

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 831
    .local v4, "RightView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 834
    .local v13, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f100239

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f10032e

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 838
    :cond_0
    sget-object v20, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 839
    const/16 v20, -0x2

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 859
    :cond_1
    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    invoke-virtual {v4, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    .end local v4    # "RightView":Landroid/view/View;
    .end local v5    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v6    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "leftView":Landroid/view/View;
    .end local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 867
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 869
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 870
    .local v11, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 871
    iget v14, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 873
    .local v14, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 874
    .restart local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 875
    .restart local v13    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v20, v0

    iget v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v21, v0

    add-float v19, v20, v21

    .line 878
    .local v19, "weightSum":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    sget-boolean v20, Lcom/android/settings/SettingsActivity;->mUserUpdateSplit:Z

    if-eqz v20, :cond_7

    .line 891
    :cond_3
    int-to-float v0, v14

    move/from16 v20, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    div-float v18, v20, v19

    .line 892
    .local v18, "tempLeftPaneWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 893
    const v21, 0x7f0a064f

    .line 892
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 894
    .local v8, "leftPaneMinSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 895
    const v21, 0x7f0a06d7

    .line 894
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    .line 897
    .local v16, "snapCenterPosition":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0f04dd

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    .line 896
    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    .line 898
    .local v17, "splitXinFullview":F
    cmpl-float v20, v18, v16

    if-lez v20, :cond_9

    .line 899
    int-to-float v0, v8

    move/from16 v20, v0

    cmpg-float v20, v18, v20

    if-gtz v20, :cond_9

    .line 900
    int-to-double v0, v8

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v22

    int-to-double v0, v14

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v12, v0

    .line 901
    .local v12, "newLeftPanelWeight":F
    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 902
    sub-int v20, v14, v8

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    const-string/jumbo v20, "com.android.settings_preferences"

    const/16 v21, 0x4

    .line 906
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 908
    .local v15, "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 909
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v20, "split_bar_left_wegigh"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 910
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 817
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
    :cond_4
    :goto_1
    return-void

    .line 836
    .restart local v4    # "RightView":Landroid/view/View;
    .restart local v5    # "centerLayout":Landroid/widget/LinearLayout;
    .restart local v6    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "leftView":Landroid/view/View;
    .restart local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f100338

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f100352

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 842
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 843
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 844
    const/high16 v20, 0x40f00000    # 7.5f

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 845
    const/high16 v20, 0x3fa00000    # 1.25f

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 846
    const/high16 v20, 0x3fa00000    # 1.25f

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 847
    const v20, 0x7f110794

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 848
    const v20, 0x7f110796

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 850
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 851
    const/high16 v20, 0x41200000    # 10.0f

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 852
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 853
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 854
    const v20, 0x7f110794

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 855
    const v20, 0x7f110796

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 879
    .end local v4    # "RightView":Landroid/view/View;
    .end local v5    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v6    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "leftView":Landroid/view/View;
    .restart local v11    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v14    # "screenWidth":I
    .restart local v19    # "weightSum":F
    :cond_7
    const/high16 v20, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->getSavedSplitbarLeftWeight(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 880
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_8

    .line 881
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 886
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    return-void

    .line 883
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0f0014

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0f0015

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    .line 911
    .restart local v8    # "leftPaneMinSize":I
    .restart local v16    # "snapCenterPosition":F
    .restart local v17    # "splitXinFullview":F
    .restart local v18    # "tempLeftPaneWidth":F
    :cond_9
    cmpg-float v20, v18, v16

    if-gtz v20, :cond_4

    .line 912
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

    .line 913
    .restart local v12    # "newLeftPanelWeight":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 914
    int-to-float v0, v14

    move/from16 v20, v0

    sub-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    const-string/jumbo v20, "com.android.settings_preferences"

    const/16 v21, 0x4

    .line 918
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 920
    .restart local v15    # "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 921
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v20, "split_bar_left_wegigh"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 922
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 51
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1222
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v43

    .line 1223
    .local v43, "proKioskManager":Lcom/samsung/android/knox/custom/ProKioskManager;
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v38

    .line 1224
    .local v38, "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    if-eqz v43, :cond_0

    if-eqz v38, :cond_0

    .line 1225
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    .line 1226
    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    .line 1227
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/custom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    .line 1232
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1233
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    .line 1234
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_1a

    .line 1235
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 1242
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 1246
    .local v46, "startTime":J
    sput-object p0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 1247
    const-string/jumbo v2, "accessibility"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1251
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v33

    .line 1254
    .local v33, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "settings:ui_options"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1255
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string/jumbo v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 1257
    :cond_2
    const-string/jumbo v2, ":settings:hide_drawer"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1258
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setIsDrawerPresent(Z)V

    .line 1261
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v5, 0x64

    if-lt v2, v5, :cond_4

    .line 1262
    const-string/jumbo v2, ":settings:show_fragment_title_resid_knox"

    const/4 v5, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    .line 1265
    :cond_4
    const-string/jumbo v2, "development"

    .line 1266
    const/4 v5, 0x0

    .line 1265
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1269
    const-string/jumbo v2, ":settings:show_fragment"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1271
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/android/settings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static/range {v33 .. v33}, Lcom/android/settings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1272
    const-string/jumbo v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1271
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    .line 1274
    invoke-virtual/range {v33 .. v33}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    .line 1275
    .local v25, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    .line 1278
    .local v23, "className":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_5

    .line 1280
    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1282
    const-class v2, Lcom/android/settings/Settings$WirelessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1280
    if-nez v2, :cond_1c

    .line 1283
    const-class v2, Lcom/android/settings/Settings$DeviceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1280
    if-nez v2, :cond_1c

    .line 1284
    const-class v2, Lcom/android/settings/Settings$PersonalSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1280
    if-nez v2, :cond_1c

    .line 1285
    const-class v2, Lcom/android/settings/Settings$SystemSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1280
    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 1292
    :cond_5
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings/SubSettings;

    if-nez v2, :cond_1d

    .line 1293
    const-string/jumbo v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v35

    .line 1296
    .local v35, "isSubSettings":Z
    :goto_3
    if-eqz v35, :cond_6

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v48

    .line 1299
    .local v48, "themeResId":I
    const v2, 0x7f10032e

    move/from16 v0, v48

    if-eq v0, v2, :cond_6

    .line 1300
    const v2, 0x7f100338

    move/from16 v0, v48

    if-eq v0, v2, :cond_6

    .line 1301
    const v2, 0x7f100352

    move/from16 v0, v48

    if-eq v0, v2, :cond_6

    .line 1302
    const v2, 0x7f100324

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 1306
    .end local v48    # "themeResId":I
    :cond_6
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_1e

    const v2, 0x7f0402ce

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/Window;->setContentView(I)V

    .line 1317
    :goto_5
    const v2, 0x7f1105a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 1321
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_24

    .line 1322
    const v2, 0x7f11078a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    .line 1323
    const v2, 0x7f11078f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    .line 1325
    const v2, 0x7f11078d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    .line 1326
    const v2, 0x7f110791

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mRightPaneToolbar:Landroid/widget/Toolbar;

    .line 1328
    const v2, 0x7f110793

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    const v5, 0x7f0b13eb

    invoke-virtual {v2, v5}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 1332
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v41

    .line 1334
    .local v41, "menu":Landroid/view/Menu;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    const v5, 0x7f14000c

    invoke-virtual {v2, v5}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 1336
    const v2, 0x7f110a18

    move-object/from16 v0, v41

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    .line 1337
    .local v45, "search":Landroid/view/MenuItem;
    new-instance v2, Lcom/android/settings/SettingsActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$8;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v45

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1345
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1346
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v8, 0x7f0b11eb

    move-object/from16 v0, v41

    invoke-interface {v0, v2, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1351
    :cond_7
    :goto_6
    const/4 v2, 0x1

    move-object/from16 v0, v41

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v42

    .line 1352
    .local v42, "more":Landroid/view/MenuItem;
    if-eqz v42, :cond_8

    .line 1353
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1354
    const-string/jumbo v5, "settings_ui"

    const/4 v6, -0x1

    .line 1353
    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mPreSettingUi:I

    .line 1355
    new-instance v2, Lcom/android/settings/SettingsActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$9;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v42

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1380
    .end local v41    # "menu":Landroid/view/Menu;
    .end local v42    # "more":Landroid/view/MenuItem;
    .end local v45    # "search":Landroid/view/MenuItem;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mRightPaneToolbar:Landroid/widget/Toolbar;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 1381
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mRightPaneToolbar:Landroid/widget/Toolbar;

    new-instance v5, Lcom/android/settings/SettingsActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$10;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1388
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->initializeLayoutBySplitBar()V

    .line 1398
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_c

    .line 1399
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_c

    .line 1400
    const v2, 0x7f110795

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 1401
    .local v22, "centerLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout$LayoutParams;

    .line 1404
    .local v24, "clp":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f110794

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    .line 1405
    .local v39, "leftView":Landroid/view/View;
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v40

    check-cast v40, Landroid/widget/LinearLayout$LayoutParams;

    .line 1407
    .local v40, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f110796

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1408
    .local v16, "RightView":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    check-cast v44, Landroid/widget/LinearLayout$LayoutParams;

    .line 1411
    .local v44, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v2

    const v5, 0x7f100239

    if-eq v5, v2, :cond_a

    .line 1412
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v2

    const v5, 0x7f10032e

    if-ne v5, v2, :cond_25

    .line 1415
    :cond_a
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1416
    const/4 v2, -0x2

    move-object/from16 v0, v24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1436
    :cond_b
    :goto_8
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1437
    invoke-virtual/range {v39 .. v40}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1438
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1442
    .end local v16    # "RightView":Landroid/view/View;
    .end local v22    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v24    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v39    # "leftView":Landroid/view/View;
    .end local v40    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v44    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    const-string/jumbo v2, "relative_link"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1447
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_d

    .line 1449
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 1459
    :cond_d
    :goto_9
    if-eqz p1, :cond_28

    .line 1462
    const-string/jumbo v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1463
    const-string/jumbo v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1465
    const-string/jumbo v2, ":settings:key_fragment_title_knox"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    .line 1467
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1470
    const-string/jumbo v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1471
    .local v20, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    if-eqz v20, :cond_e

    .line 1472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1474
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    .line 1477
    :cond_e
    const-string/jumbo v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1478
    const-string/jumbo v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1479
    const-string/jumbo v2, ":settings:need_to_revert_to_initial_fragment"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1482
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_f

    .line 1483
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    .line 1592
    .end local v20    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    :cond_f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1595
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_10

    .line 1597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1600
    :cond_10
    const v2, 0x7f110730

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_11

    .line 1602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setMetricsTag(Ljava/lang/String;)V

    .line 1606
    :cond_11
    const-string/jumbo v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1608
    const-string/jumbo v2, "wifi_enable_next_on_connect"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1610
    const v2, 0x7f1103f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1612
    .local v18, "buttonBar":Landroid/view/View;
    if-eqz v18, :cond_16

    .line 1614
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    const v2, 0x7f1103f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    .line 1617
    const v2, 0x7f11076d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonText:Landroid/widget/TextView;

    .line 1618
    const v2, 0x7f1103f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArrow:Landroid/widget/ImageView;

    .line 1620
    const v2, 0x7f1103f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    .line 1621
    const v2, 0x7f1103f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    .line 1622
    const v2, 0x7f1103f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    .line 1624
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "show_button_background"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_12

    .line 1625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020681

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020681

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1629
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_13

    .line 1630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArea:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/settings/SettingsActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$11;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1639
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_14

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/settings/SettingsActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$12;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1649
    :cond_14
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1650
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1651
    .local v19, "buttonText":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1659
    .end local v19    # "buttonText":Ljava/lang/String;
    :cond_15
    :goto_b
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1660
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1661
    .restart local v19    # "buttonText":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonText:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonArrow:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1714
    .end local v18    # "buttonBar":Landroid/view/View;
    .end local v19    # "buttonText":Ljava/lang/String;
    :cond_16
    :goto_c
    new-instance v2, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    .line 1717
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Setting_ConfigTypeHelp"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_19

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1718
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1720
    const-string/jumbo v2, "settings:guide_mode"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3d

    const/16 v34, 0x0

    .line 1721
    .local v34, "isGuideMode":Z
    :goto_d
    if-eqz v34, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    if-eqz v2, :cond_19

    .line 1722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v41

    .line 1723
    .restart local v41    # "menu":Landroid/view/Menu;
    const v2, 0x7f110a18

    move-object/from16 v0, v41

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    .line 1724
    .restart local v45    # "search":Landroid/view/MenuItem;
    const/4 v2, 0x1

    move-object/from16 v0, v41

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    .line 1726
    .local v27, "first":Landroid/view/MenuItem;
    if-eqz v45, :cond_18

    const/4 v2, 0x0

    move-object/from16 v0, v45

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1727
    :cond_18
    if-eqz v27, :cond_19

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1220
    .end local v27    # "first":Landroid/view/MenuItem;
    .end local v34    # "isGuideMode":Z
    .end local v41    # "menu":Landroid/view/Menu;
    .end local v45    # "search":Landroid/view/MenuItem;
    :cond_19
    return-void

    .line 1237
    .end local v3    # "initialFragmentName":Ljava/lang/String;
    .end local v23    # "className":Ljava/lang/String;
    .end local v25    # "cn":Landroid/content/ComponentName;
    .end local v33    # "intent":Landroid/content/Intent;
    .end local v35    # "isSubSettings":Z
    .end local v46    # "startTime":J
    :cond_1a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 1238
    const v2, 0x7f100351

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    goto/16 :goto_0

    .line 1271
    .restart local v3    # "initialFragmentName":Ljava/lang/String;
    .restart local v33    # "intent":Landroid/content/Intent;
    .restart local v46    # "startTime":J
    :cond_1b
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1280
    .restart local v23    # "className":Ljava/lang/String;
    .restart local v25    # "cn":Landroid/content/ComponentName;
    :cond_1c
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 1292
    :cond_1d
    const/16 v35, 0x1

    goto/16 :goto_3

    .line 1308
    .restart local v35    # "isSubSettings":Z
    :cond_1e
    const v2, 0x7f0402d0

    goto/16 :goto_4

    .line 1309
    :cond_1f
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1310
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_20

    const v2, 0x7f0402cf

    :goto_e
    invoke-virtual {v5, v2}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_5

    .line 1311
    :cond_20
    const v2, 0x7f0402d1

    goto :goto_e

    .line 1313
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_22

    const v2, 0x7f0402ce

    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    goto/16 :goto_5

    .line 1314
    :cond_22
    const v2, 0x7f0402d0

    goto :goto_f

    .line 1347
    .restart local v41    # "menu":Landroid/view/Menu;
    .restart local v45    # "search":Landroid/view/MenuItem;
    :cond_23
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1348
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v8, 0x7f0b11ec

    move-object/from16 v0, v41

    invoke-interface {v0, v2, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1391
    .end local v41    # "menu":Landroid/view/Menu;
    .end local v45    # "search":Landroid/view/MenuItem;
    :cond_24
    const v2, 0x7f110793

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    .line 1392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 1393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    goto/16 :goto_7

    .line 1413
    .restart local v16    # "RightView":Landroid/view/View;
    .restart local v22    # "centerLayout":Landroid/widget/LinearLayout;
    .restart local v24    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v39    # "leftView":Landroid/view/View;
    .restart local v40    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v44    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v2

    const v5, 0x7f100338

    if-eq v5, v2, :cond_a

    .line 1414
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v2

    const v5, 0x7f100352

    if-eq v5, v2, :cond_a

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_26

    .line 1420
    const/4 v2, 0x1

    move-object/from16 v0, v24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1421
    const/high16 v2, 0x40f00000    # 7.5f

    move-object/from16 v0, v24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1422
    const/high16 v2, 0x3fa00000    # 1.25f

    move-object/from16 v0, v40

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1423
    const/high16 v2, 0x3fa00000    # 1.25f

    move-object/from16 v0, v44

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1424
    const v2, 0x7f110794

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1425
    const v2, 0x7f110796

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1427
    :cond_26
    const/4 v2, 0x1

    move-object/from16 v0, v24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1428
    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, v24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1429
    const/4 v2, 0x0

    move-object/from16 v0, v40

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1430
    const/4 v2, 0x0

    move-object/from16 v0, v44

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1431
    const v2, 0x7f110794

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    const v2, 0x7f110796

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1455
    .end local v16    # "RightView":Landroid/view/View;
    .end local v22    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v24    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v39    # "leftView":Landroid/view/View;
    .end local v40    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v44    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_27
    const-string/jumbo v2, "Settings"

    const-string/jumbo v5, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1487
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_2c

    .line 1488
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1490
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_2a

    .line 1491
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1497
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1499
    const-string/jumbo v2, ":settings:show_fragment_args"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1500
    .local v4, "initialArguments":Landroid/os/Bundle;
    if-eqz v4, :cond_29

    .line 1501
    const-string/jumbo v2, "needSearchMenuInSub"

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1504
    :cond_29
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1503
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1504
    const/4 v9, 0x0

    move-object/from16 v2, p0

    .line 1503
    invoke-direct/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_a

    .line 1492
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_2a
    if-eqz v35, :cond_2b

    .line 1493
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_10

    .line 1495
    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_10

    .line 1507
    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1509
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1521
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_2d

    .line 1522
    const v2, 0x7f0b13eb

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1523
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1524
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1523
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1524
    const/4 v12, 0x0

    move-object/from16 v5, p0

    .line 1523
    invoke-direct/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_a

    .line 1526
    :cond_2d
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1527
    .local v7, "arguments":Landroid/os/Bundle;
    const/16 v32, 0x0

    .line 1528
    .local v32, "initialFragment":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1529
    .local v4, "initialArguments":Landroid/os/Bundle;
    const/16 v50, 0x0

    .line 1531
    .local v50, "topLevelTileId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v21

    .line 1533
    .local v21, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1534
    const/16 v28, 0x0

    .line 1536
    .local v28, "first":Lcom/android/settingslib/drawer/Tile;
    const/16 v29, 0x0

    .end local v28    # "first":Lcom/android/settingslib/drawer/Tile;
    .local v29, "i":I
    :goto_11
    if-nez v28, :cond_30

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_30

    .line 1537
    const/16 v36, 0x0

    .local v36, "j":I
    :goto_12
    if-nez v28, :cond_2f

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v2

    move/from16 v0, v36

    if-ge v0, v2, :cond_2f

    .line 1538
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v49

    .line 1539
    .local v49, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 1540
    move-object/from16 v28, v49

    .line 1537
    :cond_2e
    add-int/lit8 v36, v36, 0x1

    goto :goto_12

    .line 1536
    .end local v49    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_2f
    add-int/lit8 v29, v29, 0x1

    goto :goto_11

    .line 1544
    .end local v36    # "j":I
    :cond_30
    if-eqz v28, :cond_32

    .line 1545
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1546
    .local v32, "initialFragment":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1547
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1548
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1549
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1550
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings.TOP_LEVEL_TILE_ID_VZW"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1551
    .local v50, "topLevelTileId":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1552
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1557
    :cond_31
    :goto_13
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1558
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings.tileid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1581
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    .end local v29    # "i":I
    .end local v32    # "initialFragment":Ljava/lang/String;
    .end local v50    # "topLevelTileId":Ljava/lang/String;
    :cond_32
    :goto_14
    const-string/jumbo v2, "topLevelTileId"

    move-object/from16 v0, v50

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1583
    const v10, 0x7f0b1c2e

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    .line 1582
    invoke-direct/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    .line 1586
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1585
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1586
    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, v32

    move-object v10, v4

    .line 1585
    invoke-direct/range {v8 .. v15}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_a

    .line 1555
    .restart local v4    # "initialArguments":Landroid/os/Bundle;
    .restart local v29    # "i":I
    .restart local v32    # "initialFragment":Ljava/lang/String;
    .local v50, "topLevelTileId":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .local v50, "topLevelTileId":Ljava/lang/String;
    goto :goto_13

    .line 1561
    .end local v29    # "i":I
    .local v32, "initialFragment":Ljava/lang/String;
    .local v50, "topLevelTileId":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1562
    move-object/from16 v32, v3

    .line 1563
    .local v32, "initialFragment":Ljava/lang/String;
    const-string/jumbo v2, ":settings:show_fragment_args"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1564
    .local v4, "initialArguments":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-gez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_35

    .line 1566
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

    .line 1571
    :cond_35
    :goto_15
    if-eqz v4, :cond_36

    .line 1572
    const-string/jumbo v2, ":settings:fragment_args_key"

    .line 1571
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1574
    const-string/jumbo v2, ":settings:fragment_args_key"

    .line 1573
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1575
    .local v37, "key":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/android/settings/search/SecIndex;->getTopLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .local v50, "topLevelTileId":Ljava/lang/String;
    goto/16 :goto_14

    .line 1567
    .end local v37    # "key":Ljava/lang/String;
    .local v50, "topLevelTileId":Ljava/lang/String;
    :catch_0
    move-exception v26

    .line 1568
    .local v26, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_15

    .line 1577
    .end local v26    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    move-object/from16 v50, v0

    .local v50, "topLevelTileId":Ljava/lang/String;
    goto/16 :goto_14

    .line 1656
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    .end local v7    # "arguments":Landroid/os/Bundle;
    .end local v21    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v32    # "initialFragment":Ljava/lang/String;
    .end local v50    # "topLevelTileId":Ljava/lang/String;
    .restart local v18    # "buttonBar":Landroid/view/View;
    .restart local v19    # "buttonText":Ljava/lang/String;
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 1666
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mPrevButtonText:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 1673
    .end local v18    # "buttonBar":Landroid/view/View;
    .end local v19    # "buttonText":Ljava/lang/String;
    :cond_39
    const v2, 0x7f1101a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1674
    .restart local v18    # "buttonBar":Landroid/view/View;
    if-eqz v18, :cond_16

    .line 1675
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1677
    const v2, 0x7f11066d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 1678
    .local v17, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/SettingsActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$13;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1684
    const v2, 0x7f1101c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 1685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/SettingsActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$14;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1693
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1694
    const-string/jumbo v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1695
    .restart local v19    # "buttonText":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1702
    .end local v19    # "buttonText":Ljava/lang/String;
    :cond_3a
    :goto_16
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1703
    const-string/jumbo v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1704
    .restart local v19    # "buttonText":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1705
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_c

    .line 1699
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 1708
    :cond_3c
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 1720
    .end local v17    # "backButton":Landroid/widget/Button;
    .end local v18    # "buttonBar":Landroid/view/View;
    .end local v19    # "buttonText":Ljava/lang/String;
    :cond_3d
    const/16 v34, 0x1

    goto/16 :goto_d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 944
    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    .line 949
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    :cond_0
    return v2

    .line 955
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    if-eqz v1, :cond_2

    .line 956
    return v2

    .line 960
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 961
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f14000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 963
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->updateOptionMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 2072
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onDestroy()V

    .line 2074
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 2075
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 2074
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 2076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 2071
    return-void
.end method

.method public onIsHidingHeaders()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3201
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 3203
    .local v0, "isSettingWizard":Z
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_2

    .line 3204
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 3201
    .end local v0    # "isSettingWizard":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isSettingWizard":Z
    goto :goto_0

    .line 3203
    :cond_2
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3207
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":android:no_headers"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3186
    const-string/jumbo v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyDown called with keycode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x22

    if-ne p1, v1, :cond_1

    .line 3188
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->openSearchView()V

    .line 3189
    const/4 v1, 0x1

    return v1

    .line 3191
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1105a0

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 3192
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    if-eqz v1, :cond_2

    .line 3193
    check-cast v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->customOnKeyDown(ILandroid/view/KeyEvent;)V

    .line 3196
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2761
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2762
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 2763
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 2766
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2753
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2754
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 2756
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1058
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b11eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1059
    .local v11, "simplified_list":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b11ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1060
    .local v10, "extended_list":Ljava/lang/String;
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1061
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "settings_ui"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1100
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1064
    :cond_1
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    const/4 v7, 0x1

    .line 1070
    .local v7, "blockedBixby":Z
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SettingsActivity;->BIXBY_PROVISION_URL:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1072
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1077
    .local v6, "blocked":Ljava/lang/String;
    const-string/jumbo v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOptionsItemSelected(): blocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    if-eqz v6, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    const/4 v7, 0x0

    .line 1088
    .end local v6    # "blocked":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 1089
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1091
    :cond_3
    if-nez v7, :cond_5

    .line 1092
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->bixbyAvailableDialog()V

    goto :goto_0

    .line 1078
    .restart local v6    # "blocked":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    goto :goto_1

    .line 1084
    .end local v6    # "blocked":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1085
    .local v9, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 1095
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "settings_ui"

    .line 1094
    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 806
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v3, -0x1

    .line 807
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 806
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 808
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 813
    const/4 v0, 0x0

    return v0
.end method

.method public onProfileTileOpen()V
    .locals 1

    .prologue
    .line 2833
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v0, :cond_0

    .line 2834
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 2832
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 2739
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 2740
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-nez v0, :cond_0

    .line 2741
    const/4 v0, 0x0

    return v0

    .line 2743
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
    .line 2727
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 2728
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 2734
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2002
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2004
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 2005
    const-string/jumbo v0, ":settings:key_fragment_title_knox"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    .line 2008
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 2009
    const-string/jumbo v0, ":settings:need_to_revert_to_initial_fragment"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 2010
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_1

    .line 2011
    const-string/jumbo v0, "settings"

    const-string/jumbo v1, "revertToInitialFragment called in onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 2001
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1737
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onResume()V

    .line 1740
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v4, :cond_6

    .line 1741
    :cond_0
    sput-object p0, Lcom/android/settings/SettingsActivity;->mFpContext:Landroid/content/Context;

    .line 1746
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    if-eqz v4, :cond_3

    .line 1748
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    if-nez v4, :cond_1

    .line 1749
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1753
    :cond_1
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_7

    .line 1754
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    .line 1759
    .local v1, "featuresAvailable":Z
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 1760
    const-string/jumbo v3, "Settings"

    const-string/jumbo v4, "onResume SRUK: !featuresAvailable, finishing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1766
    .end local v1    # "featuresAvailable":Z
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_4

    iget v3, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    if-lez v3, :cond_4

    .line 1767
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 1769
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1770
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.knox.securefolder"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 1780
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/settings/Settings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1781
    .local v2, "isMainScreen":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 1782
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->invalidateOptionsMenu()V

    .line 1736
    :cond_5
    return-void

    .line 1740
    .end local v2    # "isMainScreen":Z
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 1755
    :cond_7
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_8

    .line 1756
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 1757
    :cond_8
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_9

    .line 1758
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_2

    move v1, v3

    goto/16 :goto_1

    :cond_9
    move v1, v3

    .line 1757
    goto/16 :goto_1

    .line 1772
    :cond_a
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.knox.containeragent2"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1774
    :catch_0
    move-exception v0

    .line 1775
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1972
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1974
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1975
    const-string/jumbo v2, ":settings:categories"

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1978
    :cond_0
    const-string/jumbo v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1979
    const-string/jumbo v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1980
    const-string/jumbo v2, ":settings:need_to_revert_to_initial_fragment"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1982
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 1983
    const-string/jumbo v2, ":settings:key_fragment_title_knox"

    iget v3, p0, Lcom/android/settings/SettingsActivity;->mTitleRedID:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1986
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_2

    .line 1992
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    .line 1993
    :goto_0
    const-string/jumbo v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1995
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1996
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    .end local v1    # "query":Ljava/lang/String;
    :cond_2
    return-void

    .line 1992
    :cond_3
    const/4 v0, 0x0

    .local v0, "isExpanded":Z
    goto :goto_0

    .line 1995
    .end local v0    # "isExpanded":Z
    :cond_4
    const-string/jumbo v1, ""

    .restart local v1    # "query":Ljava/lang/String;
    goto :goto_1
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2019
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onStart()V

    .line 2021
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 2022
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 2025
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsActivity$15;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$15;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 2031
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 2032
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 2031
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 2034
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2035
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2036
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2037
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->register(Landroid/app/Activity;I)V

    .line 2038
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mGameModeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 2039
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sem_perfomance_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2040
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mGameModeObserver:Landroid/database/ContentObserver;

    .line 2039
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2042
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2046
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2049
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    .line 2018
    return-void

    .line 2042
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 2043
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "settings_ui"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2044
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    .line 2043
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 2047
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 2054
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onStop()V

    .line 2056
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2057
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2061
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->unregister()V

    .line 2062
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mGameModeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 2063
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mGameModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2065
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2053
    :cond_1
    :goto_1
    return-void

    .line 2058
    :catch_0
    move-exception v0

    .line 2059
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "LOG_TAG"

    const-string/jumbo v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2065
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 2066
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method public openEditView()V
    .locals 0

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->switchToEditFavoriteFragment()V

    .line 1171
    return-void
.end method

.method public openSearchView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 793
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    goto :goto_0
.end method

.method public openTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 12
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 2782
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 2783
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    return v0

    .line 2785
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2786
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    return v0

    .line 2788
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2789
    return v7

    .line 2792
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f110792

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 2793
    .local v8, "currentFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2794
    const v1, 0x7f11078e

    .line 2793
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/android/settings/dashboard/DashboardSummary;

    .line 2795
    .local v9, "dashboardSummary":Lcom/android/settings/dashboard/DashboardSummary;
    invoke-virtual {v9}, Lcom/android/settings/dashboard/DashboardSummary;->getSelectedTileId()Ljava/lang/String;

    move-result-object v10

    .line 2796
    .local v10, "previousTileId":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.settings.tileid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2798
    .local v11, "selectedTileId":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 2799
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2800
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2801
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 2802
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 2804
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    iget v5, p1, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    .line 2808
    :cond_4
    return v3
.end method

.method protected openTileForBiby(Ljava/lang/String;)Z
    .locals 8
    .param p1, "TileId"    # Ljava/lang/String;

    .prologue
    .line 2814
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 2815
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    const/4 v4, 0x0

    .line 2817
    .local v4, "targetTile":Lcom/android/settingslib/drawer/Tile;
    const/4 v2, 0x0

    .end local v4    # "targetTile":Lcom/android/settingslib/drawer/Tile;
    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 2818
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v6}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 2819
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v6, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v5

    .line 2820
    .local v5, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v6, v5, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "com.android.settings.tileid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2821
    .local v1, "currentTileId":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2822
    move-object v4, v5

    .line 2817
    .end local v1    # "currentTileId":Ljava/lang/String;
    .end local v5    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2818
    .restart local v1    # "currentTileId":Ljava/lang/String;
    .restart local v5    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2827
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
    .line 1191
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1192
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

    .line 1193
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v3, :cond_3

    return-void

    .line 1194
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->getAssistantBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 1195
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    .line 1197
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1198
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.android.settings.Favorite"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1199
    const-string/jumbo v3, "com.android.settings.Search"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1200
    new-instance v3, Lcom/android/settings/SettingsActivity$AssistantReceiver;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$AssistantReceiver;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1201
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1190
    return-void
.end method

.method public setEnableNextButtonImage(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x4a

    .line 2708
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->hasNextButtonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2709
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2710
    if-eqz p1, :cond_1

    .line 2711
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2712
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 2707
    :cond_0
    :goto_0
    return-void

    .line 2714
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2715
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method public setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    .prologue
    .line 3151
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    .line 3150
    return-void
.end method

.method public setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    .prologue
    .line 3181
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    .line 3180
    return-void
.end method

.method public setQueryFromOutter(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 931
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

    .line 932
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 937
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->fromActSearch:Z

    .line 930
    return-void

    .line 935
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
    .line 2939
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 2938
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1958
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1959
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v1, :cond_0

    .line 1960
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1961
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 1962
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1957
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 1964
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
    .line 2722
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
    .line 2263
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 2266
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v1, :cond_0

    .line 2267
    const v1, 0x7f1105a0

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2272
    :goto_0
    if-eqz p2, :cond_1

    .line 2273
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 2274
    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2278
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2262
    return-void

    .line 2269
    :cond_0
    const v1, 0x7f110792

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 2276
    :cond_1
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 18
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 2162
    const/4 v7, 0x0

    .line 2163
    .local v7, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 2164
    if-eqz p4, :cond_1

    .line 2165
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2175
    .end local v7    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v1, :cond_2

    .line 2177
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p3

    .line 2176
    invoke-static/range {v1 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 2161
    :goto_1
    return-void

    .line 2168
    .restart local v7    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, ""

    .local v7, "title":Ljava/lang/String;
    goto :goto_0

    .line 2179
    .end local v7    # "title":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 2180
    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    .line 2179
    invoke-direct/range {v8 .. v17}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)Landroid/app/Fragment;

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

    .line 2209
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

    .line 2210
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2198
    :goto_0
    return-void

    .line 2212
    :cond_0
    const/4 v4, 0x0

    .line 2213
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 2214
    if-eqz p4, :cond_2

    .line 2215
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2222
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    .line 2221
    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 2218
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    .local v4, "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public startSuggestion(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2943
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2944
    :cond_0
    return-void

    .line 2946
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    .line 2947
    const/16 v0, 0x2a

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2942
    return-void
.end method

.method public switchToEditFavoriteFragment()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 3211
    const-class v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3212
    const v3, 0x7f0b0560

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    .line 3211
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 3210
    return-void
.end method

.method public unregisterAssistant()V
    .locals 3

    .prologue
    .line 1204
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    return-void

    .line 1205
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_1

    return-void

    .line 1206
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->getAssistantBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 1207
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    .line 1210
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1211
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :goto_0
    return-void

    .line 1212
    :catch_0
    move-exception v1

    .line 1213
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateOptionMenu(Landroid/view/Menu;)Z
    .locals 16
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 969
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 971
    .local v7, "query":Ljava/lang/String;
    const v11, 0x7f110a18

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 972
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-nez v11, :cond_0

    .line 973
    const/4 v11, 0x0

    return v11

    .line 976
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v11}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SearchView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 977
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v11, :cond_1

    .line 978
    const/4 v11, 0x0

    return v11

    .line 981
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const v12, 0x10204a2

    invoke-virtual {v11, v12}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 982
    .local v9, "searchPlate":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_2

    .line 983
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 984
    .local v10, "searchPlateParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 987
    .end local v10    # "searchPlateParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v11, :cond_3

    .line 988
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v11, v12}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 991
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/SearchView;->sendAccessibilityEvent(I)V

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f110a18

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 994
    .local v6, "mSearch":Landroid/view/View;
    if-eqz v6, :cond_4

    .line 995
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 998
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0265

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 999
    const-string/jumbo v11, "search"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/SearchManager;

    .line 1001
    .local v8, "searchManager":Landroid/app/SearchManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v12, Landroid/content/ComponentName;

    const-class v13, Lcom/android/settings/SecSearchActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v12}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 1009
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v12}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1010
    const-string/jumbo v13, "android:id/search_src_text"

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1009
    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1011
    .local v3, "et":Landroid/widget/EditText;
    new-instance v5, Lcom/android/settings/Utils$LengthFilter;

    sget-object v11, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 1012
    .local v5, "lengthFilter":Lcom/android/settings/Utils$LengthFilter;
    const/16 v11, 0x64

    invoke-virtual {v5, v11}, Lcom/android/settings/Utils$LengthFilter;->setMaxLength(I)V

    .line 1013
    const/4 v11, 0x1

    new-array v11, v11, [Landroid/text/InputFilter;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1014
    const-string/jumbo v11, "disableEmoticonInput=true"

    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 1015
    new-instance v11, Lcom/android/settings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/settings/SettingsActivity$5;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    .end local v3    # "et":Landroid/widget/EditText;
    .end local v5    # "lengthFilter":Lcom/android/settings/Utils$LengthFilter;
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 1034
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1037
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v11, :cond_5

    .line 1038
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v11}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1040
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v12, 0x1

    invoke-virtual {v11, v7, v12}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1042
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/android/settings/Settings;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1043
    .local v4, "isMainScreen":Z
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v11, :cond_7

    .line 1053
    :cond_6
    :goto_1
    const/4 v11, 0x1

    return v11

    .line 1002
    .end local v4    # "isMainScreen":Z
    :catch_0
    move-exception v1

    .line 1003
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v11, "Settings"

    const-string/jumbo v12, "Failed to getSearchableInfo()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1004
    const/4 v11, 0x0

    return v11

    .line 1027
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 1028
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 1044
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "isMainScreen":Z
    :cond_7
    sget-object v11, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1045
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const v14, 0x7f0b11eb

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1046
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/SettingsActivity;->mMore:Landroid/view/MenuItem;

    goto :goto_1

    .line 1047
    :cond_8
    sget-object v11, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1048
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const v14, 0x7f0b11ec

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1049
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/SettingsActivity;->mMore:Landroid/view/MenuItem;

    goto :goto_1
.end method
