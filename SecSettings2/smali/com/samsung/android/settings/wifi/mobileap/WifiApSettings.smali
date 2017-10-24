.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "WifiApSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$1;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$4;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$7;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$8;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$9;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static mApDeviceInfoDialogShow:Z

.field private static mBixbyMobileAp:Z

.field private static mDefaultTempPassword:Ljava/lang/String;

.field public static mSaveQrWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private static mTetheredData:I

.field private static mWifiApSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/settings/SecSettingsPreferenceFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MHS_REQUEST:I

.field private final TETHER_HELP_REQUEST:I

.field private bDisableMifi:Z

.field private isNoHotSpotModeWarningShown:Z

.field private isOverflowMenuOpen:Z

.field private isRoaming:Z

.field private key_compare:I

.field private mActivity:Landroid/app/Activity;

.field mAllowedMenuItem:Landroid/view/MenuItem;

.field private mApDataLimitPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

.field private mApUsageObserver:Landroid/database/ContentObserver;

.field private mConfigDialogCreate:Landroid/app/AlertDialog;

.field public mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mConfigureMenuItem:Landroid/view/MenuItem;

.field private mConnectedDevices:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mContinueOpen:Z

.field private mDeviceInfo:Landroid/preference/PreferenceScreen;

.field private mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

.field private mDisabledHelp:Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

.field private mDismissDialog:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;

.field private mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

.field private mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

.field private mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

.field private mHowToCategory:Landroid/preference/PreferenceCategory;

.field private mIsFromHelp:Z

.field private mIsTablet:Z

.field private mMsg:Landroid/os/Message;

.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mPassword:Landroid/preference/PreferenceCategory;

.field private mPasswordDialog:Landroid/app/AlertDialog;

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mPasswordHasFocus:Z

.field private mPasswordPreference:Landroid/preference/Preference;

.field private mPinDialog:Lcom/samsung/android/settings/wifi/mobileap/PinDialog;

.field public mPinDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRvfMode:I

.field private mScreenType:Z

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSharedPrefConnect:Landroid/content/SharedPreferences;

.field private mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mTempMacList:Ljava/lang/String;

.field private mTempPassworld:Ljava/lang/String;

.field private mTimeoutDlg:Landroid/app/AlertDialog;

.field private mView:Landroid/view/View;

.field private mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSharingDlg:Landroid/app/AlertDialog;

.field private mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

.field private mWpsApDialog:Landroid/app/AlertDialog;

.field mWpsSwitch:Landroid/view/MenuItem;

.field mWpspinap:Landroid/view/MenuItem;

.field mWpspinclient:Landroid/view/MenuItem;

.field private misLightTheme:Z

.field private noHotspotModeWarningDialog:Landroid/app/AlertDialog;

.field passwordWatcher:Landroid/text/TextWatcher;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private positiveButtonClicked:Z

.field private toast:Landroid/widget/Toast;

