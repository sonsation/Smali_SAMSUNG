.class public abstract Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.super Lcom/samsung/android/settings/SecRestrictedSettingsFragment;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;
    }
.end annotation


# static fields
.field protected static final DBG:Z

.field public static goToWebPageHTTPResponse:I

.field public static goToWebPageLinkClicked:Z

.field public static goToWebPageLinkViewed:Z

.field public static mWpsInProgress:Z


# instance fields
.field private final SECURE_WIFI_STATE_URI:Landroid/net/Uri;

.field private helpMenuCheck:Z

.field protected mAddPreference:Landroid/preference/Preference;

.field private mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

.field private mBackgroundResId:I

.field private mBgThread:Landroid/os/HandlerThread;

.field private mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

.field private final mCheckHttpResponseHandler:Landroid/os/Handler;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCricketClickListener:Landroid/view/View$OnClickListener;

.field private mCricketManagerHeader:Landroid/view/View;

.field protected mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmLastStateID:Ljava/lang/String;

.field private mEmParam:Ljava/lang/String;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mGateway:Ljava/lang/String;

.field private mHandlerForKTCM:Landroid/os/Handler;

.field protected mHasNavBar:Z

.field protected mInManageNetwork:Z

.field private mInOffloadDialog:Z

.field private mInPickerDialog:Z

.field protected mInSecPickerActivity:Z

.field protected mInSetupWizardWifiScreen:Z

.field protected mIsEmerMode:Z

.field private mIsFromLocation:Z

.field private mIsShouldSendResult:Z

.field private mIsSupportSSecure:Z

.field private mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

.field private mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

.field private mListAnimationView:Landroid/view/View;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOpenSecurity:I

.field private mOpenSsid:Ljava/lang/String;

.field private mP2pSupported:Z

.field private mRequestConnectionByUser:Z

.field private mRunnableForKTCM:Ljava/lang/Runnable;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScrollTimer:J

.field private mSecureWifiDivider:Landroid/widget/ImageView;

.field private mSecureWifiObserver:Landroid/database/ContentObserver;

.field private mSecureWifiSwitch:Landroid/widget/Switch;

.field private mSecureWifiSwitchView:Landroid/widget/LinearLayout;

.field protected mShowNotInRagededAp:Z

.field private mShowRetryDialog:Z

.field public mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTextViewSecureWifiStatus:Landroid/widget/TextView;

.field protected mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

.field private mWifiAdvanced:Landroid/widget/TextView;

.field private mWifiDirect:Landroid/widget/TextView;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field protected mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

.field private mWillRespondToEm:Z