.field private wps_tether_pin:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDataLimitPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mNewPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/mobileap/PinDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPinDialog:Lcom/samsung/android/settings/wifi/mobileap/PinDialog;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get22()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTetheredData:I

    return v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get26(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get27(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->positiveButtonClicked:Z

    return v0
.end method

.method static synthetic -get28(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/helpdialog/TwHelpDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    return p1
.end method

.method static synthetic -set10(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mNewPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set11(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return p1
.end method

.method static synthetic -set13(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic -set14(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set15(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set16(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTetheredData:I

    return p0
.end method

.method static synthetic -set17(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set18(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->positiveButtonClicked:Z

    return p1
.end method

.method static synthetic -set19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    return p1
.end method

.method static synthetic -set4(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBixbyMobileAp:Z

    return p0
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    return p1
.end method

.method static synthetic -set7(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    return p1
.end method

.method static synthetic -set8(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)Lcom/samsung/android/settings/helpdialog/TwHelpDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->comparePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1
    .param p1, "oldConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "index"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "newPassphrase"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->creatApConfigWithNewPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSPasswordLogging()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setRvfMode(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setTimeout(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setWifiApConfigData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isMobileApON()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->validate()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->warnForHiddenNetwork()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->warnForOpenNetwork()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isWifiON()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isWifiSharingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->checkWifiMobileApStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->DBG:Z

    .line 205
    sput v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTetheredData:I

    .line 284
    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSaveQrWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 287
    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    .line 306
    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    .line 307
    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBixbyMobileAp:Z

    .line 3060
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$8;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$8;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 203
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->MHS_REQUEST:I

    .line 204
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->TETHER_HELP_REQUEST:I

    .line 207
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 208
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 209
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 210
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    .line 216
    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 225
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    .line 227
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    .line 252
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    .line 253
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    .line 266
    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    .line 277
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isRoaming:Z

    .line 278
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 279
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 280
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    .line 281
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    .line 282
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    .line 288
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 289
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->positiveButtonClicked:Z

    .line 290
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 291
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 293
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    .line 294
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingDlg:Landroid/app/AlertDialog;

    .line 295
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    .line 299
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    .line 302
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;

    .line 308
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 310
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    .line 332
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApUsageObserver:Landroid/database/ContentObserver;

    .line 869
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1723
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPinDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1758
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2105
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2752
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->passwordWatcher:Landroid/text/TextWatcher;

    .line 3084
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    .line 343
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.UPDATE_DEFAULT_CONFIGURATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    return-void
.end method

.method private addPasswordPreference(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 675
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPassword:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 681
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 683
    .local v0, "passphrase":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setPasswordTitle(Ljava/lang/String;)V

    .line 690
    .end local v0    # "passphrase":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 693
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 719
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPassword:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 720
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPassword:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 721
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPassword:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 674
    return-void
.end method

.method private checkWifiMobileApStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2945
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 2947
    .local v1, "mWifiApState":I
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2948
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 2949
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2951
    :try_start_0
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2952
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 2954
    :cond_0
    const-wide/16 v2, 0x258

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2958
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2959
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 2961
    :cond_1
    return-void

    .line 2955
    :catch_0
    move-exception v0

    .line 2956
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2963
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    .line 2964
    const/16 v2, 0xc

    if-ne v1, v2, :cond_5

    .line 2965
    :cond_3
    const-string/jumbo v2, "WifiApSettings"

    const-string/jumbo v3, "Wifi Sharing disabled, so Disable Wifi when both were ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2968
    :try_start_1
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2969
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 2971
    :cond_4
    const-wide/16 v2, 0x258

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2975
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2976
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 2944
    :cond_5
    return-void

    .line 2972
    :catch_1
    move-exception v0

    .line 2973
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private comparePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 2799
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2800
    const/4 v0, 0x0

    return v0

    .line 2802
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 4
    .param p1, "oldConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2488
    if-nez p1, :cond_0

    return v2

    .line 2490
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-eq v0, v1, :cond_1

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSChannelLogging(I)V

    .line 2491
    :cond_1
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v1, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eq v0, v1, :cond_2

    iget-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSHiddenSSIDLogging(Z)V

    .line 2492
    :cond_2
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eq v0, v1, :cond_3

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSMaxClientLogging(I)V

    .line 2493
    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    if-eq v0, p3, :cond_4

    invoke-direct {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSSecurityLogging(I)V

    .line 2494
    :cond_4
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSSSIDLogging()V

    .line 2495
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_7

    if-eq p3, v3, :cond_6

    const/4 v0, 0x2

    if-ne p3, v0, :cond_7

    .line 2496
    :cond_6
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSPasswordLogging()V

    .line 2498
    :cond_7
    const-string/jumbo v0, "SPRINT"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2499
    const-string/jumbo v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2498
    if-nez v0, :cond_8

    .line 2500
    const-string/jumbo v0, "NEWCO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2498
    if-eqz v0, :cond_9

    .line 2501
    :cond_8
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eq v0, v1, :cond_9

    .line 2502
    return v2

    .line 2505
    :cond_9
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2506
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ne v0, v1, :cond_a

    .line 2507
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v1, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v0, v1, :cond_a

    .line 2508
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    if-ne v0, p3, :cond_a

    .line 2509
    packed-switch p3, :pswitch_data_0

    .line 2524
    :cond_a
    return v2

    .line 2511
    :pswitch_0
    return v3

    .line 2514
    :pswitch_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2515
    return v3

    .line 2509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private creatApConfigWithNewPassword(Ljava/lang/String;)V
    .locals 5
    .param p1, "newPassphrase"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2806
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2807
    .local v1, "newWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2809
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2810
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 2811
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 2812
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v2, :cond_0

    .line 2813
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2819
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 2820
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 2827
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2829
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2833
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2834
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 2835
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2836
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 2837
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    .line 2805
    :cond_2
    return-void

    .line 2822
    :cond_3
    iput-object p1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2823
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2825
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 2830
    :catch_0
    move-exception v0

    .line 2831
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private createHelpStep1Dialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2645
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v3, :cond_0

    .line 2646
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 2647
    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 2649
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v3, :cond_1

    .line 2650
    return-void

    .line 2652
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-nez v3, :cond_3

    .line 2653
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040125

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2654
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f1103e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2655
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0d51

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2656
    const v3, 0x7f1103e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2657
    .local v0, "closeBtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$35;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$35;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2668
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2669
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$36;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$36;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2682
    :cond_2
    new-instance v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 2683
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v4}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 2684
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 2685
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    sget-object v4, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 2686
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 2687
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 2644
    .end local v0    # "closeBtn":Landroid/widget/ImageButton;
    .end local v1    # "tv":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private getChameleonMaxUser()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2620
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2621
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 2623
    .local v0, "chameleonMaxUser":I
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2624
    .local v4, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    .line 2626
    :try_start_0
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 2627
    const-string/jumbo v5, "chameleon_gsmmaxuser"

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2641
    :cond_0
    :goto_0
    return v0

    .line 2633
    :cond_1
    const-string/jumbo v5, "chameleon_maxuser"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2637
    :catch_0
    move-exception v3

    .line 2638
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v0, 0xa

    goto :goto_0

    .line 2635
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v2

    .line 2636
    .local v2, "e":Landroid/os/RemoteException;
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private getRandomAlphabet(IJ)Ljava/lang/String;
    .locals 8
    .param p1, "digit"    # I
    .param p2, "seed"    # J

    .prologue
    .line 2906
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2907
    .local v0, "alphabet":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2908
    .local v2, "len":I
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    .line 2909
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 2910
    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 2911
    .local v3, "random":Ljava/util/Random;
    const-string/jumbo v4, ""

    .line 2912
    .local v4, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 2913
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2912
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2915
    :cond_1
    return-object v4
.end method

.method private getRandomDigits(IJ)Ljava/lang/String;
    .locals 10
    .param p1, "digit"    # I
    .param p2, "seed"    # J

    .prologue
    const-wide/16 v6, 0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2930
    if-nez p1, :cond_0

    .line 2931
    const-string/jumbo v4, ""

    return-object v4

    .line 2932
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    .line 2933
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 2934
    :cond_1
    cmp-long v4, p2, v6

    if-nez v4, :cond_2

    .line 2935
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long p2, v4, v6

    .line 2936
    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 2937
    .local v3, "random":Ljava/util/Random;
    const/16 v2, 0xa

    .line 2938
    .local v2, "maxValue":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 2939
    mul-int/lit8 v2, v2, 0xa

    .line 2938
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2940
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%%0%dd"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2941
    .local v0, "format":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getRandomSymbol(IJ)Ljava/lang/String;
    .locals 8
    .param p1, "digit"    # I
    .param p2, "seed"    # J

    .prologue
    .line 2918
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "!@#$/^&*()"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2919
    .local v4, "sym":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 2920
    .local v1, "len":I
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    .line 2921
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 2922
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 2923
    .local v2, "random":Ljava/util/Random;
    const-string/jumbo v3, ""

    .line 2924
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 2925
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2927
    :cond_1
    return-object v3
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 2037
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMsg:Landroid/os/Message;

    if-nez v1, :cond_0

    .line 2038
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMsg:Landroid/os/Message;

    .line 2040
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMsg:Landroid/os/Message;

    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2041
    const/4 v0, -0x1

    .line 2042
    .local v0, "mRvfMode":I
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMsg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 2043
    return v0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2205
    sparse-switch p1, :sswitch_data_0

    .line 2219
    const/4 v0, -0x1

    return v0

    .line 2207
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 2209
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 2211
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 2213
    :sswitch_3
    const/4 v0, 0x3

    return v0

    .line 2215
    :sswitch_4
    const/4 v0, 0x4

    return v0

    .line 2217
    :sswitch_5
    const/4 v0, 0x5

    return v0

    .line 2205
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/16 v0, 0x4b0

    .line 2223
    packed-switch p1, :pswitch_data_0

    .line 2237
    return v0

    .line 2225
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2227
    :pswitch_1
    const/16 v0, 0x12c

    return v0

    .line 2229
    :pswitch_2
    const/16 v0, 0x258

    return v0

    .line 2231
    :pswitch_3
    return v0

    .line 2233
    :pswitch_4
    const/16 v0, 0x708

    return v0

    .line 2235
    :pswitch_5
    const/16 v0, 0xe10

    return v0

    .line 2223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromPreference()I
    .locals 3

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2259
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 2261
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getTitleDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mPasswordTTS"    # Ljava/lang/String;

    .prologue
    .line 3048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3049
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3050
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3051
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 3052
    const-string/jumbo v2, "SPACE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3053
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3050
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3055
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3057
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2267
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "WifiApSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleEvent action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    const-string/jumbo v3, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2269
    :cond_0
    const-string/jumbo v3, "EVENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2270
    .local v2, "event":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string/jumbo v3, "sta_leave"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2271
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices(Z)V

    .line 2264
    .end local v2    # "event":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2273
    .restart local v2    # "event":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices(Z)V

    goto :goto_0

    .line 2275
    .end local v2    # "event":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2276
    sget-boolean v3, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v3, :cond_5

    .line 2278
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_5

    .line 2279
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2282
    :cond_5
    const-string/jumbo v3, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2283
    const/16 v4, 0xd

    .line 2282
    if-ne v3, v4, :cond_8

    .line 2284
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2285
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateCurrent(Landroid/net/wifi/WifiConfiguration;)V

    .line 2286
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    .line 2287
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 2288
    sget-boolean v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBixbyMobileAp:Z

    if-eqz v3, :cond_7

    .line 2289
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2290
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "WiFi"

    const-string/jumbo v5, "AlreadyONwithoutWifisharing"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "HotspotSettings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2293
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2294
    sput-boolean v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBixbyMobileAp:Z

    .line 2296
    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v3, :cond_1

    .line 2297
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 2300
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "SAMSUNG_HOTSPOT_CONNECT_TIME"

    invoke-virtual {v3, v4, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    .line 2301
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2302
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2303
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2304
    const-string/jumbo v3, "WifiApSettings"

    const-string/jumbo v4, "cleared sharedprefs"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-eqz v3, :cond_1

    .line 2306
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 2309
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_9
    const-string/jumbo v3, "com.samsung.intent.action.UPDATE_DEFAULT_CONFIGURATION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2310
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2311
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    goto/16 :goto_0

    .line 2312
    :cond_a
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2313
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0361

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2314
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->finish()V

    goto/16 :goto_0

    .line 2315
    :cond_b
    const-string/jumbo v3, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2316
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenu()V

    goto/16 :goto_0
.end method

.method private initMemberVar()V
    .locals 1

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    .line 639
    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->addPreferencesFromResource(I)V

    .line 640
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    .line 641
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const-string/jumbo v0, "wifi_ap_password_dream"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPassword:Landroid/preference/PreferenceCategory;

    .line 646
    :goto_0
    const-string/jumbo v0, "wifi_sharing"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    .line 653
    const-string/jumbo v0, "wifi_ap_connected_devices"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    .line 654
    const-string/jumbo v0, "wifi_ap_howto_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    .line 637
    return-void

    .line 644
    :cond_0
    const-string/jumbo v0, "wifi_ap_password"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPassword:Landroid/preference/PreferenceCategory;

    goto :goto_0
.end method

.method private insertMHSChannelLogging(I)V
    .locals 4
    .param p1, "MHSChannel"    # I

    .prologue
    .line 2529
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2530
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2532
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "MHBC"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    if-nez p1, :cond_1

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "AUTO"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    :cond_0
    :goto_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2547
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2528
    return-void

    .line 2534
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2535
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2536
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "3"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2537
    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "4"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2538
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "5"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2539
    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_7

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "6"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2540
    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_8

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "7"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2541
    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "8"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2542
    :cond_9
    const/16 v2, 0x9

    if-ne p1, v2, :cond_a

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "9"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2543
    :cond_a
    const/16 v2, 0xa

    if-ne p1, v2, :cond_b

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "10"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2544
    :cond_b
    const/16 v2, 0xb

    if-ne p1, v2, :cond_c

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "11"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2545
    :cond_c
    const/16 v2, 0x95

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "149"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private insertMHSHiddenSSIDLogging(Z)V
    .locals 4
    .param p1, "isHiddenSSID"    # Z

    .prologue
    .line 2550
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2551
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2552
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2553
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "MHHD"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    if-eqz p1, :cond_0

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "ON"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    :goto_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2557
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2549
    return-void

    .line 2555
    :cond_0
    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "OFF"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertMHSMaxClientLogging(I)V
    .locals 4
    .param p1, "MaxClient"    # I

    .prologue
    .line 2560
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2561
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2563
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "MHMC"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    :cond_0
    :goto_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2575
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2559
    return-void

    .line 2565
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2566
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "3"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2567
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "4"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2568
    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "5"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2569
    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "6"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2570
    :cond_6
    const/4 v2, 0x7

    if-ne p1, v2, :cond_7

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "7"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2571
    :cond_7
    const/16 v2, 0x8

    if-ne p1, v2, :cond_8

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "8"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2572
    :cond_8
    const/16 v2, 0x9

    if-ne p1, v2, :cond_9

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "9"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2573
    :cond_9
    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "10"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertMHSPasswordLogging()V
    .locals 4

    .prologue
    .line 2597
    const-string/jumbo v2, "WifiApSettings"

    const-string/jumbo v3, "insertMHSPasswordLogging"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2599
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2600
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2601
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "MHPW"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2603
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2596
    return-void
.end method

.method private insertMHSSSIDLogging()V
    .locals 4

    .prologue
    .line 2588
    const-string/jumbo v2, "WifiApSettings"

    const-string/jumbo v3, "insertMHSSSIDLogging"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2590
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2591
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2592
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "MHSD"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2594
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2587
    return-void
.end method

.method private insertMHSSecurityLogging(I)V
    .locals 4
    .param p1, "SecurityIndex"    # I

    .prologue
    .line 2578
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2579
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2580
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2581
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "MHSC"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2582
    if-nez p1, :cond_1

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "OPEN"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    :cond_0
    :goto_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2585
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2577
    return-void

    .line 2583
    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    :cond_2
    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "WPA2 PSK"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertMHSShowPasswordLogging(Z)V
    .locals 4
    .param p1, "isCheckedShowPassword"    # Z

    .prologue
    .line 2606
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2607
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2608
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2609
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "MHSP"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    if-eqz p1, :cond_0

    .line 2611
    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "check"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    :goto_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2615
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2605
    return-void

    .line 2613
    :cond_0
    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "uncheck"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isMobileApON()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3026
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 3027
    const-string/jumbo v1, "WifiApSettings"

    const-string/jumbo v2, "Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    return v3

    .line 3030
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 3031
    .local v0, "mWifiApState":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 3032
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 3033
    :cond_2
    return v3
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 2900
    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2901
    const/4 v0, 0x0

    return v0

    .line 2903
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isWifiON()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3037
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 3038
    const-string/jumbo v1, "WifiApSettings"

    const-string/jumbo v2, "Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    return v3

    .line 3041
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 3042
    .local v0, "mWifiState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3043
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 3044
    :cond_2
    return v3
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2983
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2984
    const-string/jumbo v1, "WifiApSettings"

    const-string/jumbo v2, "Wifi Sharing is enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    return v4

    .line 2986
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2987
    const-string/jumbo v1, "WifiApSettings"

    const-string/jumbo v2, "Wifi Sharing is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2988
    return v3

    .line 2990
    :catch_0
    move-exception v0

    .line 2991
    .local v0, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "WifiApSettings"

    const-string/jumbo v2, "Error in getting provider value for WIFI_AP_WIFI_SHARING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    .end local v0    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    return v3
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2047
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2048
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0xc5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2049
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2053
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 2054
    .local v1, "ret":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2055
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2056
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 2057
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v2, :cond_0

    .line 2058
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    .line 2046
    :cond_0
    return-void
.end method

.method private saveTimeoutPreference(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 2245
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 2246
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "SAMSUNG_HOTSPOT"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 2247
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2249
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "CONNECTION_TIMEOUT"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2250
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2252
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2253
    .local v0, "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v2, "wifiap_power_mode_alarm_option"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2254
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2244
    return-void
.end method

.method private setHelpPreference(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2409
    const-string/jumbo v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHelpPreference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    const/4 v0, -0x1

    .line 2411
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2412
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2418
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2419
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setOrder(I)V

    .line 2420
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->addPasswordPreference(I)V

    .line 2421
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2422
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2423
    const/4 v0, 0x0

    .line 2424
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 2434
    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices(Z)V

    .line 2435
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2436
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 2437
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0dd5

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 2438
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2439
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 2440
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2441
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setOrder(I)V

    .line 2443
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    .line 2408
    :goto_0
    return-void

    .line 2445
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_2

    .line 2446
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 2448
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2454
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2455
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setOrder(I)V

    .line 2456
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->addPasswordPreference(I)V

    .line 2457
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2458
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2459
    const/4 v0, 0x0

    .line 2460
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 2470
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b1809

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 2471
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2472
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2473
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_5

    .line 2474
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setMaxClient(I)V

    .line 2482
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2483
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    goto :goto_0

    .line 2476
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setMaxClient(I)V

    goto :goto_1

    .line 2477
    :cond_6
    const-string/jumbo v1, "SPRINT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2478
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getChameleonMaxUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setMaxClient(I)V

    goto :goto_1

    .line 2479
    :cond_7
    const-string/jumbo v1, "TMO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_4

    .line 2480
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setMaxClient(I)V

    goto :goto_1
.end method

.method private setPasswordTitle(Ljava/lang/String;)V
    .locals 6
    .param p1, "passphrase"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 934
    const/4 v1, 0x0

    .line 935
    .local v1, "highlightedPassphrase":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 936
    .local v0, "highlightedColour":I
    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 937
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    .end local v1    # "highlightedPassphrase":Landroid/text/SpannableString;
    const v3, 0x7f0b000f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 938
    .local v1, "highlightedPassphrase":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v3, v5, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 939
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 940
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 933
    :goto_0
    return-void

    .line 942
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 945
    .local v1, "highlightedPassphrase":Landroid/text/SpannableString;
    :cond_2
    const-string/jumbo v3, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 946
    new-instance v1, Landroid/text/SpannableString;

    .end local v1    # "highlightedPassphrase":Landroid/text/SpannableString;
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 947
    .local v1, "highlightedPassphrase":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v3, v5, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 948
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 949
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 962
    :goto_1
    const/4 v2, 0x0

    .line 963
    .local v2, "mPasswordNewTTS":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 964
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTitleDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 968
    .local v2, "mPasswordNewTTS":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setTitleDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 951
    .end local v2    # "mPasswordNewTTS":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 954
    .local v1, "highlightedPassphrase":Landroid/text/SpannableString;
    :cond_4
    new-instance v1, Landroid/text/SpannableString;

    .end local v1    # "highlightedPassphrase":Landroid/text/SpannableString;
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 955
    .local v1, "highlightedPassphrase":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v3, v5, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 956
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 957
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 959
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 966
    .local v2, "mPasswordNewTTS":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTitleDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "mPasswordNewTTS":Ljava/lang/String;
    goto :goto_2
.end method

.method private setRvfMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 2028
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2029
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2030
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2031
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2032
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2033
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2027
    return-void
.end method

.method private setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 2241
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveTimeoutPreference(I)V

    .line 2240
    return-void
.end method

.method private setWifiApConfigData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1991
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1995
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-nez v1, :cond_3

    .line 1998
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveIsShowPassword()V

    .line 1999
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 2000
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_6

    .line 2001
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2015
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueChangedFlag()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2016
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2017
    .local v0, "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2018
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2019
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setTimeoutValueChangedFlag(Z)V

    .line 1990
    .end local v0    # "alarm_intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 1995
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 1996
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveLast2gChannel(I)V

    goto :goto_0

    .line 2009
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_5

    .line 2010
    const-string/jumbo v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiConfig.hiddenSSID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeAllConnectedDevice()V

    .line 2013
    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 2014
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 2022
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    .line 2023
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method private showInvalidActionToast()V
    .locals 3

    .prologue
    const v2, 0x7f0b0ea5

    .line 2730
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 2731
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    .line 2736
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2737
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2729
    :cond_0
    return-void

    .line 2733
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showNoHotspotModeWarningDialog()V
    .locals 3

    .prologue
    .line 2065
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2066
    .local v0, "noHotspotModeWarning":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0eaa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2067
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0e8c

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2068
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$32;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$32;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v2, 0x7f0b14b6

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2075
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$33;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$33;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v2, 0x7f0b14b7

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2088
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$34;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$34;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    .line 2102
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2064
    return-void
.end method

.method private updateConnectedDevices(Z)V
    .locals 38
    .param p1, "check"    # Z

    .prologue
    .line 747
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v14, "connectedDeviceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;>;"
    const/16 v28, 0x0

    .line 750
    .local v28, "staList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v28

    .line 752
    .end local v28    # "staList":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v7, "SAMSUNG_HOTSPOT_CONNECT_TIME"

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v3, v7, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    .line 756
    const/16 v23, 0x0

    .line 757
    .local v23, "macList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v29, "Mac_Addresses "

    .line 758
    .local v29, "tempMacList":Ljava/lang/String;
    const/16 v24, 0x0

    .line 759
    .local v24, "num":I
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempMacList:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempMacList:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 760
    const-string/jumbo v3, "WifiApSettings"

    const-string/jumbo v7, "mTempMacList is equal to stalist"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-void

    .line 763
    :cond_1
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempMacList:Ljava/lang/String;

    .line 764
    if-eqz v28, :cond_5

    .line 765
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v24, v3, 0x12

    .line 766
    const-string/jumbo v3, "WifiApSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "staList.length() = "

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v34, ",  num = "

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v23

    .line 768
    .local v23, "macList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v23, :cond_5

    .line 769
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "macAddress$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 770
    .local v21, "macAddress":Ljava/lang/String;
    const-string/jumbo v3, "WifiApSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "macAddress from macList "

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto :goto_0

    .line 775
    .end local v21    # "macAddress":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, " "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 776
    .local v27, "removeMacs":[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v3, v0

    const/4 v7, 0x1

    if-le v3, v7, :cond_5

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 778
    .local v18, "ed":Landroid/content/SharedPreferences$Editor;
    const/16 v20, 0x1

    .local v20, "m":I
    :goto_1
    move-object/from16 v0, v27

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 779
    aget-object v3, v27, v20

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 778
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 781
    :cond_4
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 786
    .end local v18    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "m":I
    .end local v22    # "macAddress$iterator":Ljava/util/Iterator;
    .end local v23    # "macList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "removeMacs":[Ljava/lang/String;
    :cond_5
    if-nez v24, :cond_7

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_6

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->requestFocus()Z

    .line 790
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 791
    .restart local v18    # "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 792
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 795
    .end local v18    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 796
    if-eqz v28, :cond_12

    if-lez v24, :cond_12

    .line 797
    const/4 v8, 0x0

    .line 798
    .local v8, "buf":Ljava/io/BufferedReader;
    const-string/jumbo v3, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 799
    .local v30, "tok":[Ljava/lang/String;
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    .line 802
    .local v31, "tokLength":I
    const/16 v26, 0x0

    .line 803
    .local v26, "prefConnectMapInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v7, "SAMSUNG_HOTSPOT_CONNECT_TIME"

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v3, v7, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    .line 804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v26

    .line 805
    .local v26, "prefConnectMapInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v7, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x2000

    invoke-direct {v9, v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    .end local v8    # "buf":Ljava/io/BufferedReader;
    .local v9, "buf":Ljava/io/BufferedReader;
    :cond_8
    :goto_2
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "bufReadLine":Ljava/lang/String;
    if-eqz v10, :cond_f

    .line 807
    const-string/jumbo v3, " "

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 808
    .local v15, "dhcpLeaseInfo":[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 809
    array-length v3, v15

    const/4 v7, 0x4

    if-lt v3, v7, :cond_e

    const/4 v3, 0x0

    aget-object v3, v15, v3

    if-eqz v3, :cond_e

    .line 810
    const/4 v3, 0x1

    aget-object v3, v15, v3

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    aget-object v3, v15, v3

    if-eqz v3, :cond_e

    const/4 v3, 0x3

    aget-object v3, v15, v3

    if-eqz v3, :cond_e

    .line 811
    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_e

    aget-object v3, v30, v19

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    aget-object v3, v15, v3

    aget-object v7, v30, v19

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 813
    const/4 v3, 0x3

    aget-object v3, v15, v3

    const-string/jumbo v7, "*"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 814
    const v3, 0x7f0b0dd0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 818
    .local v4, "deviceName":Ljava/lang/String;
    :goto_4
    aget-object v3, v30, v19

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 819
    .local v5, "mac":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v6, v15, v3

    .line 820
    .local v6, "ip":Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v13, v15, v3

    .line 821
    .local v13, "connectTime":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    const-wide/16 v36, 0xe10

    add-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 822
    const/4 v2, 0x0

    .line 823
    .local v2, "device":Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;
    if-eqz v26, :cond_b

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 824
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v2    # "device":Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;
    .local v12, "cMac$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 825
    .local v11, "cMac":Ljava/lang/String;
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 826
    const-string/jumbo v3, "WifiApSettings"

    const-string/jumbo v7, "cMac is equal to mac , so using sharedprefs value"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "device":Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;
    goto :goto_5

    .line 816
    .end local v2    # "device":Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v5    # "mac":Ljava/lang/String;
    .end local v6    # "ip":Ljava/lang/String;
    .end local v11    # "cMac":Ljava/lang/String;
    .end local v12    # "cMac$iterator":Ljava/util/Iterator;
    .end local v13    # "connectTime":Ljava/lang/String;
    :cond_a
    const/4 v3, 0x3

    aget-object v4, v15, v3

    .restart local v4    # "deviceName":Ljava/lang/String;
    goto :goto_4

    .line 831
    .restart local v5    # "mac":Ljava/lang/String;
    .restart local v6    # "ip":Ljava/lang/String;
    .restart local v13    # "connectTime":Ljava/lang/String;
    :cond_b
    if-nez v2, :cond_c

    .line 832
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object v7, v13

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .restart local v2    # "device":Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;
    const-string/jumbo v3, "WifiApSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "new device , so getting from dhcp and putting in sharedprefs and connect system time is1  "

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v7, "SAMSUNG_HOTSPOT_CONNECT_TIME"

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v3, v7, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    .line 835
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPrefConnect:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 836
    .restart local v18    # "ed":Landroid/content/SharedPreferences$Editor;
    aget-object v3, v30, v19

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 837
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 839
    .end local v2    # "device":Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;
    .end local v18    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_c
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    .line 845
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v5    # "mac":Ljava/lang/String;
    .end local v6    # "ip":Ljava/lang/String;
    .end local v10    # "bufReadLine":Ljava/lang/String;
    .end local v13    # "connectTime":Ljava/lang/String;
    .end local v15    # "dhcpLeaseInfo":[Ljava/lang/String;
    .end local v19    # "i":I
    :catch_0
    move-exception v16

    .local v16, "e":Ljava/io/IOException;
    move-object v8, v9

    .line 846
    .end local v9    # "buf":Ljava/io/BufferedReader;
    .end local v26    # "prefConnectMapInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_6
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 851
    if-eqz v8, :cond_d

    .line 852
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 857
    .end local v16    # "e":Ljava/io/IOException;
    :cond_d
    :goto_7
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "wifiApConnectedDevices$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    .line 858
    .local v32, "wifiApConnectedDevices":Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_8

    .line 808
    .end local v32    # "wifiApConnectedDevices":Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;
    .end local v33    # "wifiApConnectedDevices$iterator":Ljava/util/Iterator;
    .restart local v9    # "buf":Ljava/io/BufferedReader;
    .restart local v10    # "bufReadLine":Ljava/lang/String;
    .restart local v15    # "dhcpLeaseInfo":[Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v26    # "prefConnectMapInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 851
    .end local v15    # "dhcpLeaseInfo":[Ljava/lang/String;
    .end local v19    # "i":I
    :cond_f
    if-eqz v9, :cond_10

    .line 852
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_10
    :goto_9
    move-object v8, v9

    .end local v9    # "buf":Ljava/io/BufferedReader;
    .local v8, "buf":Ljava/io/BufferedReader;
    goto :goto_7

    .line 853
    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v9    # "buf":Ljava/io/BufferedReader;
    :catch_1
    move-exception v16

    .line 854
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 847
    .end local v9    # "buf":Ljava/io/BufferedReader;
    .end local v10    # "bufReadLine":Ljava/lang/String;
    .end local v16    # "e":Ljava/io/IOException;
    .end local v26    # "prefConnectMapInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v8, "buf":Ljava/io/BufferedReader;
    :catch_2
    move-exception v17

    .line 848
    .end local v8    # "buf":Ljava/io/BufferedReader;
    .local v17, "e":Ljava/lang/NumberFormatException;
    :goto_a
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 851
    if-eqz v8, :cond_d

    .line 852
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    .line 853
    :catch_3
    move-exception v16

    .line 854
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 853
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v16

    .line 854
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 849
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 851
    :goto_b
    if-eqz v8, :cond_11

    .line 852
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 849
    :cond_11
    :goto_c
    throw v3

    .line 853
    :catch_5
    move-exception v16

    .line 854
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 861
    .end local v16    # "e":Ljava/io/IOException;
    .end local v30    # "tok":[Ljava/lang/String;
    .end local v31    # "tokLength":I
    :cond_12
    new-instance v25, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 862
    .local v25, "pf":Landroid/preference/Preference;
    const v3, 0x7f0b0dda

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 863
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceCategory;->setSelectable(Z)V

    .line 746
    .end local v25    # "pf":Landroid/preference/Preference;
    :cond_13
    return-void

    .line 849
    .restart local v9    # "buf":Ljava/io/BufferedReader;
    .restart local v26    # "prefConnectMapInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v30    # "tok":[Ljava/lang/String;
    .restart local v31    # "tokLength":I
    :catchall_1
    move-exception v3

    move-object v8, v9

    .end local v9    # "buf":Ljava/io/BufferedReader;
    .local v8, "buf":Ljava/io/BufferedReader;
    goto :goto_b

    .line 845
    .end local v26    # "prefConnectMapInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v8, "buf":Ljava/io/BufferedReader;
    :catch_6
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    .line 847
    .end local v8    # "buf":Ljava/io/BufferedReader;
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v9    # "buf":Ljava/io/BufferedReader;
    .restart local v26    # "prefConnectMapInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_7
    move-exception v17

    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    move-object v8, v9

    .end local v9    # "buf":Ljava/io/BufferedReader;
    .local v8, "buf":Ljava/io/BufferedReader;
    goto :goto_a
.end method

.method private updateOptionsMenu()V
    .locals 2

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3010
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3011
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3008
    :cond_0
    :goto_0
    return-void

    .line 3014
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3015
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 3016
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b0d6f

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 3018
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 3019
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b0d70

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 9
    .param p1, "showIcon"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1188
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 1190
    .local v0, "mWidth":I
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    .line 1191
    if-eqz p1, :cond_7

    .line 1192
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f020161

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1193
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1199
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_5

    .line 1200
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v5, 0xd

    if-ne v2, v5, :cond_b

    .line 1201
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    .line 1202
    .local v1, "wifiApIsEnabled":Z
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v2, :cond_2

    .line 1203
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1205
    :cond_2
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_3

    .line 1206
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinap:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1207
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinclient:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1215
    :cond_3
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v2, :cond_4

    .line 1216
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v2, v7, :cond_8

    move v2, v3

    :goto_1
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1218
    :cond_4
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_5

    .line 1219
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinap:Landroid/view/MenuItem;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v2, v7, :cond_9

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1220
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinclient:Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v5, v7, :cond_a

    :goto_3
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1233
    .end local v1    # "wifiApIsEnabled":Z
    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_6

    .line 1234
    if-eqz p1, :cond_d

    .line 1235
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v3, 0x7f0203e0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1236
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1186
    :cond_6
    :goto_5
    return-void

    .line 1195
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1196
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .restart local v1    # "wifiApIsEnabled":Z
    :cond_8
    move v2, v4

    .line 1216
    goto :goto_1

    :cond_9
    move v2, v4

    .line 1219
    goto :goto_2

    :cond_a
    move v3, v4

    .line 1220
    goto :goto_3

    .line 1224
    .end local v1    # "wifiApIsEnabled":Z
    :cond_b
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v2, :cond_c

    .line 1225
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1227
    :cond_c
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_5

    .line 1228
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinap:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1229
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinclient:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 1238
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1239
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5
.end method

.method private updateStatus()V
    .locals 8

    .prologue
    .line 888
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    if-eqz v0, :cond_1

    .line 891
    :try_start_0
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->showSummary()V

    .line 894
    :cond_0
    const-string/jumbo v0, "SPRINT"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 895
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 896
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string/jumbo v1, "#499ebd"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string/jumbo v5, "WPA"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 916
    .local v7, "passphrase":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setPasswordTitle(Ljava/lang/String;)V

    .line 887
    .end local v7    # "passphrase":Ljava/lang/String;
    :cond_2
    return-void

    .line 897
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 898
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string/jumbo v1, "#499ebd"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string/jumbo v5, "WPA2"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 910
    :catch_0
    move-exception v6

    .line 911
    .local v6, "e":Ljava/util/UnknownFormatConversionException;
    const-string/jumbo v0, "WifiApSettings"

    invoke-virtual {v6}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 900
    .end local v6    # "e":Ljava/util/UnknownFormatConversionException;
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string/jumbo v1, "#499ebd"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 903
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 904
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 903
    if-eqz v0, :cond_7

    .line 905
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string/jumbo v1, "#499ebd"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 907
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    const-string/jumbo v1, "#499ebd"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setHowToView(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 2783
    const/4 v1, 0x0

    .line 2784
    .local v1, "trimedPasswordLength":I
    const/4 v0, 0x1

    .line 2786
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2787
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2790
    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    .line 2791
    :goto_0
    const/4 v0, 0x0

    .line 2794
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    .line 2795
    const/4 v3, -0x1

    .line 2794
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2782
    return-void

    .line 2790
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method private warnForHiddenNetwork()V
    .locals 4

    .prologue
    .line 1918
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1919
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0ea7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1920
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1921
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$26;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v3, 0x7f0b0438

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1934
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$27;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$27;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v3, 0x7f0b107a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1943
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$28;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$28;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1952
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1953
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1917
    return-void
.end method

.method private warnForOpenNetwork()V
    .locals 4

    .prologue
    .line 1957
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1958
    .local v0, "mbuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0ea6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1959
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1960
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$29;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$29;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v3, 0x7f0b0438

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1968
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$30;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$30;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v3, 0x7f0b107a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1977
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$31;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$31;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1986
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1987
    .local v1, "mdialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1956
    return-void
.end method


# virtual methods
.method createApConfigWithCurrentSsid(Ljava/lang/String;)V
    .locals 7
    .param p1, "newSsid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2842
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2843
    .local v2, "mNewWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iput-object p1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2844
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 2845
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2846
    .local v0, "configDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0da5

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2847
    const v3, 0x7f0b0da6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2848
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2849
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$37;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$37;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V

    const v4, 0x7f0b0434

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2866
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$38;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$38;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v4, 0x7f0b107a

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2873
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$39;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$39;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2880
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    .line 2881
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigDialogCreate:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 2841
    .end local v0    # "configDialog":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 2884
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2886
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2890
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2891
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 2892
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2893
    sput-boolean v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 2894
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 2887
    :catch_0
    move-exception v1

    .line 2888
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public createHelpStep2Dialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2692
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 2693
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 2694
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 2696
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-nez v1, :cond_1

    .line 2697
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040130

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2698
    .local v0, "bView":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 2699
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 2700
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 2701
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 2702
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 2703
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 2704
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    .line 2691
    .end local v0    # "bView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected dismissHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V
    .locals 0
    .param p1, "helpDialog"    # Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .prologue
    .line 2726
    invoke-virtual {p1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 2725
    return-void
.end method

.method public enableSwitchBar(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 2748
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 2746
    :cond_0
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x10

    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 438
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 439
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 440
    const-string/jumbo v9, "airplane_mode_on"

    .line 439
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_17

    const/4 v1, 0x1

    .line 441
    .local v1, "isAirplaneMode":Z
    :goto_0
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v6, :cond_0

    .line 442
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$12;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 457
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    .line 458
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v6, :cond_1

    const-string/jumbo v6, "TMO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 459
    :cond_1
    const-string/jumbo v6, "NEWCO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 458
    if-eqz v6, :cond_3

    .line 460
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v9, 0x7f02049d

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setIcon(I)V

    .line 463
    :cond_3
    const-string/jumbo v6, "MTR"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 464
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v6, :cond_4

    .line 465
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    const-string/jumbo v9, "SAMSUNG_HOTSPOT"

    invoke-virtual {v6, v9, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 466
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "DONT_DISPLAY_MPCS_WARNING"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_18

    move v0, v7

    .line 467
    .local v0, "dontDisplayMpcsWarning":Z
    :goto_1
    if-nez v0, :cond_5

    .line 468
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 474
    .end local v0    # "dontDisplayMpcsWarning":Z
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    if-nez v6, :cond_6

    .line 475
    new-instance v6, Landroid/widget/Switch;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v9}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    .line 477
    :cond_6
    const-string/jumbo v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 478
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 479
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 481
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    .line 482
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->misLightTheme:Z

    .line 483
    iput-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    .line 489
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/settings/SettingsActivity;

    .line 490
    .local v4, "sActivity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 491
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v6, :cond_19

    .line 492
    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-direct {v6, v4, v9, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 496
    :goto_2
    const/4 v2, 0x0

    .line 497
    .local v2, "isnosimdialogshown":Z
    if-eqz p1, :cond_7

    .line 498
    const-string/jumbo v6, "nosimwarningdialog"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 500
    .end local v2    # "isnosimdialogshown":Z
    :cond_7
    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v6, :cond_8

    .line 501
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 503
    :cond_8
    const/4 v5, 0x0

    .line 504
    .local v5, "warnWifiDisableDialogshowing":Z
    if-eqz p1, :cond_9

    .line 505
    const-string/jumbo v6, "warnWifiDisableDialogshow"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 507
    .end local v5    # "warnWifiDisableDialogshowing":Z
    :cond_9
    if-eqz v5, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v6, :cond_a

    .line 508
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v6, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 510
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    .line 511
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00df

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 510
    invoke-virtual {v6, v8, v8, v9, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 512
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v12, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 520
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v6, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 522
    const-string/jumbo v6, "SPRINT"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 523
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v9, 0x7f0b0e17

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 526
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    if-nez v6, :cond_c

    .line 527
    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6, p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    .line 529
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    if-nez v6, :cond_d

    .line 530
    new-instance v6, Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    .line 531
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 532
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordPreference:Landroid/preference/Preference;

    const v9, 0x7f0b11fe

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 545
    :cond_d
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    if-nez v6, :cond_e

    .line 546
    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    .line 548
    :cond_e
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    if-nez v6, :cond_f

    .line 549
    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    .line 551
    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setEnabled(Z)V

    .line 552
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setSelectable(Z)V

    .line 553
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setSelectable(Z)V

    .line 558
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHasOptionsMenu(Z)V

    .line 560
    const-string/jumbo v6, "MTR"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 561
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 562
    .local v3, "netType":I
    const/16 v6, 0xd

    if-eq v3, v6, :cond_10

    .line 564
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    .line 565
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 566
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 570
    .end local v3    # "netType":I
    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    .line 575
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v6, :cond_13

    const-string/jumbo v6, "VZW"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 576
    const-string/jumbo v6, "SPRINT"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 575
    if-eqz v6, :cond_13

    .line 577
    :cond_11
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v6, :cond_13

    .line 578
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v6, :cond_1e

    .line 579
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 580
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isSimCheck()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v9, 0x5

    if-eq v6, v9, :cond_12

    const-string/jumbo v6, "READY"

    const-string/jumbo v9, "gsm.sim.state"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 583
    :cond_12
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 584
    if-eqz v1, :cond_1b

    .line 585
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0361

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 605
    :cond_13
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 606
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isWifiSharingEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 609
    :cond_14
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 610
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 626
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 627
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 629
    :cond_16
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 437
    return-void

    .line 439
    .end local v1    # "isAirplaneMode":Z
    .end local v4    # "sActivity":Lcom/android/settings/SettingsActivity;
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "isAirplaneMode":Z
    goto/16 :goto_0

    :cond_18
    move v0, v8

    .line 466
    goto/16 :goto_1

    .line 494
    .restart local v4    # "sActivity":Lcom/android/settings/SettingsActivity;
    :cond_19
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6}, Lcom/android/settings/widget/SwitchBar;->show()V

    goto/16 :goto_2

    .line 582
    :cond_1a
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_3

    .line 589
    :cond_1b
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v6, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_3

    .line 592
    :cond_1c
    if-eqz v1, :cond_1d

    .line 593
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0361

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 596
    :cond_1d
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_3

    .line 600
    :cond_1e
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2136
    const-string/jumbo v2, "WifiApSettings"

    const-string/jumbo v3, "WifiApSettings onActivityResult"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    if-ne v6, p1, :cond_1

    .line 2138
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    .line 2135
    :cond_0
    :goto_0
    return-void

    .line 2140
    :cond_1
    if-nez p1, :cond_0

    .line 2141
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 2142
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v2, :cond_2

    return-void

    .line 2155
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0

    .line 2157
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v2, :cond_4

    return-void

    .line 2177
    :cond_4
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->enableSwitchBar(Z)V

    .line 2178
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateSwitchBarText(Z)V

    .line 2179
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 2180
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 2181
    sget-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBixbyMobileAp:Z

    if-eqz v2, :cond_5

    .line 2182
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Hotspot"

    const-string/jumbo v4, "ProvisioningFail"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "HotspotSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2184
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2185
    sput-boolean v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBixbyMobileAp:Z

    .line 2190
    :cond_5
    const/4 v1, 0x0

    .line 2192
    .local v1, "wifiSavedState":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2196
    :goto_1
    if-ne v1, v6, :cond_0

    .line 2197
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2198
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2193
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 1172
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismissSpinnerPopup()V

    .line 1176
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_2

    .line 1177
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_4

    .line 1178
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 1183
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1170
    return-void

    .line 1172
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1179
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    .line 1180
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 359
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 361
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    .line 364
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 371
    const-string/jumbo v1, "fromHelp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    .line 372
    const-string/jumbo v1, "fromHelp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 376
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 377
    const-string/jumbo v1, "mIsFromHelp"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    .line 379
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_4

    .line 380
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    .line 410
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 411
    const-string/jumbo v1, "SPRINT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 410
    if-eqz v1, :cond_7

    .line 412
    :cond_3
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 413
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    .line 415
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    .line 423
    :cond_4
    :goto_1
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 424
    const-string/jumbo v1, "WifiApSettings"

    const-string/jumbo v2, "mDefaultTempPassword is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    invoke-direct {p0, v2, v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x1

    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRandomSymbol(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDefaultTempPassword:Ljava/lang/String;

    .line 428
    :cond_5
    const-string/jumbo v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFromHelp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    .line 431
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    .line 432
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->initMemberVar()V

    .line 433
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 358
    return-void

    .line 365
    :cond_6
    const-string/jumbo v1, "SPRINT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    sget-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    .line 367
    sput-boolean v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    goto/16 :goto_0

    .line 418
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    .line 419
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    goto/16 :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 28
    .param p1, "dialogId"    # I

    .prologue
    .line 1437
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 1438
    .local v13, "ctx":Landroid/content/Context;
    new-instance v13, Landroid/view/ContextThemeWrapper;

    .end local v13    # "ctx":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0233

    invoke-direct {v13, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1441
    .restart local v13    # "ctx":Landroid/content/Context;
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v13, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    .line 1444
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 1445
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1446
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_0

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->dismissHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    .line 1452
    :cond_0
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1454
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    return-object v2

    .line 1451
    :cond_1
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    goto :goto_0

    .line 1457
    :cond_2
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1459
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v22

    .line 1461
    .local v22, "timeoutItems":[Ljava/lang/CharSequence;
    new-instance v21, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1464
    .local v21, "timeoutDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0db7

    .line 1463
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1465
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$15;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1463
    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1501
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$16;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v4, 0x7f0b107a

    .line 1463
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1506
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    .line 1508
    const v2, 0x7f040350

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 1509
    .local v23, "timeout_desc_view":Landroid/view/View;
    const v2, 0x7f11018c

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1510
    .local v24, "wifiApTimeoutMessage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0dbf

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v18

    .line 1512
    .local v18, "lv":Landroid/widget/ListView;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTimeoutDlg:Landroid/app/AlertDialog;

    return-object v2

    .line 1515
    .end local v18    # "lv":Landroid/widget/ListView;
    .end local v21    # "timeoutDialog":Landroid/app/AlertDialog$Builder;
    .end local v22    # "timeoutItems":[Ljava/lang/CharSequence;
    .end local v23    # "timeout_desc_view":Landroid/view/View;
    .end local v24    # "wifiApTimeoutMessage":Landroid/widget/TextView;
    :cond_3
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 1516
    const-string/jumbo v2, "WifiApSettings"

    const-string/jumbo v3, "create dialog  DIALOG_OPEN_SECURITY_WARNING"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1518
    .local v9, "OpenSecurityWarningDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f040348

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 1519
    .local v14, "customView":Landroid/view/View;
    invoke-virtual {v9, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1520
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_4

    .line 1521
    const v2, 0x7f1107a9

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1523
    :cond_4
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v3, 0x7f0b0434

    invoke-virtual {v9, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1532
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v3, 0x7f0b107a

    invoke-virtual {v9, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1540
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 1541
    .end local v9    # "OpenSecurityWarningDialog":Landroid/app/AlertDialog$Builder;
    .end local v14    # "customView":Landroid/view/View;
    :cond_5
    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 1542
    const v2, 0x7f040347

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    .line 1543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f1107a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    .line 1544
    .local v19, "not_show_again":Landroid/widget/CheckBox;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1545
    .local v11, "b":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b102b

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1547
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$19;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$19;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/widget/CheckBox;)V

    const v3, 0x7f0b14b6

    invoke-virtual {v11, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1559
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 1561
    .end local v11    # "b":Landroid/app/AlertDialog$Builder;
    .end local v19    # "not_show_again":Landroid/widget/CheckBox;
    :cond_6
    const/16 v2, 0x38

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 1562
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v2, :cond_e

    .line 1564
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsApDialog:Landroid/app/AlertDialog;

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsApDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 1571
    :cond_7
    const/16 v2, 0x39

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 1572
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_e

    .line 1574
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsApDialog:Landroid/app/AlertDialog;

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsApDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 1580
    :cond_8
    const/16 v2, 0x3a

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    .line 1581
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_e

    .line 1583
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsApDialog:Landroid/app/AlertDialog;

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsApDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 1589
    :cond_9
    const/16 v2, 0x3b

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 1590
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_e

    .line 1591
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPinDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPinDialog:Lcom/samsung/android/settings/wifi/mobileap/PinDialog;

    .line 1592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPinDialog:Lcom/samsung/android/settings/wifi/mobileap/PinDialog;

    return-object v2

    .line 1594
    :cond_a
    const/16 v2, 0x9

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 1595
    const-string/jumbo v2, "WifiApSettings"

    const-string/jumbo v3, "create dialog  DIALOG_MODIFY_PASSWORD"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 1598
    .local v15, "dialogInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldPassword:Ljava/lang/String;

    .line 1599
    const v2, 0x7f040349

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 1601
    .restart local v14    # "customView":Landroid/view/View;
    const v2, 0x7f110783

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordErrorText:Landroid/widget/TextView;

    .line 1602
    const v2, 0x7f11072a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    const v3, 0x7f0b000f

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Lcom/android/settings/Utils$EmojiInputFilter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;

    const/16 v3, 0x91

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1611
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1612
    .local v10, "PasswordModify":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0d5c

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1613
    invoke-virtual {v10, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1615
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$20;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$20;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1614
    const v3, 0x7f0b121d

    invoke-virtual {v10, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1627
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$21;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$21;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1626
    const v3, 0x7f0b121f

    invoke-virtual {v10, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1633
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    .line 1634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 1637
    .end local v10    # "PasswordModify":Landroid/app/AlertDialog$Builder;
    .end local v14    # "customView":Landroid/view/View;
    .end local v15    # "dialogInflater":Landroid/view/LayoutInflater;
    :cond_b
    const/16 v2, 0xa

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 1638
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1639
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1640
    .local v12, "cr":Landroid/content/ContentResolver;
    const/16 v20, 0x2

    .line 1641
    .local v20, "selectCheckbox":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v26

    .line 1643
    .local v26, "wifi_sharing_items":[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1644
    new-instance v25, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1646
    .local v25, "wifiSharing":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0d6e

    .line 1645
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1647
    const v3, 0x7f0b0d5d

    .line 1645
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1648
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v4, 0x7f0b107a

    .line 1645
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1656
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$23;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$23;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/ContentResolver;)V

    const v4, 0x7f0b0438

    .line 1645
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1663
    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingDlg:Landroid/app/AlertDialog;

    .line 1717
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingDlg:Landroid/app/AlertDialog;

    return-object v2

    .line 1666
    .end local v25    # "wifiSharing":Landroid/app/AlertDialog$Builder;
    :cond_c
    :try_start_0
    const-string/jumbo v2, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wifi Sharing provider value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_wifi_sharing"

    const/4 v5, 0x1

    invoke-static {v12, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v12, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 1668
    const/16 v20, 0x1

    .line 1674
    :cond_d
    :goto_2
    new-instance v25, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1676
    .restart local v25    # "wifiSharing":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0d60

    .line 1675
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1677
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$24;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$24;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/ContentResolver;)V

    .line 1675
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1706
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$25;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    const v4, 0x7f0b107a

    .line 1675
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1711
    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingDlg:Landroid/app/AlertDialog;

    .line 1713
    const v2, 0x7f040355

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    .line 1714
    .local v27, "wifisharing_desc_view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v18

    .line 1715
    .restart local v18    # "lv":Landroid/widget/ListView;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 1670
    .end local v18    # "lv":Landroid/widget/ListView;
    .end local v25    # "wifiSharing":Landroid/app/AlertDialog$Builder;
    .end local v27    # "wifisharing_desc_view":Landroid/view/View;
    :catch_0
    move-exception v16

    .line 1671
    .local v16, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in getting provider value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1720
    .end local v12    # "cr":Landroid/content/ContentResolver;
    .end local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    .end local v20    # "selectCheckbox":I
    .end local v26    # "wifi_sharing_items":[Ljava/lang/CharSequence;
    :cond_e
    const/4 v2, 0x0

    return-object v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1093
    const v6, 0x7f0b0db8

    invoke-interface {p1, v8, v7, v8, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    .line 1094
    const v6, 0x7f0b0db6

    invoke-static {v6}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v6

    invoke-interface {p1, v8, v10, v8, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    .line 1096
    sget-boolean v6, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v6, :cond_0

    .line 1097
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v5

    .line 1098
    .local v5, "wifiApIsEnabled":Z
    const/4 v6, 0x6

    const v9, 0x7f0b11cc

    invoke-interface {p1, v8, v6, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    .line 1099
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    const v9, 0x7f02015c

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1100
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v6, v10, :cond_6

    move v6, v7

    :goto_0
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1102
    .end local v5    # "wifiApIsEnabled":Z
    :cond_0
    sget-boolean v6, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v6, :cond_1

    .line 1103
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v5

    .line 1104
    .restart local v5    # "wifiApIsEnabled":Z
    const/4 v6, 0x7

    const v9, 0x7f0b0e15

    invoke-interface {p1, v8, v6, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinap:Landroid/view/MenuItem;

    .line 1105
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinap:Landroid/view/MenuItem;

    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v6, v10, :cond_7

    move v6, v7

    :goto_1
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1106
    const/16 v6, 0x8

    const v9, 0x7f0b0e16

    invoke-interface {p1, v8, v6, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinclient:Landroid/view/MenuItem;

    .line 1107
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinclient:Landroid/view/MenuItem;

    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v6, v10, :cond_8

    move v6, v7

    :goto_2
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1110
    .end local v5    # "wifiApIsEnabled":Z
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1111
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1113
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v6, :cond_2

    const-string/jumbo v6, "TMO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1135
    :cond_2
    :goto_3
    const-string/jumbo v6, "VZW"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v6, :cond_a

    .line 1152
    :cond_3
    :goto_4
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v6, :cond_4

    .line 1153
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v12, :cond_b

    :goto_5
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 1155
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1156
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenu()V

    .line 1158
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1091
    return-void

    .restart local v5    # "wifiApIsEnabled":Z
    :cond_6
    move v6, v8

    .line 1100
    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 1105
    goto :goto_1

    :cond_8
    move v6, v8

    .line 1107
    goto :goto_2

    .line 1113
    .end local v5    # "wifiApIsEnabled":Z
    :cond_9
    const-string/jumbo v6, "NEWCO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1114
    const v6, 0x7f0b0db7

    invoke-interface {p1, v8, v12, v8, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 1115
    .local v4, "menuTimeOut":Landroid/view/MenuItem;
    const v6, 0x7f0203e2

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1116
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 1136
    .end local v4    # "menuTimeOut":Landroid/view/MenuItem;
    :cond_a
    const/4 v2, 0x0

    .line 1138
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v9, "com.samsung.helphub"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1140
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3

    .line 1141
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.helphub.HELP"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v1, "in":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1143
    const/4 v6, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    const v11, 0x7f0b043c

    invoke-interface {p1, v6, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1144
    .local v3, "menuHelp":Landroid/view/MenuItem;
    const v6, 0x7f0201af

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1145
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1148
    .end local v1    # "in":Landroid/content/Intent;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "menuHelp":Landroid/view/MenuItem;
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b
    move v7, v8

    .line 1153
    goto :goto_5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1074
    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mApDeviceInfoDialogShow:Z

    .line 1075
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    .line 1076
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1081
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1085
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 1087
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 1073
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1068
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 1067
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 1260
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1261
    const-string/jumbo v0, "WifiApSettings"

    const-string/jumbo v3, "WifiApSettings is null. Make WeakReference again for WifiApSettings"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    .line 1264
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-eqz v0, :cond_2

    .line 1269
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1393
    :pswitch_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1265
    :cond_2
    const-string/jumbo v0, "WifiApSettings"

    const-string/jumbo v1, "WifiApSettings is not acivated. Is this function called after onPause?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return v13

    .line 1271
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1278
    :goto_0
    return v13

    .line 1272
    :cond_3
    invoke-virtual {p0, v13}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 1273
    iput-boolean v13, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 1274
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 1275
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1276
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    goto :goto_0

    .line 1280
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 1282
    return v13

    .line 1284
    :pswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_7

    .line 1285
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_4

    .line 1286
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    .line 1288
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1291
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1292
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    .line 1293
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showInvalidActionToast()V

    .line 1304
    :cond_5
    :goto_2
    return v13

    .line 1289
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showInvalidActionToast()V

    goto :goto_1

    .line 1296
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_8

    .line 1297
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1298
    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1299
    const v3, 0x7f0b0db8

    const/16 v6, 0x64

    move-object v4, v2

    move-object v5, p0

    .line 1297
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 1301
    :cond_8
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p0

    move v7, v6

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1307
    :pswitch_4
    const/4 v10, 0x0

    .line 1310
    .local v10, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.helphub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 1311
    .local v10, "info":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_a

    iget v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1312
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.helphub.HELP"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v11, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v0, "helphub:item"

    const-string/jumbo v1, "tethering_vzw_mhs"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->startActivity(Landroid/content/Intent;)V

    .line 1330
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "pickIntent":Landroid/content/Intent;
    :cond_9
    :goto_3
    return v13

    .line 1315
    .restart local v10    # "info":Landroid/content/pm/PackageInfo;
    :cond_a
    if-eqz v10, :cond_9

    iget v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    if-ne v0, v4, :cond_9

    .line 1323
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.helphub.HELP"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    .restart local v11    # "pickIntent":Landroid/content/Intent;
    const-string/jumbo v0, "helphub:appid"

    const-string/jumbo v1, "tethering"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1327
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "pickIntent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 1328
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 1335
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_5
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v0, :cond_b

    .line 1336
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v12

    .line 1337
    .local v12, "wifiApIsEnabled":Z
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1338
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpsSwitch:Landroid/view/MenuItem;

    if-eqz v12, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v4, :cond_c

    move v0, v13

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1339
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    .line 1340
    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 1342
    .end local v12    # "wifiApIsEnabled":Z
    :cond_b
    return v13

    .restart local v12    # "wifiApIsEnabled":Z
    :cond_c
    move v0, v1

    .line 1338
    goto :goto_4

    .line 1344
    .end local v12    # "wifiApIsEnabled":Z
    :pswitch_6
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v0, :cond_e

    .line 1345
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v12

    .line 1346
    .restart local v12    # "wifiApIsEnabled":Z
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinap:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1347
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinap:Landroid/view/MenuItem;

    if-eqz v12, :cond_d

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v3, v4, :cond_d

    move v1, v13

    :cond_d
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1348
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    .line 1349
    const-string/jumbo v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GOT THE VALUE MENU_ID_WPS_PIN_AP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/16 v0, 0x39

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 1352
    .end local v12    # "wifiApIsEnabled":Z
    :cond_e
    return v13

    .line 1354
    :pswitch_7
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v0, :cond_10

    .line 1355
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v12

    .line 1356
    .restart local v12    # "wifiApIsEnabled":Z
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinap:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1357
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWpspinap:Landroid/view/MenuItem;

    if-eqz v12, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v2, v4, :cond_f

    move v1, v13

    :cond_f
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1358
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 1360
    .end local v12    # "wifiApIsEnabled":Z
    :cond_10
    return v13

    .line 1391
    :pswitch_8
    return v13

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1043
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1049
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1053
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    const v1, 0x7f11072a

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    .line 1060
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 1063
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "HotspotSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 1042
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 659
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 660
    .local v1, "enable":Z
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 661
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 662
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 671
    return v3

    .line 666
    :cond_0
    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiSharingSwitchPreference:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b0d70

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 668
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->checkWifiMobileApStatus()V

    .line 669
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    if-ne p2, v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->onClickItem(Landroid/net/wifi/WifiConfiguration;)V

    .line 1401
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1166
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1162
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 973
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 974
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "HotspotSettings"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 975
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 976
    const-string/jumbo v2, "airplane_mode_on"

    .line 975
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    .line 977
    .local v0, "isAirplaneMode":Z
    :goto_0
    sput-boolean v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 978
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 979
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 981
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 982
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices(Z)V

    .line 985
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 986
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_2

    .line 987
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 988
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 989
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 991
    :cond_3
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 992
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    .line 994
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 995
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismissSpinnerPopup()V

    .line 998
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    .line 1000
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    if-lez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1001
    const-string/jumbo v1, "SPRINT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1000
    if-eqz v1, :cond_7

    .line 1002
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v6, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1005
    :cond_7
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    if-lez v1, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-nez v1, :cond_8

    .line 1006
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V

    .line 1007
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 1009
    :cond_8
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRvfMode:I

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-eqz v1, :cond_9

    .line 1010
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1011
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 1013
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateCurrent(Landroid/net/wifi/WifiConfiguration;)V

    .line 1014
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1015
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSoftInput()V

    .line 1017
    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1018
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_b

    .line 1019
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1021
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->finish()V

    .line 1024
    :cond_b
    if-eqz v0, :cond_c

    .line 1025
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0361

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1028
    :cond_c
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    if-eqz v1, :cond_d

    .line 1029
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    const v2, 0x7f11072a

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1030
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordHasFocus:Z

    .line 1032
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1033
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 972
    :cond_e
    return-void

    .line 975
    .end local v0    # "isAirplaneMode":Z
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "isAirplaneMode":Z
    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1246
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1247
    const-string/jumbo v2, "mIsFromHelp"

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1248
    const/4 v0, 0x0

    .line 1249
    .local v0, "nosimdialog":Z
    const/4 v1, 0x0

    .line 1250
    .local v1, "warnWifiDisabledialog":Z
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v2, :cond_0

    .line 1251
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DialogShowing(I)Z

    move-result v0

    .line 1252
    .local v0, "nosimdialog":Z
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DialogShowing(I)Z

    move-result v1

    .line 1254
    .end local v0    # "nosimdialog":Z
    .end local v1    # "warnWifiDisabledialog":Z
    :cond_0
    const-string/jumbo v2, "warnWifiDisableDialogshow"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1255
    const-string/jumbo v2, "nosimwarningdialog"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1245
    return-void
.end method

.method public removeAllConnectedDevice()V
    .locals 8

    .prologue
    .line 2339
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v2

    .line 2340
    .local v2, "staList":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2341
    .local v1, "num":I
    if-eqz v2, :cond_0

    .line 2342
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v1, v5, 0x12

    .line 2343
    const-string/jumbo v5, "WifiApSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeAllConnectedDevice(), num = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    :cond_0
    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 2347
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2348
    .local v3, "tok":[Ljava/lang/String;
    array-length v4, v3

    .line 2349
    .local v4, "tokLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 2350
    aget-object v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeSelectedDevice(Ljava/lang/String;)V

    .line 2349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2338
    .end local v0    # "i":I
    .end local v3    # "tok":[Ljava/lang/String;
    .end local v4    # "tokLength":I
    :cond_1
    return-void
.end method

.method public removeSelectedDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 2330
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2331
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2332
    .local v0, "b":Landroid/os/Bundle;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2333
    const-string/jumbo v2, "mac"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2335
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2329
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2362
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2363
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v3, "wifi_ap_show_passwd"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    if-eq v4, v3, :cond_0

    .line 2364
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->insertMHSShowPasswordLogging(Z)V

    .line 2365
    :cond_0
    const-string/jumbo v3, "wifi_ap_show_passwd"

    .line 2366
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2365
    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2360
    return-void

    :cond_1
    move v3, v2

    .line 2363
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2366
    goto :goto_1
.end method

.method public saveLast2gChannel(I)V
    .locals 2
    .param p1, "channel"    # I

    .prologue
    .line 2356
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2357
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_ap_last_2g_channel"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2355
    return-void
.end method

.method protected showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V
    .locals 3
    .param p1, "helpDialog"    # Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .prologue
    .line 2709
    if-nez p1, :cond_0

    .line 2710
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    .line 2711
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 2713
    :cond_0
    if-eqz p1, :cond_2

    .line 2714
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 2715
    .local v0, "orientation":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2716
    invoke-virtual {p1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2717
    .local v1, "window":Landroid/view/Window;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 2718
    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2719
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2721
    .end local v1    # "window":Landroid/view/Window;
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 2708
    .end local v0    # "orientation":I
    :cond_2
    return-void
.end method

.method public updateSwitchBarText(Z)V
    .locals 1
    .param p1, "isOn"    # Z

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 2742
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 2740
    :cond_0
    return-void
.end method