.field protected mWpsDialog:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->SECURE_WIFI_STATE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmLastStateID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWillRespondToEm:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startP2pNlgForBixby()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->updateSecureWifiLayout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isMobileHotstpotEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isSecureWifiDisabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isSecureWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isSecureWifiInitializing(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isWifiEulaAgreed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isWifiSharingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScanByBixby()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secureWifiState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setSecureWifiState(Landroid/content/Context;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    .line 255
    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    .line 256
    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    .line 257
    sput v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 266
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v0, "covert_on"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->SECURE_WIFI_STATE_URI:Landroid/net/Uri;

    .line 208
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsSupportSSecure:Z

    .line 220
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWillRespondToEm:Z

    .line 223
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    .line 230
    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 236
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    .line 237
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    .line 239
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 246
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    .line 249
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHasNavBar:Z

    .line 252
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    .line 263
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 952
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    .line 1313
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    .line 1327
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    .line 1326
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    .line 1359
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    .line 1538
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    .line 1863
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2022
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 2376
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;

    .line 2377
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 2376
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiObserver:Landroid/database/ContentObserver;

    .line 265
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 270
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v0, "covert_on"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->SECURE_WIFI_STATE_URI:Landroid/net/Uri;

    .line 208
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsSupportSSecure:Z

    .line 220
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWillRespondToEm:Z

    .line 223
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    .line 230
    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 236
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    .line 237
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    .line 239
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 246
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    .line 249
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHasNavBar:Z

    .line 252
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    .line 263
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 952
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    .line 1313
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    .line 1327
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    .line 1326
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    .line 1359
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    .line 1538
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    .line 1863
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2022
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 2376
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;

    .line 2377
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 2376
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiObserver:Landroid/database/ContentObserver;

    .line 269
    return-void
.end method

.method private WifiAdvancetts(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const v4, 0x7f0b0f25

    const v3, 0x7f0b02c8

    .line 1675
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1676
    return-void

    .line 1678
    :cond_0
    const-string/jumbo v0, ""

    .line 1679
    .local v0, "WiFiAdvanceMenuTts":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1681
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1680
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1688
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1689
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1674
    :cond_1
    return-void

    .line 1684
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1685
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1684
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1685
    const-string/jumbo v2, " "

    .line 1684
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1686
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0f00

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1684
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private WifiDirectTts(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const v3, 0x7f0b1543

    const v4, 0x7f0b02c8

    .line 1654
    const-string/jumbo v1, ""

    .line 1655
    .local v1, "wiFiDirectMenuTts":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1657
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1658
    if-eqz p1, :cond_2

    .line 1659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1660
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1659
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1669
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1653
    :cond_1
    :goto_1
    return-void

    .line 1663
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1664
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1663
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1664
    const-string/jumbo v3, " "

    .line 1663
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1665
    const v3, 0x7f0b0f00

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1663
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1670
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private forceScanByBixby()V
    .locals 4

    .prologue
    .line 2011
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startScan()V

    .line 2013
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "Searching"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2018
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 2010
    return-void
.end method

.method private forceScrollToTopOfList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1304
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1305
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "scroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    .line 1303
    :cond_1
    :goto_0
    return-void

    .line 1307
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1308
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "force scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;
    .locals 8
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 809
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 810
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 811
    const-string/jumbo v5, "WifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pickedApInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 812
    const-string/jumbo v7, ", bssid: "

    .line 811
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 812
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v7

    .line 811
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 813
    const-string/jumbo v7, ", WifiInfo.bssid: "

    .line 811
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 813
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    .line 811
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 817
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "ssid"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 819
    const-string/jumbo v5, "bssid"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    :goto_0
    const-string/jumbo v5, "security"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    const-string/jumbo v5, "frequency"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getFrequency()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    return-object v2

    .line 821
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "bssid":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v5, "any"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 823
    :cond_2
    iget-object v5, p1, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "result$iterator":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 824
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v0, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 828
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "result$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v5, "bssid"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getSecureWifiState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2396
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2397
    const-string/jumbo v1, "covert_on"

    const/4 v2, 0x0

    .line 2396
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private initSecureWifiLayout(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x7f110827

    const/4 v7, 0x0

    .line 2225
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsSupportSSecure:Z

    if-eqz v0, :cond_5

    .line 2226
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    .line 2228
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2231
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getView()Landroid/view/View;

    move-result-object v0

    .line 2232
    const v1, 0x7f110829

    .line 2231
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiDivider:Landroid/widget/ImageView;

    .line 2233
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2234
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2236
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getView()Landroid/view/View;

    move-result-object v0

    .line 2237
    const v1, 0x7f110745

    .line 2236
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    .line 2239
    new-instance v6, Landroid/content/Intent;

    .line 2240
    const-string/jumbo v0, "android.intent.action.MAIN"

    .line 2239
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2241
    .local v6, "openSecureWifiDescriptionIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    .line 2242
    const-string/jumbo v1, "com.samsung.android.app.sprotect"

    const-string/jumbo v2, "com.samsung.android.app.sprotect.securewifi.SecureWifiDescriptionActivity"

    .line 2241
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2244
    const v0, 0x10008000

    .line 2243
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2247
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 2248
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    .line 2249
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase$17;

    invoke-direct {v1, p0, p1, v6}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$17;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;Landroid/content/Intent;)V

    .line 2248
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2257
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2258
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getView()Landroid/view/View;

    move-result-object v0

    .line 2259
    const v1, 0x7f110746

    .line 2258
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiSwitchView:Landroid/widget/LinearLayout;

    .line 2260
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiSwitchView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2262
    const-string/jumbo v1, "com.samsung.android.app.sprotect.ENABLE_SECURE_WIFI"

    .line 2261
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 2263
    .local v4, "enableSecureWifiIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2264
    const-string/jumbo v1, "com.samsung.android.app.sprotect.DISABLE_SECURE_WIFI"

    .line 2263
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 2265
    .local v5, "disableSecureWifiIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .line 2266
    const-string/jumbo v0, "android.intent.action.MAIN"

    .line 2265
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2267
    .local v3, "openSecureWifiEulaIntent":Landroid/content/Intent;
    const/high16 v0, 0x10800000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2269
    new-instance v0, Landroid/content/ComponentName;

    .line 2270
    const-string/jumbo v1, "com.samsung.android.app.sprotect"

    const-string/jumbo v2, "com.samsung.android.app.sprotect.securewifi.EulaActivity"

    .line 2269
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2272
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getView()Landroid/view/View;

    move-result-object v0

    .line 2273
    const v1, 0x7f110747

    .line 2272
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiSwitch:Landroid/widget/Switch;

    .line 2275
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiSwitch:Landroid/widget/Switch;

    .line 2276
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V

    .line 2275
    invoke-virtual {v7, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2332
    .end local v3    # "openSecureWifiEulaIntent":Landroid/content/Intent;
    .end local v4    # "enableSecureWifiIntent":Landroid/content/Intent;
    .end local v5    # "disableSecureWifiIntent":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->updateSecureWifiLayout()V

    .line 2224
    .end local v6    # "openSecureWifiDescriptionIntent":Landroid/content/Intent;
    :cond_4
    :goto_0
    return-void

    .line 2334
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    .line 2336
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 2337
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private isCricketManagerSupport()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1956
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    if-eqz v0, :cond_0

    .line 1957
    return v2

    .line 1959
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v0, :cond_2

    .line 1960
    :cond_1
    return v2

    .line 1962
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.smithmicro.netwise.director.cricket"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1963
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "There is no package for Cricket Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    return v2

    .line 1966
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isMobileHotstpotEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1980
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1981
    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "isMobileHotstpotEnabled, Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return v3

    .line 1985
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1986
    .local v0, "mWifiApState":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 1987
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1990
    :cond_2
    return v3
.end method

.method private isSecureWifiDisabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 2414
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSecureWifiState(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSecureWifiEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 2406
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSecureWifiState(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureWifiInitializing(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2410
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSecureWifiState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUsimUseable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1927
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1928
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 1929
    .local v2, "simSate":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 1931
    .local v1, "isAirplaneMode":Z
    :goto_0
    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    if-eqz v1, :cond_3

    .line 1936
    :cond_0
    const-string/jumbo v4, "SKT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1937
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1939
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v4, "45005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1952
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 1929
    .end local v1    # "isAirplaneMode":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isAirplaneMode":Z
    goto :goto_0

    .line 1932
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0ed3

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1933
    return v6

    .line 1939
    .restart local v0    # "imsi":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "45000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1940
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0ed5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1941
    return v6

    .line 1943
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1944
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1946
    .restart local v0    # "imsi":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v4, "45008"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "45002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1947
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0ed4

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1948
    return v6
.end method

.method private isWifiEulaAgreed(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2386
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2387
    const-string/jumbo v3, "wifi_eula_agreement"

    .line 2386
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1996
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1997
    return v4

    .line 1998
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 1999
    return v3

    .line 2001
    :catch_0
    move-exception v0

    .line 2002
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "isWifiSharingEnabled, SettingNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    return v3
.end method

.method private setSecureWifiState(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secureWifiState"    # I

    .prologue
    .line 2401
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2402
    const-string/jumbo v1, "covert_on"

    .line 2401
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2400
    return-void
.end method

.method private startP2pNlgForBixby()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2205
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2206
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2207
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBixbyWaitWifiOnTimer:Landroid/os/CountDownTimer;

    .line 2209
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isMobileHotstpotEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2210
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MobileHotspot"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2212
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 2204
    :goto_0
    return-void

    .line 2213
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2214
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MobileHotspot"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiDirectSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2216
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 2218
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method private updateSecureWifiLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2344
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSecureWifiState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2343
    :goto_0
    return-void

    .line 2346
    :pswitch_0
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "mTextViewSecureWifiStatus checked false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2349
    const v2, 0x7f0b12ca

    .line 2348
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2350
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 2351
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 2353
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2354
    const v2, 0x7f0b0922

    .line 2353
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2359
    :pswitch_1
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "mTextViewSecureWifiStatus checked true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2361
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 2362
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2364
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2365
    const v2, 0x7f0b0ebb

    .line 2364
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2369
    :pswitch_2
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "mSecure Wifi Initializing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 2344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 1516
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 1518
    .local v0, "emptyTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1519
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1521
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v1, :cond_1

    .line 1522
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1515
    :goto_0
    return-void

    .line 1524
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    .line 1525
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_0
.end method

.method protected addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 671
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    .line 672
    .local v0, "wifiIsEnabled":Z
    const v1, 0x7f0b1545

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 676
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    :cond_0
    const v1, 0x7f0b1bb9

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 678
    const v2, 0x7f020179

    .line 677
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 682
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v1, :cond_5

    .line 683
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 684
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 687
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    :cond_4
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 690
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 670
    :cond_5
    return-void
.end method

.method protected abstract changeNextButtonState(Z)V
.end method

.method protected checkContextMenuUiVisibility()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 727
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v0, :cond_0

    .line 728
    return v1

    .line 730
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v0, :cond_2

    .line 733
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    return v1

    .line 731
    :cond_2
    return v1

    .line 736
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public checkGoToWebPageHTTPResponse()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 740
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 741
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v0, :cond_0

    .line 742
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dhcpInfo.gateway : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v2, :cond_0

    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    .line 745
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Go to Webpage: gateway addr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    .line 783
    .local v1, "gatewayTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Integer;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 739
    .end local v1    # "gatewayTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method protected checkRestrictionAndShowEmptyView()Z
    .locals 2

    .prologue
    .line 1554
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1555
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1556
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "ui rstricted by user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    const v0, 0x7f0b154d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v0, :cond_1

    .line 1560
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1566
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1562
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    .line 1563
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onDataSetChanged()V

    .line 1564
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestrictedByOnlyAdmin()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView(Z)V

    goto :goto_0

    .line 1568
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    .line 930
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 931
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 932
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    .line 928
    return-void
.end method

.method protected connectWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "rssi"    # I

    .prologue
    .line 1970
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1971
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.net.wifi.WECHAT_CONNECT_AP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1972
    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1973
    const-string/jumbo v1, "bssid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1974
    const-string/jumbo v1, "rssi"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1975
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1969
    return-void
.end method

.method protected createAddNetworkPreference()V
    .locals 2

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    .line 508
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 509
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const v1, 0x7f0b153c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 505
    :cond_0
    return-void
.end method

.method protected createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 498
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 499
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    return-object v1

    .line 501
    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected abstract disable()V
.end method

.method protected disconnect()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 942
    return-void
.end method

.method protected abstract dismissDialog(I)V
.end method

.method protected findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1403
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 1404
    .local v0, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ap$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1405
    .local v1, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1406
    return-object v1

    .line 1409
    .end local v1    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_1
    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can\'t find configured AP, networkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const/4 v3, 0x0

    return-object v3
.end method

.method protected forget()V
    .locals 2

    .prologue
    .line 1427
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1426
    return-void
.end method

.method protected forget(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 921
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 920
    return-void
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0

    .line 1512
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0

    .line 1435
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 917
    const/16 v0, 0x67

    return v0
.end method

.method protected getWifiDialogArgs(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/os/Bundle;
    .locals 5
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    const/4 v2, 0x0

    .line 900
    if-nez p1, :cond_0

    .line 901
    return-object v2

    .line 903
    :cond_0
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiDialogArgs - apInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 905
    .local v0, "args":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 907
    .local v1, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v1, :cond_2

    .line 908
    const-string/jumbo v2, "args_linkproperties"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 911
    .end local v1    # "linkProperties":Landroid/net/LinkProperties;
    :cond_2
    const-string/jumbo v2, "manage_network"

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 912
    return-object v0
.end method

.method protected initFailListener()V
    .locals 1

    .prologue
    .line 1595
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$12;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1612
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$13;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1627
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$14;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1594
    return-void
.end method

.method protected isCoreanVendorAp(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 8
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1885
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1886
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1887
    return v7

    .line 1888
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1889
    .local v3, "ssid":Ljava/lang/String;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1890
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v1, :cond_6

    .line 1891
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    .line 1892
    .local v2, "method":I
    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    .line 1893
    const-string/jumbo v4, "T wifi zone_secure"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SKT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1894
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1895
    return v6

    .line 1897
    :cond_1
    const-string/jumbo v4, "ollehWiFi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1898
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1899
    return v6

    .line 1901
    :cond_2
    const-string/jumbo v4, "olleh GiGA WiFi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1902
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1903
    return v6

    .line 1905
    :cond_3
    const-string/jumbo v4, "U+zone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1906
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1907
    return v6

    .line 1909
    :cond_4
    const-string/jumbo v4, "U+zone_5G"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1910
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1911
    return v6

    .line 1913
    :cond_5
    const-string/jumbo v4, "5G_U+zone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1914
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1915
    return v6

    .line 1921
    .end local v2    # "method":I
    :cond_6
    return v7
.end method

.method public onAccessPointsChanged()V
    .locals 0

    .prologue
    .line 1098
    return-void
.end method

.method public onAccessPointsChanged(Z)V
    .locals 20
    .param p1, "updatedScanResult"    # Z

    .prologue
    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 1120
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->checkRestrictionAndShowEmptyView()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1121
    return-void

    .line 1123
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v19

    .line 1124
    .local v19, "wifiState":I
    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "WifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAccessPointsChanged - wifi state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v5, :cond_5

    .line 1126
    move/from16 v12, v19

    .line 1127
    .local v12, "changeState":I
    const/4 v5, 0x3

    move/from16 v0, v19

    if-ne v0, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiEnabler;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1129
    :cond_3
    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiEnabler;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1130
    const/4 v12, 0x2

    .line 1132
    :cond_4
    :goto_0
    move/from16 v0, v19

    if-eq v0, v12, :cond_5

    .line 1133
    const-string/jumbo v5, "WifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "force to change wifi state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    move/from16 v19, v12

    .line 1138
    .end local v12    # "changeState":I
    :cond_5
    packed-switch v19, :pswitch_data_0

    .line 1117
    :cond_6
    :goto_1
    return-void

    .line 1128
    .restart local v12    # "changeState":I
    :cond_7
    const/4 v12, 0x0

    .line 1127
    goto :goto_0

    .line 1142
    .end local v12    # "changeState":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v11

    .line 1144
    .local v11, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    const/16 v17, 0x0

    .line 1145
    .local v17, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_a

    .line 1146
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1147
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->cacheRemoveAllPrefs(Landroid/preference/PreferenceGroup;)V

    .line 1152
    .end local v17    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    :goto_2
    const/4 v13, 0x0

    .line 1153
    .local v13, "hasAvailableAccessPoints":Z
    const/4 v14, 0x0

    .line 1154
    .local v14, "index":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "accessPoint$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1156
    .local v3, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    if-nez v5, :cond_9

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 1157
    :cond_9
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v16

    .line 1158
    .local v16, "key":Ljava/lang/String;
    const/4 v13, 0x1

    .line 1160
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getCachedPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    .line 1159
    check-cast v4, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1161
    .local v4, "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    if-eqz v4, :cond_b

    .line 1162
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "index":I
    .local v15, "index":I
    invoke-virtual {v4, v14}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    move v14, v15

    .line 1163
    .end local v15    # "index":I
    .restart local v14    # "index":I
    goto :goto_3

    .line 1149
    .end local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v13    # "hasAvailableAccessPoints":Z
    .end local v14    # "index":I
    .end local v16    # "key":Ljava/lang/String;
    .restart local v17    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    :cond_a
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .local v17, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    goto :goto_2

    .line 1166
    .end local v17    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    .restart local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .restart local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v13    # "hasAvailableAccessPoints":Z
    .restart local v14    # "index":I
    .restart local v16    # "key":Ljava/lang/String;
    :cond_b
    new-instance v2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .end local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v6, 0x0

    move-object/from16 v7, p0

    .line 1166
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .line 1168
    .local v2, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 1169
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "index":I
    .restart local v15    # "index":I
    invoke-virtual {v2, v14}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1172
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSecurity:I

    if-ne v5, v6, :cond_c

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1174
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    .line 1176
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_d

    .line 1177
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_1a

    .line 1183
    invoke-virtual {v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->refresh()V

    move v14, v15

    .end local v15    # "index":I
    .restart local v14    # "index":I
    goto/16 :goto_3

    .line 1179
    .end local v14    # "index":I
    .restart local v15    # "index":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 1187
    .end local v2    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v15    # "index":I
    .end local v16    # "key":Ljava/lang/String;
    .restart local v14    # "index":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_f

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->removeCachedPrefs(Landroid/preference/PreferenceGroup;)V

    .line 1190
    :cond_f
    if-nez v13, :cond_15

    .line 1191
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v5, :cond_11

    .line 1192
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 1196
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_14

    .line 1197
    new-instance v18, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1199
    .local v18, "pref":Landroid/preference/Preference;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1200
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v5, :cond_13

    .line 1201
    const-string/jumbo v5, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1202
    const v5, 0x7f0b0ed1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 1209
    :goto_6
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 1210
    const-string/jumbo v5, "wifi_empty_list"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1222
    .end local v18    # "pref":Landroid/preference/Preference;
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_10

    .line 1223
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1242
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_6

    .line 1243
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScrollToTopOfList()V

    goto/16 :goto_1

    .line 1194
    :cond_11
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto :goto_5

    .line 1204
    .restart local v18    # "pref":Landroid/preference/Preference;
    :cond_12
    const v5, 0x7f0b0ebf

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 1207
    :cond_13
    const v5, 0x7f0b00a9

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 1213
    .end local v18    # "pref":Landroid/preference/Preference;
    :cond_14
    new-instance v4, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 1213
    const/4 v5, 0x0

    .line 1214
    const/4 v8, 0x0

    move-object/from16 v9, p0

    .line 1213
    invoke-direct/range {v4 .. v9}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .line 1215
    .restart local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSelectable(Z)V

    .line 1216
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 1217
    const-string/jumbo v5, "wifi_empty_list"

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 1218
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_7

    .line 1227
    .end local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_17

    .line 1228
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "index":I
    .restart local v15    # "index":I
    invoke-virtual {v5, v14}, Landroid/preference/Preference;->setOrder(I)V

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move v14, v15

    .line 1238
    .end local v15    # "index":I
    .restart local v14    # "index":I
    :cond_16
    :goto_9
    if-eqz p1, :cond_10

    .line 1239
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_8

    .line 1230
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_16

    .line 1231
    if-eqz p1, :cond_18

    .line 1232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    .line 1236
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_9

    .line 1234
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    goto :goto_a

    .line 1248
    .end local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v11    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .end local v13    # "hasAvailableAccessPoints":Z
    .end local v14    # "index":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_19

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1253
    :goto_b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    .line 1251
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    goto :goto_b

    .line 1257
    :pswitch_2
    const v5, 0x7f0b1523

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    .line 1258
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    .line 1262
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setOffMessage()V

    .line 1263
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_1

    .restart local v2    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .restart local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v11    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .restart local v13    # "hasAvailableAccessPoints":Z
    .restart local v15    # "index":I
    .restart local v16    # "key":Ljava/lang/String;
    :cond_1a
    move v14, v15

    .end local v15    # "index":I
    .restart local v14    # "index":I
    goto/16 :goto_3

    .line 1138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.wifi.direct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mP2pSupported:Z

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->initFailListener()V

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 386
    .local v10, "intent":Landroid/content/Intent;
    if-nez p1, :cond_6

    const-string/jumbo v1, "wifi_start_connect_ssid"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 387
    const-string/jumbo v1, "wifi_start_connect_ssid"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    .line 388
    const-string/jumbo v1, "wifi_start_connect_security"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string/jumbo v1, "wifi_start_connect_security"

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSecurity:I

    .line 400
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v11

    .line 401
    .local v11, "listview":Landroid/widget/ListView;
    if-eqz v11, :cond_1

    .line 402
    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->registerForContextMenu(Landroid/view/View;)V

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 404
    .local v12, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a0015

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 405
    const v2, 0x7f0a0023

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 404
    add-int v4, v1, v2

    .line 406
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 407
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 408
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 413
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v1, :cond_1

    .line 414
    const v1, 0x7f020673

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 418
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v4    # "divider_inset_size":I
    .end local v12    # "resources":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v9

    .line 419
    .local v9, "emptyTextView":Landroid/widget/TextView;
    if-eqz v9, :cond_2

    .line 420
    const v1, 0x800033

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 421
    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1002aa

    invoke-virtual {v9, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 426
    :cond_2
    const-string/jumbo v1, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 427
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isCricketManagerSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 429
    .local v8, "cricketInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0403ad

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    .line 430
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 431
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 437
    .end local v8    # "cricketInflater":Landroid/view/LayoutInflater;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsSupportSSecure:Z

    .line 439
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsSupportSSecure:Z

    if-eqz v1, :cond_5

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->initSecureWifiLayout(Landroid/content/Context;)V

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->SECURE_WIFI_STATE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 376
    :cond_5
    return-void

    .line 391
    .end local v9    # "emptyTextView":Landroid/widget/TextView;
    .end local v11    # "listview":Landroid/widget/ListView;
    :cond_6
    const-string/jumbo v1, "com.samsung.android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    .line 393
    const-string/jumbo v1, "extra_location_services"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const-string/jumbo v1, "extra_location_services"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    goto/16 :goto_0

    .line 410
    .restart local v4    # "divider_inset_size":I
    .restart local v11    # "listview":Landroid/widget/ListView;
    .restart local v12    # "resources":Landroid/content/res/Resources;
    :cond_7
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 411
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 438
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v4    # "divider_inset_size":I
    .end local v12    # "resources":Landroid/content/res/Resources;
    .restart local v9    # "emptyTextView":Landroid/widget/TextView;
    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public onAddNetworkPressed()V
    .locals 2

    .prologue
    .line 1501
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "onAddNetworkPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1504
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f0f0030

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    .line 1500
    return-void
.end method

.method public onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "isMultipleChanged"    # Z
    .param p3, "reason"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1270
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfiguredNetworksChanged: config = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1271
    const-string/jumbo v3, ", isMultipleChanged = "

    .line 1270
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    const-string/jumbo v3, ", mRequestConnectionByUser = "

    .line 1270
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1272
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    .line 1270
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_0
    if-nez p1, :cond_2

    return-void

    .line 1270
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1274
    :cond_2
    if-eqz p2, :cond_3

    return-void

    .line 1276
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    if-eqz v1, :cond_4

    .line 1277
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v1, :cond_5

    .line 1278
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "Failed to show retry popup. It\'s default AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_4
    :goto_1
    return-void

    .line 1279
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    if-nez v1, :cond_6

    .line 1280
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "Failed to show retry popup. It\'s none secured (OPEN) AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1282
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1283
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    .line 1284
    const/4 v2, 0x3

    .line 1283
    if-eq v1, v2, :cond_7

    .line 1285
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    .line 1286
    const/4 v2, 0x7

    .line 1285
    if-ne v1, v2, :cond_4

    .line 1287
    :cond_7
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_8

    .line 1288
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 1289
    if-eq p3, v5, :cond_8

    .line 1290
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0f48

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1292
    :cond_8
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "WifiSettingsBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfiguredNetworksChanged: mShowRetryDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    if-eqz v1, :cond_a

    .line 1294
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->showDialogForRetry(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1295
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    .line 1297
    :cond_a
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    goto :goto_1
.end method

.method public onConnectedChanged()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1042
    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConnectedChanged: isConnected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1044
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    .line 1046
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_4

    .line 1047
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1048
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    .line 1050
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1051
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_4

    .line 1052
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 1053
    .local v1, "networkId":I
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SEC PICKER from location, networkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1056
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1057
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "matches - return picked AP & finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1059
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1060
    return-void

    .line 1062
    :cond_3
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "not maches"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "networkId":I
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v3, :cond_5

    .line 1068
    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "onConnectedChanged : isConnected() : mInPickerDialog : Finish!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1070
    return-void

    .line 1073
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    if-eqz v3, :cond_6

    .line 1074
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    .line 1075
    const-string/jumbo v4, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    .line 1074
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1076
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1077
    return-void

    .line 1082
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1083
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    .line 1084
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1085
    const-wide/16 v6, 0x3e8

    .line 1083
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1090
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->changeNextButtonState(Z)V

    .line 1041
    return-void

    .line 1087
    :cond_7
    sput v6, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 275
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 277
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "WifiSettingsBase"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 280
    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    .line 281
    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    .line 282
    sput v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    .line 284
    const/4 v10, 0x1

    .line 285
    .local v10, "useListAnimationFeature":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 286
    .local v7, "args":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 287
    const-string/jumbo v0, "manage_network"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    .line 289
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v0, :cond_1

    .line 290
    const/4 v10, 0x0

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    if-nez v0, :cond_5

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    .line 293
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiSetupActivity;

    if-eqz v0, :cond_2

    .line 296
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 297
    const/4 v10, 0x0

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    .line 301
    const-string/jumbo v0, "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHasNavBar:Z

    .line 303
    new-instance v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 305
    const/4 v9, 0x1

    .line 306
    .local v9, "showRefreshLayout":Z
    const/4 v5, 0x1

    .line 307
    .local v5, "showScanItems":Z
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v0, :cond_7

    .line 308
    const/4 v9, 0x0

    .line 309
    const/4 v5, 0x0

    .line 310
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    .line 314
    :cond_3
    :goto_2
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->setAccessPointVisible(Z)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker;->setSemWifiListener(Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 319
    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 320
    new-instance v0, Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setListener(Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;)V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    .line 329
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v8

    .line 331
    .local v8, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-virtual {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    .line 337
    .end local v8    # "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_4
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 274
    return-void

    .end local v5    # "showScanItems":Z
    .end local v9    # "showRefreshLayout":Z
    :cond_5
    move v0, v4

    .line 293
    goto/16 :goto_0

    :cond_6
    move v0, v4

    .line 301
    goto/16 :goto_1

    .line 311
    .restart local v5    # "showScanItems":Z
    .restart local v9    # "showRefreshLayout":Z
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v0, :cond_3

    .line 312
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 325
    :cond_8
    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addPreferencesFromResource(I)V

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->createAddNetworkPreference()V

    goto :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f0f002a

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    .line 722
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 659
    :cond_0
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 661
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v0, :cond_3

    .line 664
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 655
    return-void

    .line 662
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addOptionsMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 342
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mContainer:Landroid/view/ViewGroup;

    .line 343
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mListAnimationView:Landroid/view/View;

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mListAnimationView:Landroid/view/View;

    return-object v0

    .line 347
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCricketManagerClicked()V
    .locals 5

    .prologue
    .line 1530
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.smithmicro.mnd.MNDSettings"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1532
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1529
    :goto_0
    return-void

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 353
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    if-eqz v1, :cond_0

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertBigdataLog(ILjava/lang/String;)V

    .line 357
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 358
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    .line 360
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/wifi/WifiTracker;->setSemWifiListener(Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V

    .line 362
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 364
    :cond_1
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 365
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->destroyView()V

    .line 367
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    .line 369
    :cond_2
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 370
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 372
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onDestroy()V

    .line 351
    return-void

    .line 354
    :cond_3
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onDestroyView()V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mListAnimationView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mListAnimationView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 453
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mListAnimationView:Landroid/view/View;

    .line 454
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "onDestroyView, mListAnimationView is removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 458
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "onDestroyView, mContainer is removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsSupportSSecure:Z

    if-eqz v0, :cond_3

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSecureWifiObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 446
    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 696
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f0f002f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    .line 699
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 701
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 718
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 703
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiAdvancedScreen()V

    .line 704
    return v2

    .line 706
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiConfigSettings()V

    .line 707
    return v2

    .line 709
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiHelpScreen()V

    .line 710
    return v2

    .line 712
    :sswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 714
    return v2

    .line 701
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onP2pMenuPressed()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f0b1543

    const/4 v2, 0x0

    .line 1695
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    .line 1697
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 1698
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1699
    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    .line 1698
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1694
    :goto_0
    return-void

    .line 1703
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 1704
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1705
    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    .line 1704
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1710
    :cond_1
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 1711
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 1710
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 631
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onPause()V

    .line 632
    sput-boolean v3, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 634
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v2, :cond_0

    .line 635
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 637
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->stopTracking()V

    .line 638
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 640
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 641
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 642
    .local v0, "isScreenOn":Z
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsInProgress:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_2

    .line 648
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 651
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 630
    return-void

    .line 643
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v2, :cond_1

    .line 644
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    .line 645
    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 515
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onResume()V

    .line 517
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v5, :cond_0

    .line 518
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 520
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->startTracking()V

    .line 523
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isSharedDeviceKeyguardOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 524
    const-string/jumbo v5, "WifiSettingsBase"

    const-string/jumbo v6, "isSharedDeviceKeyguardOn!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 528
    :cond_1
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 529
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0x4a

    iput v5, v3, Landroid/os/Message;->what:I

    .line 531
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "enable"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 533
    const-string/jumbo v5, "lock"

    invoke-virtual {v1, v5, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 534
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 536
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    if-nez v5, :cond_2

    .line 537
    const-string/jumbo v5, "WifiSettingsBase"

    const-string/jumbo v6, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mP2pSupported:Z

    if-eqz v5, :cond_3

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 542
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 543
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v5, :cond_b

    .line 544
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 545
    const v5, 0x7f0b151e

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 546
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->updateActionBar()V

    .line 555
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_3
    :goto_0
    const-string/jumbo v5, "KTT"

    sget-object v6, Lcom/android/settings/Utils;->CONFIG_WIFI_AUTOCONNECT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 556
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_skip_auto_conn"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v11, :cond_c

    const/4 v4, 0x1

    .line 557
    .local v4, "skipAutoConnection":Z
    :goto_1
    const-string/jumbo v5, "WifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResume : MANUAL_CONN_ENABLE_QUERY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-eqz v4, :cond_4

    .line 560
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_skip_auto_conn"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 564
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHandlerForKTCM:Landroid/os/Handler;

    .line 565
    new-instance v5, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRunnableForKTCM:Ljava/lang/Runnable;

    .line 585
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHandlerForKTCM:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRunnableForKTCM:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 589
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "skipAutoConnection":Z
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    .line 592
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v5, :cond_d

    .line 593
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 594
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 597
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    :cond_6
    iput-boolean v10, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    .line 611
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 612
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    .line 615
    :cond_8
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onAccessPointsChanged(Z)V

    .line 617
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-nez v5, :cond_9

    .line 618
    sput-boolean v11, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 622
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 624
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsSupportSSecure:Z

    if-eqz v5, :cond_a

    .line 625
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->updateSecureWifiLayout()V

    .line 514
    :cond_a
    return-void

    .line 550
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_b
    const v5, 0x7f0b0f38

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 556
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "skipAutoConnection":Z
    goto/16 :goto_1

    .line 602
    .end local v4    # "skipAutoConnection":Z
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    .line 603
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 606
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onScanStateChange(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 1106
    if-ne p1, v0, :cond_0

    .line 1107
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 1105
    :cond_0
    return-void
.end method

.method public onShowButtonBackgroundChange(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1645
    if-eqz p1, :cond_1

    .line 1646
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const v1, 0x108074c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1643
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 469
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onStart()V

    .line 470
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 473
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 475
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setListener(Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;)V

    .line 468
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onStop()V

    .line 485
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setListener(Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 488
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 482
    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 967
    packed-switch p1, :pswitch_data_0

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 969
    :pswitch_0
    const v0, 0x7f0b1522

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    .line 970
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 973
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 982
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 983
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 986
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 987
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    .line 989
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWillRespondToEm:Z

    if-eqz v0, :cond_0

    .line 990
    const-string/jumbo v0, "WiFiScan"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmLastStateID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 991
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScanByBixby()V

    .line 994
    :cond_4
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmParam:Ljava/lang/String;

    .line 995
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWillRespondToEm:Z

    goto :goto_0

    .line 974
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 975
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 976
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 977
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    goto :goto_1

    .line 1000
    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v0, :cond_6

    .line 1001
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1002
    return-void

    .line 1004
    :cond_6
    const v0, 0x7f0b1523

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    .line 1005
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 1008
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->dismissDialog(I)V

    .line 1009
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v0, :cond_8

    .line 1010
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1011
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 1015
    :goto_2
    return-void

    .line 1013
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 1017
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setOffMessage()V

    .line 1018
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 1019
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1020
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1022
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1023
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 1025
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 1026
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    .line 1029
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    if-eqz v0, :cond_0

    .line 1030
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 1031
    const-string/jumbo v1, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    .line 1030
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1033
    return-void

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected saveConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 925
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 924
    return-void
.end method

.method protected sendPickedAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 5
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 789
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v1, :cond_2

    .line 791
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 793
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 795
    return v3

    .line 799
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    .line 800
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    .line 805
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 801
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v1, :cond_1

    .line 802
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 803
    return v3
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    return-void

    .line 1548
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    return-void

    .line 1549
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v0, :cond_2

    return-void

    .line 1550
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->setEmptyView(Landroid/view/View;)V

    .line 1546
    return-void
.end method

.method protected setFooterView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1438
    return-void
.end method

.method protected setOffMessage()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1443
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->checkRestrictionAndShowEmptyView()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1444
    return-void

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 1448
    .local v2, "emptyTextView":Landroid/widget/TextView;
    if-nez v2, :cond_1

    .line 1449
    return-void

    .line 1452
    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v6, :cond_2

    .line 1453
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 1454
    return-void

    .line 1457
    :cond_2
    const v6, 0x7f0b154c

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1462
    .local v0, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1464
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v6, "wifi_scan_always_enabled"

    .line 1463
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    .line 1466
    .local v4, "wifiScanningMode":Z
    :goto_0
    if-eqz v4, :cond_3

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    if-eqz v6, :cond_5

    .line 1469
    :cond_3
    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1482
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1489
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 1490
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_6

    .line 1491
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    .line 1492
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    .line 1442
    :goto_2
    return-void

    .end local v4    # "wifiScanningMode":Z
    :cond_4
    move v4, v5

    .line 1463
    goto :goto_0

    .line 1472
    .restart local v4    # "wifiScanningMode":Z
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1473
    .local v1, "contentBuilder":Ljava/lang/StringBuilder;
    const v6, 0x7f0b1530

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1474
    const-string/jumbo v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-static {v2, v1, v6}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    goto :goto_1

    .line 1494
    .end local v1    # "contentBuilder":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_2
.end method

.method protected abstract setProgressBarVisible(Z)V
.end method

.method protected abstract showDialogForModify()V
.end method

.method protected abstract showDialogForRetry(Lcom/android/settingslib/wifi/AccessPoint;)V
.end method

.method protected abstract showDialogToDisplayInfo(Lcom/android/settingslib/wifi/AccessPoint;)V
.end method

.method protected startScan()V
    .locals 2

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 948
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->forceScan()V

    .line 946
    return-void
.end method

.method protected startScanningSettings()V
    .locals 10

    .prologue
    const v3, 0x7f0b09c2

    const/4 v2, 0x0

    .line 848
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 850
    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 851
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 849
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 847
    :goto_0
    return-void

    .line 853
    :cond_0
    const-class v0, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 854
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 853
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected startWifiAdvancedScreen()V
    .locals 10

    .prologue
    const v3, 0x7f0b0f25

    const/4 v2, 0x0

    .line 836
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 838
    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 839
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    .line 837
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 835
    :goto_0
    return-void

    .line 841
    :cond_0
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 842
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 841
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected startWifiConfigSettings()V
    .locals 10

    .prologue
    const v3, 0x7f0b15a1

    const/4 v2, 0x0

    .line 860
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 862
    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 863
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    .line 861
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 859
    :goto_0
    return-void

    .line 865
    :cond_0
    const-class v0, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 866
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 865
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public startWifiHelpScreen()V
    .locals 10

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    if-eqz v0, :cond_3

    .line 874
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.helphub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 875
    .local v8, "info":Landroid/content/pm/PackageInfo;
    const-string/jumbo v0, "WifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHelpMenuPressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 870
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 878
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 879
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.helphub.HELP"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "helphub:section"

    const-string/jumbo v1, "wifi"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 882
    :try_start_1
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 883
    :catch_0
    move-exception v6

    .line 884
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 891
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    .line 892
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 886
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_3
    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 887
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.helphub.HELP"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "helphub:appid"

    const-string/jumbo v1, "wi_fi"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 895
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    const-class v0, Lcom/samsung/android/settings/guide/WifiHelpPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0f7b

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 4
    .param p1, "configController"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 1414
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    .line 1415
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScrollToTopOfList()V

    .line 1416
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1417
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1418
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    goto :goto_0
.end method

.method public updateActionBar()V
    .locals 14

    .prologue
    .line 1716
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1717
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1719
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const v11, 0x800015

    invoke-direct {v6, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 1720
    .local v6, "mLayoutParams":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0403b1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1721
    .local v5, "mCustomLayout":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1722
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f110961

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    return-void

    .line 1723
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1724
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1725
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1727
    :cond_1
    const v9, 0x7f110961

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    .line 1729
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "VZW"

    sget-object v10, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1733
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 1734
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string/jumbo v11, "action_bar"

    const-string/jumbo v12, "id"

    const-string/jumbo v13, "android"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1733
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 1735
    .local v8, "toolbar":Landroid/view/ViewGroup;
    if-eqz v8, :cond_3

    .line 1736
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 1739
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    .line 1741
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 1742
    .local v7, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x11600d0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1746
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 1745
    .local v3, "curFontScale":F
    const v9, 0x3f99999a    # 1.2f

    .line 1748
    cmpl-float v9, v3, v9

    if-lez v9, :cond_4

    .line 1745
    const v3, 0x3f99999a    # 1.2f

    .line 1752
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    .line 1744
    const/high16 v10, 0x41700000    # 15.0f

    .line 1752
    mul-float/2addr v10, v3

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1754
    iget v9, v7, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_d

    const/4 v4, 0x1

    .line 1755
    .local v4, "isThemeDeviceDefaultFamily":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 1756
    sget-object v9, Lcom/android/internal/R$styleable;->View:[I

    const/4 v10, 0x0

    .line 1757
    const v11, 0x10102d8

    const/4 v12, 0x0

    .line 1756
    invoke-virtual {v1, v10, v9, v11, v12}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1758
    .local v2, "av":Landroid/content/res/TypedArray;
    const/16 v9, 0xd

    .line 1759
    const v10, 0x1080746

    .line 1758
    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 1760
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1761
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_button_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 1762
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onShowButtonBackgroundChange(Z)V

    .line 1770
    .end local v2    # "av":Landroid/content/res/TypedArray;
    :cond_5
    :goto_2
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 1771
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSettingsBase$15;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$15;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1804
    .end local v3    # "curFontScale":F
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    .end local v7    # "outValue":Landroid/util/TypedValue;
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1806
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 1807
    .restart local v7    # "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x11600d0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1811
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 1810
    .restart local v3    # "curFontScale":F
    const v9, 0x3f99999a    # 1.2f

    .line 1813
    cmpl-float v9, v3, v9

    if-lez v9, :cond_7

    .line 1810
    const v3, 0x3f99999a    # 1.2f

    .line 1817
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    .line 1809
    const/high16 v10, 0x41700000    # 15.0f

    .line 1817
    mul-float/2addr v10, v3

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1818
    iget v9, v7, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_f

    const/4 v4, 0x1

    .line 1819
    .restart local v4    # "isThemeDeviceDefaultFamily":Z
    :goto_3
    if-eqz v4, :cond_8

    .line 1820
    sget-object v9, Lcom/android/internal/R$styleable;->View:[I

    const/4 v10, 0x0

    .line 1821
    const v11, 0x10102d8

    const/4 v12, 0x0

    .line 1820
    invoke-virtual {v1, v10, v9, v11, v12}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1822
    .restart local v2    # "av":Landroid/content/res/TypedArray;
    const/16 v9, 0xd

    .line 1823
    const v10, 0x1080746

    .line 1822
    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 1824
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1825
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_button_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 1826
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    const v10, 0x108074c

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1831
    .end local v2    # "av":Landroid/content/res/TypedArray;
    :cond_8
    :goto_4
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    .line 1832
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSettingsBase$16;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$16;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1841
    .end local v3    # "curFontScale":F
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    .end local v7    # "outValue":Landroid/util/TypedValue;
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1848
    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v9, :cond_b

    .line 1849
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_12

    .line 1850
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1851
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1852
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 1853
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    .line 1715
    :cond_b
    :goto_5
    return-void

    .line 1730
    .end local v8    # "toolbar":Landroid/view/ViewGroup;
    :cond_c
    const v9, 0x7f110962

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    .line 1731
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1754
    .restart local v3    # "curFontScale":F
    .restart local v7    # "outValue":Landroid/util/TypedValue;
    .restart local v8    # "toolbar":Landroid/view/ViewGroup;
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1765
    .restart local v2    # "av":Landroid/content/res/TypedArray;
    .restart local v4    # "isThemeDeviceDefaultFamily":Z
    :cond_e
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onShowButtonBackgroundChange(Z)V

    goto/16 :goto_2

    .line 1818
    .end local v2    # "av":Landroid/content/res/TypedArray;
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1828
    .restart local v2    # "av":Landroid/content/res/TypedArray;
    .restart local v4    # "isThemeDeviceDefaultFamily":Z
    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_4

    .line 1842
    .end local v2    # "av":Landroid/content/res/TypedArray;
    .end local v3    # "curFontScale":F
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    .end local v7    # "outValue":Landroid/util/TypedValue;
    :cond_11
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v9, :cond_b

    .line 1843
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1844
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1845
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    goto :goto_5

    .line 1854
    :cond_12
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 1855
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1856
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1857
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 1858
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    goto :goto_5
.end method
