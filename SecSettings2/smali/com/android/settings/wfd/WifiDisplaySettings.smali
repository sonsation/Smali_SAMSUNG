.class public Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$10;,
        Lcom/android/settings/wfd/WifiDisplaySettings$11;,
        Lcom/android/settings/wfd/WifiDisplaySettings$12;,
        Lcom/android/settings/wfd/WifiDisplaySettings$13;,
        Lcom/android/settings/wfd/WifiDisplaySettings$14;,
        Lcom/android/settings/wfd/WifiDisplaySettings$15;,
        Lcom/android/settings/wfd/WifiDisplaySettings$1;,
        Lcom/android/settings/wfd/WifiDisplaySettings$2;,
        Lcom/android/settings/wfd/WifiDisplaySettings$3;,
        Lcom/android/settings/wfd/WifiDisplaySettings$4;,
        Lcom/android/settings/wfd/WifiDisplaySettings$5;,
        Lcom/android/settings/wfd/WifiDisplaySettings$6;,
        Lcom/android/settings/wfd/WifiDisplaySettings$7;,
        Lcom/android/settings/wfd/WifiDisplaySettings$8;,
        Lcom/android/settings/wfd/WifiDisplaySettings$9;,
        Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;,
        Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;,
        Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;,
        Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;,
        Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    }
.end annotation


# static fields
.field private static final SS_WFD_SERVICE_WITH_GCAST:Z

.field public static mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BIXBY_SEARCH_STATE_ID:Ljava/lang/String;

.field public PlayerType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private changeString:Ljava/lang/String;

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private endConnect:Landroid/view/MenuItem;

.field private extraCauseOfStart:I

.field private isChanged:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mBixbyEnabled:Z

.field private mChange_device_info:Landroid/widget/LinearLayout;

.field private mConnectTypeForLogging:Ljava/lang/String;

.field private mConnectingAddressForSmartSchool:Ljava/lang/String;

.field private mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

.field private mContentUri:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private mDeviceNameErrorText:Landroid/widget/TextView;

.field protected mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

.field private mDlnaHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDlnaList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDlnaServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

.field private mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private mExcutorMediatorResponseDone:Z

.field private mGlobalEditDeviceName:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private final mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mInPickerDialog:Z

.field private mIsKnoxMode:Z

.field private mMenu:Landroid/view/ContextMenu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mNoDeviceTimer:Ljava/lang/Runnable;

.field private mNo_device_found_layout:Landroid/widget/LinearLayout;

.field private final mOnlyOneDeviceTimer:Ljava/lang/Runnable;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mPendingChanges:I

.field private mPinConnectionRequested:Z

.field private mPlayerType:I

.field private mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field private mReadyToConnect:Z

.field private mReadyToOneDeviceConnect:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private final mRestartScan:Ljava/lang/Runnable;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mScanTimeout:Ljava/lang/Runnable;

.field private final mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private final mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStartWithConnectedState:Z

.field private mStarted:Z

.field private mTempDeviceName:Ljava/lang/String;

.field protected mTurningWifiDisplayOn:Z

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

.field protected mWifiDisplayOnSetting:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private preChecked:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->BIXBY_SEARCH_STATE_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceTimer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOnlyOneDeviceTimer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTempDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/Wfd_Certification;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceNameErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToOneDeviceConnect:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTempDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBixbyEnabled:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAnyDeviceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->prepareConnection()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/wfd/WifiDisplaySettings;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cause"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceType"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p1, "changes"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setPreferenceScreenEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/SemWifiDisplay;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/SemWifiDisplay;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)Ljava/lang/String;
    .locals 1
    .param p1, "device"    # Lcom/samsung/android/allshare/Device;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getScreenSharingP2pMacAddr(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p1, "enable"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->handlePreferenceScreenEnabled(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 179
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x138e4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    .line 146
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    .line 237
    const-string/jumbo v0, "QIC_SET"

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "TYPE_VIDEO"

    aput-object v2, v1, v4

    const-string/jumbo v2, "TYPE_IMAGE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "TYPE_MUSIC"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "TYPE_MUSIC_CHN"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->PlayerType:Ljava/util/ArrayList;

    .line 243
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 245
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 246
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToOneDeviceConnect:Z

    .line 247
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    .line 248
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBixbyEnabled:Z

    .line 249
    const-string/jumbo v0, "SVSearch"

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->BIXBY_SEARCH_STATE_ID:Ljava/lang/String;

    .line 284
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    .line 318
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 651
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1113
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    .line 1124
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    .line 1136
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOnlyOneDeviceTimer:Ljava/lang/Runnable;

    .line 1145
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceTimer:Ljava/lang/Runnable;

    .line 1525
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    .line 1552
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1564
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mImageFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1576
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScreenSharingFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 1588
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 1772
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1833
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 2084
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 340
    return-void
.end method

.method private applyState(Z)V
    .locals 38
    .param p1, "invalidateOptions"    # Z

    .prologue
    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v31

    .line 771
    .local v31, "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getFeatureState()I

    move-result v16

    .line 772
    .local v16, "featureState":I
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    .line 774
    .local v5, "activeDisplayState":I
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    .line 778
    :cond_0
    const/16 v32, 0x3

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 779
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 785
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-nez v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 789
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_b

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    move/from16 v32, v0

    if-nez v32, :cond_a

    .line 791
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_8

    .line 792
    const/16 v32, 0x2

    move/from16 v0, v32

    if-eq v5, v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v32

    .line 791
    if-eqz v32, :cond_8

    .line 793
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContentUri:Landroid/content/Intent;

    move-object/from16 v32, v0

    if-eqz v32, :cond_4

    .line 794
    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "Send Content Uri to Application"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v32, "com.samsung.intent.action.START_SMART_VIEW_MULTI_SELECT"

    move-object/from16 v0, v32

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .local v3, "UriIntent":Landroid/content/Intent;
    const-string/jumbo v32, "android.intent.extra.INTENT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContentUri:Landroid/content/Intent;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 799
    .end local v3    # "UriIntent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v33, "WifiDisplaySettings"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v32

    if-eqz v32, :cond_7

    const-string/jumbo v32, "GCast"

    :goto_1
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v34, " is connected.. Settings finish()"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 801
    return-void

    .line 777
    :cond_5
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    goto/16 :goto_0

    .line 780
    :cond_6
    const/16 v32, 0x2

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 782
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    goto/16 :goto_0

    .line 799
    :cond_7
    const-string/jumbo v32, "SemWifiDisplay"

    goto :goto_1

    .line 802
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-nez v32, :cond_a

    const/16 v32, 0x2

    move/from16 v0, v16

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 803
    :cond_9
    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "SemWifiDisplay is disconnected.. Settings finish()"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 805
    return-void

    .line 809
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_b

    .line 810
    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "Dlna is connected.. Settings finish()"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 812
    return-void

    .line 816
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    .line 817
    .local v24, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-nez v32, :cond_c

    .line 819
    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 822
    :cond_c
    const/16 v32, 0x3

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_47

    .line 823
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v4

    .line 825
    .local v4, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->getDisplays()[Landroid/hardware/display/SemWifiDisplay;

    move-result-object v12

    .line 826
    .local v12, "displays":[Landroid/hardware/display/SemWifiDisplay;
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState displays.length = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    array-length v0, v12

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v11, Ljava/util/ArrayList;

    array-length v0, v12

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 828
    .local v11, "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplay;>;"
    const/16 v32, 0x0

    array-length v0, v12

    move/from16 v33, v0

    :goto_2
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    aget-object v10, v12, v32

    .line 829
    .local v10, "d":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->isAvailable()Z

    move-result v34

    if-eqz v34, :cond_d

    .line 830
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_d
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 833
    .end local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    :cond_e
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/display/SemWifiDisplay;

    .line 834
    .local v6, "availableDisplays":[Landroid/hardware/display/SemWifiDisplay;
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState availableDisplays.length = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    array-length v0, v6

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBixbyEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 844
    :cond_f
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-eqz v32, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    move/from16 v32, v0

    if-eqz v32, :cond_14

    .line 845
    const/16 v32, 0x0

    array-length v0, v6

    move/from16 v33, v0

    :goto_4
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_10

    aget-object v10, v6, v32

    .line 846
    .restart local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 847
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    .line 848
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    .line 1107
    .end local v4    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .end local v6    # "availableDisplays":[Landroid/hardware/display/SemWifiDisplay;
    .end local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    .end local v11    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplay;>;"
    .end local v12    # "displays":[Landroid/hardware/display/SemWifiDisplay;
    :cond_10
    :goto_5
    if-eqz p1, :cond_11

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 769
    :cond_11
    return-void

    .line 836
    .restart local v4    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .restart local v6    # "availableDisplays":[Landroid/hardware/display/SemWifiDisplay;
    .restart local v11    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplay;>;"
    .restart local v12    # "displays":[Landroid/hardware/display/SemWifiDisplay;
    :cond_12
    array-length v0, v6

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_f

    .line 837
    const-string/jumbo v32, "Bixby_SmartView"

    const-string/jumbo v33, "Devices are searched"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v32, v0

    const-string/jumbo v33, "Search1TV"

    const-string/jumbo v34, "Match"

    const-string/jumbo v35, "no"

    invoke-virtual/range {v32 .. v35}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->BIXBY_SEARCH_STATE_ID:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v32, v0

    sget-object v33, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 841
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    goto/16 :goto_3

    .line 845
    .restart local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    :cond_13
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_4

    .line 853
    .end local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-nez v32, :cond_10

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/Collection;->size()I

    move-result v15

    .line 858
    .local v15, "dlnaCount":I
    const/16 v29, 0x0

    .line 859
    .local v29, "routeCount":I
    const/16 v25, 0x0

    .line 860
    .local v25, "remoteDisplayRouteCount":I
    sget-boolean v32, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v32, :cond_16

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v29

    .line 862
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "routeCount : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_16

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v28

    .line 867
    .local v28, "route":Landroid/media/MediaRouter$RouteInfo;
    const/16 v32, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v32

    if-eqz v32, :cond_15

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_15

    .line 868
    add-int/lit8 v25, v25, 0x1

    .line 864
    :cond_15
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 874
    .end local v18    # "i":I
    .end local v28    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedDisplay(Z)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v20

    .line 875
    .local v20, "lastConnectedDisplay":Landroid/hardware/display/SemWifiDisplay;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v21

    .line 876
    .local v21, "lastConnectedDlnaDevice":Landroid/hardware/display/SemDlnaDevice;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getLastConnectedGCastDevice()Ljava/lang/String;

    move-result-object v22

    .line 878
    .local v22, "lastConnectedGCastDevice":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/Wfd_Certification;->getCertificationModeOn()Z

    move-result v32

    if-eqz v32, :cond_17

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/Wfd_Certification;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    .line 882
    :cond_17
    if-eqz v4, :cond_2c

    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v5, v0, :cond_2c

    .line 883
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    .line 884
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 885
    return-void

    .line 888
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v32, v0

    if-nez v32, :cond_1b

    .line 889
    new-instance v32, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 894
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v9

    .line 895
    .local v9, "connectedState":I
    const/16 v32, 0xa

    move/from16 v0, v32

    if-eq v9, v0, :cond_19

    const/16 v32, 0xd

    move/from16 v0, v32

    if-ne v9, v0, :cond_1c

    .line 896
    :cond_19
    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v26

    .line 897
    .local v26, "remoteP2pMacAddr":Ljava/lang/String;
    if-eqz v26, :cond_1d

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "dlna$iterator":Ljava/util/Iterator;
    :cond_1a
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 899
    .local v13, "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1a

    .line 900
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_8

    .line 891
    .end local v9    # "connectedState":I
    .end local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v14    # "dlna$iterator":Ljava/util/Iterator;
    .end local v26    # "remoteP2pMacAddr":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_7

    .line 905
    .restart local v9    # "connectedState":I
    :cond_1c
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/SemWifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 908
    :cond_1d
    array-length v0, v6

    move/from16 v32, v0

    if-nez v32, :cond_1e

    if-nez v25, :cond_1e

    if-nez v15, :cond_1e

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_2a

    .line 911
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 913
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1f

    .line 914
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_2b

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    .line 940
    .end local v9    # "connectedState":I
    :cond_1f
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v32, v0

    if-nez v32, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 941
    :cond_20
    array-length v0, v6

    move/from16 v32, v0

    if-nez v32, :cond_21

    if-nez v25, :cond_21

    if-nez v15, :cond_21

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_2f

    .line 944
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 945
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v32

    if-eqz v32, :cond_31

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 950
    :goto_b
    if-eqz v20, :cond_22

    .line 951
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState lastConnectedDisplay.getDeviceName() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", lastConnectedDisplay.getDeviceAddress() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_22
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "applyState mDlnaList = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getBssid()Ljava/lang/String;

    move-result-object v8

    .line 955
    .local v8, "bssid":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getFrequency()I

    move-result v17

    .line 956
    .local v17, "frequency":I
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "bssid : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", frequency : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "dlna$iterator":Ljava/util/Iterator;
    :cond_23
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_26

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 959
    .restart local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v19

    .line 960
    .local v19, "isSupportScreenSharing":Z
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    :goto_c
    if-nez v32, :cond_24

    .line 961
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_33

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_33

    .line 966
    :cond_24
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBixbyEnabled:Z

    move/from16 v32, v0

    if-nez v32, :cond_25

    .line 967
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v32

    if-eqz v32, :cond_36

    .line 980
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBixbyEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_23

    .line 981
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    move/from16 v32, v0

    if-nez v32, :cond_23

    .line 982
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToOneDeviceConnect:Z

    move/from16 v32, v0

    .line 980
    if-eqz v32, :cond_23

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/Collection;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_23

    .line 984
    const/16 v32, 0x2

    move/from16 v0, v32

    if-eq v5, v0, :cond_23

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_23

    .line 986
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v32

    if-nez v32, :cond_23

    .line 987
    const-string/jumbo v33, "WifiDisplaySettings"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Only one device found, connect to "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    if-eqz v19, :cond_3a

    const-string/jumbo v32, "sharing"

    :goto_e
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v34, " device"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    if-eqz v19, :cond_3b

    sget-object v32, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    :goto_f
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v13, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 989
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    .line 991
    const-string/jumbo v32, "Bixby_SmartView"

    const-string/jumbo v33, "Connecting to the device"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v32, v0

    const-string/jumbo v33, "Search1TV"

    const-string/jumbo v34, "Match"

    const-string/jumbo v35, "yes"

    invoke-virtual/range {v32 .. v35}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->BIXBY_SEARCH_STATE_ID:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const-string/jumbo v33, "Connecting to the device"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v32, v0

    sget-object v33, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 996
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    .line 1001
    .end local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v19    # "isSupportScreenSharing":Z
    :cond_26
    :goto_10
    const/16 v32, 0x0

    array-length v0, v6

    move/from16 v33, v0

    :goto_11
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_42

    aget-object v10, v6, v32

    .line 1002
    .restart local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    const/4 v7, 0x0

    .line 1003
    .local v7, "both":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_27
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_28

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1004
    .restart local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    const-string/jumbo v34, "WifiDisplaySettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "SemWifiDisplay Mac Address = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " Dlna Mac Address = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_27

    .line 1006
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v8, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v34

    .line 1005
    if-eqz v34, :cond_27

    .line 1007
    const/4 v7, 0x1

    .line 1011
    .end local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    :cond_28
    if-eqz v7, :cond_3c

    .line 1001
    :cond_29
    :goto_12
    add-int/lit8 v32, v32, 0x1

    goto :goto_11

    .line 909
    .end local v7    # "both":Z
    .end local v8    # "bssid":Ljava/lang/String;
    .end local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    .end local v14    # "dlna$iterator":Ljava/util/Iterator;
    .end local v17    # "frequency":I
    .restart local v9    # "connectedState":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 917
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto/16 :goto_a

    .line 920
    .end local v9    # "connectedState":I
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v32

    if-eqz v32, :cond_2e

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "dlna$iterator":Ljava/util/Iterator;
    :cond_2d
    :goto_13
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 922
    .restart local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v27

    .line 923
    .local v27, "retDeviceUid":Ljava/lang/String;
    if-eqz v27, :cond_2d

    .line 924
    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2d

    .line 925
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_13

    .line 929
    .end local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v14    # "dlna$iterator":Ljava/util/Iterator;
    .end local v27    # "retDeviceUid":Ljava/lang/String;
    :cond_2e
    sget-boolean v32, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v32, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v32

    if-eqz v32, :cond_1f

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    const/16 v33, 0x4

    invoke-virtual/range {v32 .. v33}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v28

    .line 933
    .restart local v28    # "route":Landroid/media/MediaRouter$RouteInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v30

    .line 934
    .local v30, "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    if-eqz v30, :cond_1f

    .line 935
    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "addPreference connected GCast"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    .line 942
    .end local v28    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v30    # "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1082
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 1083
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v32

    if-eqz v32, :cond_46

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto/16 :goto_5

    .line 948
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    .line 960
    .restart local v8    # "bssid":Ljava/lang/String;
    .restart local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .restart local v14    # "dlna$iterator":Ljava/util/Iterator;
    .restart local v17    # "frequency":I
    .restart local v19    # "isSupportScreenSharing":Z
    :cond_32
    const/16 v32, 0x0

    goto/16 :goto_c

    .line 962
    :cond_33
    if-eqz v19, :cond_34

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v8, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v32

    if-nez v32, :cond_35

    :cond_34
    if-nez v19, :cond_24

    .line 963
    :cond_35
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 968
    :cond_36
    if-eqz v19, :cond_37

    if-eqz v20, :cond_37

    .line 969
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 968
    if-eqz v32, :cond_37

    .line 970
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v8, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z

    move-result v32

    .line 968
    if-eqz v32, :cond_37

    .line 971
    if-nez v5, :cond_37

    .line 973
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_25

    .line 974
    const-string/jumbo v33, "WifiDisplaySettings"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "last connect to "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    if-eqz v19, :cond_38

    const-string/jumbo v32, "sharing"

    :goto_15
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v34, " device"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    if-eqz v19, :cond_39

    sget-object v32, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    :goto_16
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v13, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 978
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto/16 :goto_10

    .line 972
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v32, v0

    if-nez v32, :cond_25

    if-eqz v21, :cond_25

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v13}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 966
    if-eqz v32, :cond_25

    goto :goto_14

    .line 974
    :cond_38
    const-string/jumbo v32, "dlna"

    goto :goto_15

    .line 976
    :cond_39
    sget-object v32, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    goto :goto_16

    .line 987
    :cond_3a
    const-string/jumbo v32, "dlna"

    goto/16 :goto_e

    .line 988
    :cond_3b
    sget-object v32, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    goto/16 :goto_f

    .line 1014
    .end local v13    # "dlna":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v19    # "isSupportScreenSharing":Z
    .restart local v7    # "both":Z
    .restart local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    :cond_3c
    const-string/jumbo v34, "WifiDisplaySettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "applyState add wfd device = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {v10, v4}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v34

    if-nez v34, :cond_3d

    .line 1017
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v10, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/SemWifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1020
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_3e

    .line 1021
    if-nez v5, :cond_3e

    .line 1022
    const-string/jumbo v34, "WifiDisplaySettings"

    const-string/jumbo v35, "connect for smart-school"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    new-instance v34, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct/range {v34 .. v35}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    .line 1026
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    goto/16 :goto_12

    .line 1027
    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBixbyEnabled:Z

    move/from16 v34, v0

    if-nez v34, :cond_3f

    .line 1028
    if-eqz v20, :cond_3f

    .line 1029
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v34

    .line 1027
    if-eqz v34, :cond_3f

    .line 1030
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 1027
    if-eqz v34, :cond_3f

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_3f

    if-nez v5, :cond_3f

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v34

    if-eqz v34, :cond_41

    .line 1036
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/settings/wfd/Wfd_Certification;->getCertificationModeOn()Z

    move-result v34

    if-nez v34, :cond_29

    .line 1037
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v34

    if-eqz v34, :cond_40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToOneDeviceConnect:Z

    move/from16 v34, v0

    if-eqz v34, :cond_29

    :cond_40
    if-nez v5, :cond_29

    .line 1038
    array-length v0, v6

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_29

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_29

    .line 1040
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v34

    if-nez v34, :cond_29

    .line 1041
    const-string/jumbo v34, "WifiDisplaySettings"

    const-string/jumbo v35, "Only one device found"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    new-instance v34, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v10, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 1044
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    .line 1045
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBixbyEnabled:Z

    move/from16 v34, v0

    if-eqz v34, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    move/from16 v34, v0

    if-nez v34, :cond_29

    .line 1046
    const-string/jumbo v34, "Bixby_SmartView"

    const-string/jumbo v35, "Connecting to the device"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v34, v0

    const-string/jumbo v35, "Search1TV"

    const-string/jumbo v36, "Match"

    const-string/jumbo v37, "yes"

    invoke-virtual/range {v34 .. v37}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->BIXBY_SEARCH_STATE_ID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v34, v0

    sget-object v35, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual/range {v34 .. v35}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1050
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    goto/16 :goto_12

    .line 1032
    :cond_41
    const-string/jumbo v34, "WifiDisplaySettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "connectLastConnection deviceInfo="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    new-instance v34, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v35, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v10, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 1035
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto/16 :goto_12

    .line 1058
    .end local v7    # "both":Z
    .end local v10    # "d":Landroid/hardware/display/SemWifiDisplay;
    :cond_42
    sget-boolean v32, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v32, :cond_30

    .line 1059
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_17
    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_30

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v28

    .line 1062
    .restart local v28    # "route":Landroid/media/MediaRouter$RouteInfo;
    const/16 v32, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v32

    if-eqz v32, :cond_43

    .line 1063
    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_43

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    move-object/from16 v33, v0

    const/16 v34, 0x4

    invoke-virtual/range {v33 .. v34}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_44

    .line 1059
    :cond_43
    :goto_18
    add-int/lit8 v18, v18, 0x1

    goto :goto_17

    .line 1065
    :cond_44
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v30

    .line 1066
    .restart local v30    # "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    if-eqz v30, :cond_45

    .line 1067
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1069
    :cond_45
    const-string/jumbo v32, "WifiDisplaySettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "route.getName() = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_43

    .line 1072
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_43

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 1071
    if-eqz v32, :cond_43

    .line 1073
    const-string/jumbo v32, "WifiDisplaySettings"

    const-string/jumbo v33, "last connect to GCast device."

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    new-instance v32, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Landroid/media/MediaRouter$RouteInfo;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 1075
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto/16 :goto_18

    .line 1086
    .end local v8    # "bssid":Ljava/lang/String;
    .end local v14    # "dlna$iterator":Ljava/util/Iterator;
    .end local v17    # "frequency":I
    .end local v18    # "i":I
    .end local v28    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v30    # "routePreference":Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    check-cast v32, Lcom/android/settings/wfd/WfdPickerDialog;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wfd/WfdPickerDialog;->showProgressBar(Z)V

    goto/16 :goto_5

    .line 1091
    .end local v4    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .end local v6    # "availableDisplays":[Landroid/hardware/display/SemWifiDisplay;
    .end local v11    # "displayList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplay;>;"
    .end local v12    # "displays":[Landroid/hardware/display/SemWifiDisplay;
    .end local v15    # "dlnaCount":I
    .end local v20    # "lastConnectedDisplay":Landroid/hardware/display/SemWifiDisplay;
    .end local v21    # "lastConnectedDlnaDevice":Landroid/hardware/display/SemDlnaDevice;
    .end local v22    # "lastConnectedGCastDevice":Ljava/lang/String;
    .end local v25    # "remoteDisplayRouteCount":I
    .end local v29    # "routeCount":I
    :cond_47
    const/16 v32, 0x2

    move/from16 v0, v16

    move/from16 v1, v32

    if-eq v0, v1, :cond_48

    .line 1092
    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 1093
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    .line 1094
    const-string/jumbo v33, "device_policy"

    .line 1093
    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/DevicePolicyManager;

    .line 1095
    .local v23, "mDPM":Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_49

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4b

    .line 1096
    :cond_49
    if-eqz v23, :cond_4a

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetAllowWifi(Landroid/content/ComponentName;)Z

    move-result v32

    if-eqz v32, :cond_4b

    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    move/from16 v32, v0

    if-nez v32, :cond_10

    .line 1097
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    if-eqz v32, :cond_4c

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->cancel()V

    .line 1101
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->closeContextMenu()V

    .line 1102
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setGuidedActionBarClickable(Z)V

    goto/16 :goto_5
.end method

.method private canConnectTDLS(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "dlna"    # Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    const/4 v0, 0x0

    .line 1314
    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportTDLS()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getWlanFrequency()I

    move-result v1

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private connectAllShareFW()V
    .locals 6

    .prologue
    .line 1501
    const-string/jumbo v3, "WifiDisplaySettings"

    const-string/jumbo v4, "connectAllShareFW"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :try_start_0
    const-string/jumbo v3, "WifiDisplaySettings"

    const-string/jumbo v4, "ServiceConnector.createServiceProvider"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceConnectListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    const-string/jumbo v5, "com.samsung.android.allshare.media"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    :goto_0
    return-void

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectAllShareFW - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1507
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1508
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectAllShareFW - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1505
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 1506
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectAllShareFW - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private connectDlna(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "resumeFlag"    # Z

    .prologue
    .line 1330
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "connectDlna device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContentUri:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 1332
    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1333
    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1334
    :cond_0
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "Send Content Uri to Music Application"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.START_SMART_VIEW_MULTI_SELECT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1336
    .local v0, "UriIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.INTENT"

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContentUri:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1337
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1339
    .end local v0    # "UriIntent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1340
    .local v1, "connectDlnaIntent":Landroid/content/Intent;
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const-string/jumbo v2, "resume_request"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1342
    const-string/jumbo v3, "player_type"

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1343
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1344
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send Intent DLNA_CONNECTION_REQUEST : uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", resume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return-void

    .line 1342
    :cond_2
    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_0
.end method

.method private connectGCast(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 5
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 2593
    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    .line 2594
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v1, ""

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/hardware/display/DisplayManager;->semConnectDevice(IILjava/lang/Object;Ljava/lang/String;)V

    .line 2596
    const-string/jumbo v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connectGCast route = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 2592
    :cond_0
    return-void
.end method

.method private connectScreenSharing()V
    .locals 20

    .prologue
    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v2, v4, :cond_0

    .line 1192
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v4, "connectScreenSharing ConnectingDevice.mType == ConnectionType.NA"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    return-void

    .line 1196
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v2, v4, :cond_1

    .line 1200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "gcast"

    const v5, 0x2208a

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v4, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectGCast(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1264
    :goto_0
    const-string/jumbo v2, "CONN"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    return-void

    .line 1207
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v16

    .line 1209
    .local v16, "isVideoRunning":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v2, v4, :cond_a

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v13, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    .line 1211
    .local v13, "display":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    :cond_2
    const/4 v15, 0x1

    .line 1212
    .local v15, "isSupportScreenSharing":Z
    :goto_1
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectScreenSharing : SemWifiDisplay Info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , devInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-virtual {v13}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v11

    .line 1215
    .local v11, "connectingAddress":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 1216
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v2, :cond_3

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    if-eqz v16, :cond_5

    move v2, v15

    :goto_2
    iput-boolean v2, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    .line 1219
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v5, v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    const/16 v6, 0xb

    invoke-virtual {v2, v6, v4, v5}, Landroid/hardware/display/DisplayManager;->semConnectWifiDisplay(ILjava/lang/String;Z)V

    .line 1223
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10030e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    :goto_4
    if-eqz v15, :cond_8

    const-string/jumbo v2, "3"

    :goto_5
    const/16 v6, 0x1f3f

    invoke-static {v5, v6, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 1224
    const-string/jumbo v4, "CNTP"

    if-eqz v15, :cond_9

    const-string/jumbo v2, "SCR_SHA"

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1211
    .end local v11    # "connectingAddress":Ljava/lang/String;
    .end local v15    # "isSupportScreenSharing":Z
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "isSupportScreenSharing":Z
    goto/16 :goto_1

    .line 1217
    .restart local v11    # "connectingAddress":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 1221
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_3

    .line 1223
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10030b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    goto :goto_4

    :cond_8
    const-string/jumbo v2, "1"

    goto :goto_5

    .line 1224
    :cond_9
    const-string/jumbo v2, "SCR_MIR"

    goto :goto_6

    .line 1226
    .end local v11    # "connectingAddress":Ljava/lang/String;
    .end local v13    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v15    # "isSupportScreenSharing":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v12, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1227
    .local v12, "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getWlanMacAddress()Ljava/lang/String;

    move-result-object v18

    .line 1228
    .local v18, "wlanMacAddress":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportTDLS()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v18, :cond_b

    .line 1229
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start TDLS with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Landroid/net/wifi/WifiManager;->startMediaShare(Ljava/lang/String;Z)V

    .line 1232
    :cond_b
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v15

    .line 1233
    .local v15, "isSupportScreenSharing":Z
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isOnlySupportsAudio()Z

    move-result v14

    .line 1234
    .local v14, "isOnlySupportsAudio":Z
    const-string/jumbo v4, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectScreenSharing : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v15, :cond_e

    const-string/jumbo v2, "ScreenSharingDevice Info "

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getModelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " isOnlySupportsAudio : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v14, :cond_f

    const-string/jumbo v2, "True"

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    if-eqz v15, :cond_14

    .line 1237
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v2, :cond_c

    if-eqz v14, :cond_10

    .line 1240
    :cond_c
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1241
    .local v3, "localAddress":Ljava/lang/String;
    if-eqz v14, :cond_12

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v19, v0

    const-string/jumbo v4, "7236"

    const-string/jumbo v6, ""

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v9, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v5, 0xd

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/wfd/WifiDisplaySettings;->setParamData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->enableWifiDisplay(Ljava/lang/String;)V

    .line 1246
    :goto_a
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDLNA()Lcom/samsung/android/allshare/Device;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/allshare/ScreenSharingDevice;

    .line 1247
    .local v17, "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    if-eqz v2, :cond_13

    .line 1250
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->updateDlnaList()V

    .line 1259
    .end local v3    # "localAddress":Ljava/lang/String;
    .end local v17    # "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10030e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    :goto_c
    if-eqz v15, :cond_16

    const-string/jumbo v2, "3"

    :goto_d
    const/16 v6, 0x1f3f

    invoke-static {v5, v6, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 1260
    const-string/jumbo v4, "CNTP"

    if-eqz v15, :cond_17

    const-string/jumbo v2, "SCR_SHA"

    :goto_e
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1234
    :cond_e
    const-string/jumbo v2, "DlnaDevice Info "

    goto/16 :goto_7

    :cond_f
    const-string/jumbo v2, "False"

    goto/16 :goto_8

    .line 1238
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    if-eqz v16, :cond_11

    move v2, v15

    :goto_f
    iput-boolean v2, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    goto/16 :goto_9

    :cond_11
    const/4 v2, 0x0

    goto :goto_f

    .line 1244
    .restart local v3    # "localAddress":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v19, v0

    const-string/jumbo v4, "7236"

    const-string/jumbo v6, ""

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v9, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v5, 0xa

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/wfd/WifiDisplaySettings;->setParamData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->enableWifiDisplay(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1252
    .restart local v17    # "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    :cond_13
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "mirroring"

    const v5, 0x2208a

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v4, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1254
    .end local v3    # "localAddress":Ljava/lang/String;
    .end local v17    # "ssDevice":Lcom/samsung/android/allshare/ScreenSharingDevice;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    if-nez v2, :cond_d

    .line 1255
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "dlna"

    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v5

    const v6, 0x2208a

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v4, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    invoke-virtual {v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectDlna(Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 1259
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10030b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v4, v2

    goto/16 :goto_c

    :cond_16
    const-string/jumbo v2, "2"

    goto/16 :goto_d

    .line 1260
    :cond_17
    const-string/jumbo v2, "DLNA"

    goto/16 :goto_e
.end method

.method private connectWifiDisplay(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectingDevice"    # Ljava/lang/String;

    .prologue
    .line 1183
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "connectWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1186
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1187
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 1182
    return-void
.end method

.method private connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1296
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "connectWifiDisplayWithPin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1299
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1300
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    .line 1301
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method private createDlnaPreference(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;
    .locals 2
    .param p1, "device"    # Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .prologue
    .line 1358
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V

    return-object v0
.end method

.method private createDongleRenameDialog()Landroid/app/AlertDialog;
    .locals 18

    .prologue
    .line 2316
    const/16 v2, 0x17

    .line 2317
    .local v2, "MAX_NAME_LENGTH":I
    const/16 v3, 0x17

    .line 2319
    .local v3, "MIN_NAME_LENGTH":I
    const/4 v15, 0x2

    new-array v7, v15, [Landroid/text/InputFilter;

    .line 2320
    .local v7, "filters":[Landroid/text/InputFilter;
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$19;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$19;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const/16 v16, 0x0

    aput-object v15, v7, v16

    .line 2340
    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    const/16 v16, 0x18

    invoke-direct/range {v15 .. v16}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/16 v16, 0x1

    aput-object v15, v7, v16

    .line 2342
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 2343
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x7f04032e

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 2344
    .local v10, "layout":Landroid/view/View;
    const v15, 0x7f11073a

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 2345
    .local v12, "mEditDeviceName":Landroid/widget/EditText;
    const v15, 0x7f11073b

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceNameErrorText:Landroid/widget/TextView;

    .line 2346
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 2348
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    .line 2349
    const v15, 0x7f11073c

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2350
    .local v5, "availableSpecialChars":Landroid/widget/TextView;
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2351
    const v15, 0x7f11073d

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2352
    .local v14, "specialChars":Landroid/widget/TextView;
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2353
    const-string/jumbo v15, "~`!@$%^&*()-_=+[];\\:\'\",<.>/?"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2355
    const/4 v15, 0x6

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2356
    const/16 v15, 0x4000

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 2357
    invoke-virtual {v12, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2359
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v15}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v4

    .line 2361
    .local v4, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    if-eqz v4, :cond_0

    .line 2362
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    if-nez v15, :cond_1

    .line 2363
    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2369
    :cond_0
    :goto_0
    new-instance v11, Lcom/android/settings/wfd/WifiDisplaySettings$20;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$20;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)V

    .line 2381
    .local v11, "mDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 2382
    invoke-virtual {v12}, Landroid/widget/EditText;->selectAll()V

    .line 2383
    const-string/jumbo v15, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/wfd/WifiDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    .line 2385
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2386
    const v16, 0x7f0b0eb1

    .line 2385
    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 2388
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0b14b6

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wfd/WifiDisplaySettings$21;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$21;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/SemWifiDisplay;)V

    .line 2385
    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 2401
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0b14b7

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/settings/wfd/WifiDisplaySettings$22;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$22;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;Landroid/widget/EditText;)V

    .line 2385
    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 2411
    .local v6, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2412
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$23;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$23;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2418
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 2419
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$24;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/android/settings/wfd/WifiDisplaySettings$24;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2428
    const/4 v15, -0x1

    invoke-virtual {v6, v15}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    .line 2429
    .local v13, "mOkButton":Landroid/widget/Button;
    new-instance v15, Lcom/android/settings/wfd/WifiDisplaySettings$25;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$25;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2454
    return-object v6

    .line 2365
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v11    # "mDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    .end local v13    # "mOkButton":Landroid/widget/Button;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    const/4 v2, 0x0

    .line 1306
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 1307
    .local v0, "display":Landroid/hardware/display/SemWifiDisplay;
    if-nez v0, :cond_0

    .line 1308
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    return-object v1

    .line 1310
    :cond_0
    return-object v2
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/SemWifiDisplay;Z)Landroid/preference/Preference;
    .locals 7
    .param p1, "d"    # Landroid/hardware/display/SemWifiDisplay;
    .param p2, "paired"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1599
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/SemWifiDisplay;)V

    .line 1600
    .local v2, "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    .line 1601
    .local v3, "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 1602
    .local v0, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    .line 1603
    .local v1, "activeDisplayState":I
    invoke-virtual {p1, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1604
    packed-switch v1, :pswitch_data_0

    .line 1624
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p2, :cond_1

    .line 1625
    const v4, 0x7f040361

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setWidgetLayoutResource(I)V

    .line 1627
    :cond_1
    return-object v2

    .line 1606
    :pswitch_1
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "SemWifiDisplayStatus.DISPLAY_STATE_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1610
    :pswitch_2
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "SemWifiDisplayStatus.DISPLAY_STATE_CONNECTING"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    invoke-virtual {v2, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1616
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1617
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->canConnect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1618
    const v4, 0x7f0b1196

    invoke-virtual {v2, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    .line 1619
    invoke-virtual {v2, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private disconnectAllShareFW()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1515
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "disconnectAllShareFW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1519
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1520
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    .line 1514
    return-void
.end method

.method private disconnectDevice()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1741
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1742
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    .line 1744
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iput-boolean v5, v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    .line 1745
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.screensharing.CHANGE_DEVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1747
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v0

    .line 1748
    .local v0, "activeDLNAState":I
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1749
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v1

    .line 1750
    .local v1, "connectedState":I
    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 1751
    :cond_0
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect AP Mirroring device for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1757
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semDisconnectWifiDisplay()V

    .line 1769
    .end local v1    # "connectedState":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->removeLastConnectedDevice(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    .line 1740
    return-void

    .line 1754
    .restart local v1    # "connectedState":I
    :cond_2
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect Wifidisplay for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    goto :goto_0

    .line 1758
    .end local v1    # "connectedState":I
    :cond_3
    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 1759
    if-ne v0, v5, :cond_5

    .line 1760
    :cond_4
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect Dlna device for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1762
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semGetDlnaDeviceUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDlna(Ljava/lang/String;)V

    goto :goto_1

    .line 1763
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1764
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnect GCast device for changing device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    sget-object v2, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1766
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectGCast()V

    goto :goto_1
.end method

.method private disconnectDlna(Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1348
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "disconnectDlna device"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1350
    .local v0, "disconnectDlnaIntent":Landroid/content/Intent;
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1352
    .local v1, "keepAliveApplication":Z
    :goto_0
    const-string/jumbo v2, "keep_alive"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1353
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1354
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send Intent DLNA_DISCONNECTION_REQUEST : uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", keepAliveApplication = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    return-void

    .line 1351
    .end local v1    # "keepAliveApplication":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "keepAliveApplication":Z
    goto :goto_0
.end method

.method private disconnectGCast()V
    .locals 3

    .prologue
    .line 2602
    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    .line 2603
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "disconnectGCast device"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v1}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 2601
    :cond_0
    return-void
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplay;
    .locals 6
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1318
    if-eqz p1, :cond_1

    .line 1319
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getDisplays()[Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    .line 1320
    .local v1, "displays":[Landroid/hardware/display/SemWifiDisplay;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1321
    .local v0, "display":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1322
    return-object v0

    .line 1320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1326
    .end local v0    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v1    # "displays":[Landroid/hardware/display/SemWifiDisplay;
    :cond_1
    return-object v5
.end method

.method private finishSettings()V
    .locals 2

    .prologue
    .line 1461
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "finishSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;

    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    .line 1460
    :goto_0
    return-void

    .line 1465
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finish()V

    goto :goto_0
.end method

.method private getBssid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1373
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1374
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 1375
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, "bssid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "bssid":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "bssid":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1378
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private getFrequency()I
    .locals 2

    .prologue
    .line 1382
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1383
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    return v1

    .line 1386
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method private getLastConnectedGCastDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2610
    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    .line 2611
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedGCastDevice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2612
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedGCastDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2615
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getScreenSharingP2pMacAddr(Lcom/samsung/android/allshare/Device;)Ljava/lang/String;
    .locals 5
    .param p1, "device"    # Lcom/samsung/android/allshare/Device;

    .prologue
    .line 1363
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.allshare.Device"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1364
    .local v1, "klass":Ljava/lang/Class;
    const-string/jumbo v3, "getScreenSharingP2pMacAddr"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1365
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1366
    .end local v1    # "klass":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1367
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1369
    const-string/jumbo v3, ""

    return-object v3
.end method

.method private handlePreferenceScreenEnabled(I)V
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 1734
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1735
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1736
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1737
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1733
    return-void
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 2556
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.screensharing.LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2557
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2558
    const-string/jumbo v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2560
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2554
    return-void
.end method

.method private isAnyDeviceConnected()Z
    .locals 1

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isGCastConnected()Z
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 2578
    sget-boolean v2, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v2, :cond_2

    .line 2579
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 2580
    .local v1, "selectedRoute":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v1, v3}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2581
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 2582
    .local v0, "connected":Z
    :goto_0
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isGCastConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    return v0

    .line 2581
    .end local v0    # "connected":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "connected":Z
    goto :goto_0

    .line 2580
    .end local v0    # "connected":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "connected":Z
    goto :goto_0

    .line 2585
    .end local v0    # "connected":Z
    .end local v1    # "selectedRoute":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isPendingForPrevDisconnect()Z
    .locals 2

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    if-eqz v0, :cond_0

    .line 2548
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "Now pending to disconnect for previous connection."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    const/4 v0, 0x1

    return v0

    .line 2551
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private prepareConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1701
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 1702
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 1704
    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "change device"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPinConnectionRequested:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " with pin. "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1705
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v3, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1704
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v0, v1, :cond_3

    .line 1709
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    .line 1710
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iput-boolean v4, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForPrevDisconnect:Z

    .line 1700
    :goto_2
    return-void

    .line 1704
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1706
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v3, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    goto :goto_1

    .line 1712
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReadyToConnect:Z

    .line 1713
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    goto :goto_2
.end method

.method private removeLastConnectedDevice(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 2
    .param p1, "connectionType"    # Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .prologue
    .line 1718
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne p1, v0, :cond_2

    .line 1719
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semGetLastConnectedDisplay(Z)Landroid/hardware/display/SemWifiDisplay;

    .line 1717
    :cond_1
    :goto_0
    return-void

    .line 1720
    :cond_2
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne p1, v0, :cond_3

    .line 1721
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semRemoveLastConnectedDlnaDevice()V

    goto :goto_0

    .line 1722
    :cond_3
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->GCAST:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-ne p1, v0, :cond_1

    .line 1723
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semRemoveLastConnectedGCastDevice()V

    goto :goto_0
.end method

.method private requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "cause"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceType"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    .line 2522
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestPopup cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.SHOW_WIFI_DISPLAY_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2525
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10808000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2526
    packed-switch p1, :pswitch_data_0

    .line 2538
    :goto_0
    const-string/jumbo v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2539
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2521
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 2529
    .restart local v1    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "requestPopup << SEM_POPUP_TYPE_CONNECTING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    const-string/jumbo v2, "DeviceName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2531
    const-string/jumbo v2, "deviceType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2532
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2541
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2542
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "intent call exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2526
    nop

    :pswitch_data_0
    .packed-switch 0x2208a
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleUpdate(I)V
    .locals 2
    .param p1, "changes"    # I

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 694
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 697
    :cond_0
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 692
    :cond_1
    return-void
.end method

.method private semGetDlnaDeviceUid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2570
    const-string/jumbo v0, ""

    .line 2571
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2572
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2574
    :cond_0
    return-object v0
.end method

.method private semIsDlnaDeviceConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2565
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendScreenSharingTriggerMsg(Lcom/samsung/android/allshare/ScreenSharingDevice;)V
    .locals 6
    .param p1, "ssDevice"    # Lcom/samsung/android/allshare/ScreenSharingDevice;

    .prologue
    .line 1288
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getWlanMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1289
    .local v2, "wlanMacAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getP2pMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1290
    .local v1, "p2pMacAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wfd/WfdSettingsUtils;->getBluetoothMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, "btMacAddress":Ljava/lang/String;
    const-string/jumbo v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendScreenSharingTriggerMsg :  wlanMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " p2pMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " btMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/16 v3, 0x1c44

    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/samsung/android/allshare/ScreenSharingDevice;->connectScreenSharingM2TV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1287
    return-void
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2473
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2474
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2476
    .local v0, "ab":Landroid/app/ActionBar;
    :cond_0
    if-eqz v0, :cond_2

    .line 2477
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 2479
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2480
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_1

    .line 2481
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2482
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2485
    :cond_1
    if-eqz p1, :cond_2

    .line 2486
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2472
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setMenuIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 597
    .local v0, "isLandscape":Z
    :goto_0
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMenuIcon():: isLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    if-nez v2, :cond_1

    .line 600
    const-string/jumbo v2, "WifiDisplaySettings"

    const-string/jumbo v3, "onConfigurationChanged:: menu item is not created yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    .line 596
    .end local v0    # "isLandscape":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isLandscape":Z
    goto :goto_0

    .line 603
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 604
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v1

    .line 606
    .local v1, "retcon":Z
    if-eqz v1, :cond_2

    .line 607
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 608
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 595
    :cond_2
    return-void
.end method

.method private setParamData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z
    .param p8, "uri"    # Ljava/lang/String;

    .prologue
    .line 1270
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1272
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "ipAddr"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1273
    const-string/jumbo v2, "port"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1274
    const-string/jumbo v2, "deviceType"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1275
    const-string/jumbo v2, "options"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1276
    const-string/jumbo v2, "deviceName"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1277
    const-string/jumbo v2, "remoteP2pMacAddr"

    invoke-virtual {v1, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1278
    const-string/jumbo v2, "isPendingRequest"

    invoke-virtual {v1, v2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1279
    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :goto_0
    const-string/jumbo v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParamData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "WifiDisplaySettings"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPreferenceScreenEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1728
    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferenceScreenEnabled enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1730
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1727
    return-void
.end method

.method private showDisconnectDialog()V
    .locals 3

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 688
    const-string/jumbo v1, "wifi_display_on"

    const/4 v2, 0x0

    .line 687
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 686
    return-void
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2494
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2495
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$26;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$26;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 2504
    const-wide/16 v2, 0xc8

    .line 2495
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2492
    :goto_0
    return-void

    .line 2506
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$27;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$27;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 2517
    const-wide/16 v2, 0x1

    .line 2506
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showOptionsDialog(Landroid/hardware/display/SemWifiDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/SemWifiDisplay;

    .prologue
    .line 1631
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040360

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1632
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f110286

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1633
    .local v3, "nameEditText":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1635
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$17;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$17;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/SemWifiDisplay;)V

    .line 1646
    .local v1, "done":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$18;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$18;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;)V

    .line 1653
    .local v2, "forget":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1654
    const/4 v6, 0x1

    .line 1653
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1655
    const v6, 0x7f0b1199

    .line 1653
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1657
    const v6, 0x7f0b119b

    .line 1653
    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1658
    const v6, 0x7f0b119a

    .line 1653
    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1660
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1630
    return-void
.end method

.method private startListen()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1470
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1471
    const-string/jumbo v2, "wifi_display_on"

    .line 1470
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1471
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 1470
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1472
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1473
    const-string/jumbo v2, "wifi_display_certification_on"

    .line 1472
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1473
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 1472
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1474
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1475
    const-string/jumbo v2, "wifi_display_wps_config"

    .line 1474
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1475
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 1474
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1477
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1478
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1479
    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1482
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    .line 1485
    sget-boolean v1, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v1, :cond_0

    .line 1486
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 1469
    :cond_0
    return-void
.end method

.method private stopListen()V
    .locals 2

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1493
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    .line 1494
    sget-boolean v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 1497
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1491
    return-void
.end method

.method private switchChanged(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1677
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    if-ne p1, v0, :cond_0

    .line 1678
    return-void

    .line 1680
    :cond_0
    if-eqz p1, :cond_1

    .line 1682
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1683
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onCheckedChanged() : already WfdConnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    return-void

    .line 1687
    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 1688
    const-string/jumbo v0, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1691
    const-string/jumbo v3, "wifi_display_on"

    if-eqz p1, :cond_3

    move v0, v1

    .line 1690
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1693
    if-eqz p1, :cond_2

    .line 1694
    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 1697
    :cond_2
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->preChecked:Z

    .line 1676
    return-void

    .line 1691
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unscheduleUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 702
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 703
    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 704
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 701
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 349
    const v0, 0x7f0b1829

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 345
    const/16 v0, 0x66

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 1673
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1672
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x1f3f

    const/4 v2, 0x1

    .line 452
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 454
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onActivityCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 458
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->registerForContextMenu(Landroid/view/View;)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_2

    .line 471
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 472
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10030a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    invoke-static {v1, v3, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 451
    return-void

    .line 467
    :cond_2
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "Connected but mWifiDisplayOnSetting false, so change status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 469
    const-string/jumbo v1, "wifi_display_on"

    .line 468
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10030d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 487
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 614
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 615
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setMenuIcon()V

    .line 613
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 662
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 354
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    .line 357
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const v8, 0x1030132

    invoke-direct {v4, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    .line 358
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "media_router"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    .line 359
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "display"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 360
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 362
    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {v4, v7}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 364
    new-instance v4, Lcom/android/settings/wfd/Wfd_Certification;

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {v4, v7, v8, p0}, Lcom/android/settings/wfd/Wfd_Certification;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    .line 366
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdBrokerRunning(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.intent.action.DISMISS_WIFI_DISPLAY_POPUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    .line 371
    .local v3, "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    if-ne v4, v10, :cond_8

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 372
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 374
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isGCastConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 375
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v7, "onCreate() GCast is connected. mStartWithConnectedState = true"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    .line 378
    :cond_2
    const v4, 0x7f080155

    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 379
    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/wfd/WfdPickerDialog;

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    .line 382
    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    invoke-direct {v4, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 398
    const-string/jumbo v4, "deviceAddress"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingAddressForSmartSchool:Ljava/lang/String;

    .line 402
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v4, :cond_3

    .line 403
    const-string/jumbo v4, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate() : mInPickerDialog="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_3
    const-string/jumbo v4, "more_actions_package_name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "packageFrom":Ljava/lang/String;
    const-string/jumbo v4, "more_actions_knox_state"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    .line 408
    const-string/jumbo v4, "more_actions_screen_sharing_mode"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_a

    const/4 v2, 0x1

    .line 409
    .local v2, "showDlnaList":Z
    :goto_2
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContentUri:Landroid/content/Intent;

    .line 410
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContentUri:Landroid/content/Intent;

    if-nez v4, :cond_4

    .line 411
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v7, "Uri intent is null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 415
    const-string/jumbo v4, "bixbyByRoot"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 416
    const-string/jumbo v4, "Bixby_SmartView"

    const-string/jumbo v7, "Call BixBy by Root"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBixbyEnabled:Z

    .line 424
    :cond_5
    :goto_3
    if-eqz v1, :cond_7

    .line 425
    const-string/jumbo v4, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate() : packageFrom "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-eqz v2, :cond_6

    .line 427
    const-string/jumbo v4, "com.samsung.android.video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 428
    iput v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    .line 438
    :cond_6
    :goto_4
    const-string/jumbo v4, "com.samsung.android.video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 439
    const-string/jumbo v4, "SHA_PAN"

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    .line 447
    :cond_7
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectAllShareFW()V

    .line 353
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "packageFrom":Ljava/lang/String;
    .end local v2    # "showDlnaList":Z
    :cond_8
    move v4, v6

    .line 371
    goto/16 :goto_0

    .line 400
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_9
    const-string/jumbo v4, "cause"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    goto/16 :goto_1

    .line 408
    .restart local v1    # "packageFrom":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "showDlnaList":Z
    goto :goto_2

    .line 419
    :cond_b
    const-string/jumbo v4, "Bixby_SmartView"

    const-string/jumbo v7, "Set InterimStateListener!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->BIXBY_SEARCH_STATE_ID:Ljava/lang/String;

    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    goto :goto_3

    .line 429
    :cond_c
    const-string/jumbo v4, "com.sec.android.gallery3d"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 430
    iput v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_4

    .line 431
    :cond_d
    const-string/jumbo v4, "com.sec.android.app.music"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 432
    iput v10, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_4

    .line 433
    :cond_e
    const-string/jumbo v4, "com.samsung.android.app.music.chn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 434
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    goto :goto_4

    .line 440
    :cond_f
    const-string/jumbo v4, "com.sec.android.gallery3d"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 441
    const-string/jumbo v4, "SHA_PAN"

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_5

    .line 442
    :cond_10
    const-string/jumbo v4, "com.sec.android.app.music"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "com.samsung.android.app.music.chn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 443
    :cond_11
    const-string/jumbo v4, "MUSIC"

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectTypeForLogging:Ljava/lang/String;

    goto :goto_5
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 620
    instance-of v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v4, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 622
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v5, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 621
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 623
    .local v3, "preference":Landroid/preference/Preference;
    const v4, 0x7f0b0eab

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 624
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    .line 626
    instance-of v4, v3, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 627
    check-cast v4, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    .line 628
    .local v1, "display":Landroid/hardware/display/SemWifiDisplay;
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 629
    .local v0, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v1, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnecting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 640
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isDongleRenameAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 641
    check-cast v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 642
    .local v2, "pref":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 643
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "user press to rename!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    .line 619
    .end local v0    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v2    # "pref":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    .end local v3    # "preference":Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 630
    .restart local v0    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/SemWifiDisplay;
    .restart local v3    # "preference":Landroid/preference/Preference;
    :cond_2
    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    check-cast v3, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .end local v3    # "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v5

    sget-object v6, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {v4, v5, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    iput-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 631
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v5, v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 632
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "user press to connect with pin!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 635
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v5, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 636
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPinConnectionRequested:Z

    .line 637
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    goto :goto_0

    .line 634
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 477
    const-string/jumbo v1, "WifiDisplaySettings"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const v1, 0x7f040331

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 479
    .local v0, "sMainView":Landroid/view/View;
    const v1, 0x7f110742

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    .line 480
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNo_device_found_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 481
    const v1, 0x7f110741

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    .line 482
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mChange_device_info:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 531
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDetach()V

    .line 533
    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 536
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    .line 539
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 540
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    .line 546
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_2

    .line 551
    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdBrokerRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.DISMISS_WIFI_DISPLAY_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 558
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectAllShareFW()V

    .line 560
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBixbyEnabled:Z

    if-eqz v0, :cond_5

    .line 561
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    if-nez v0, :cond_4

    .line 562
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 564
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->BIXBY_SEARCH_STATE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 567
    :cond_5
    const-string/jumbo v0, "SDEV"

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 572
    const-string/jumbo v1, "WifiDisplaySettings"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 576
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopListen()V

    .line 578
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/view/ContextMenu;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 587
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    .line 589
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBixbyEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    if-eqz v1, :cond_3

    .line 571
    :cond_2
    :goto_1
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause IllegalArgumentException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOnlyOneDeviceTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 591
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 668
    instance-of v3, p2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 669
    check-cast v2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 670
    .local v2, "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    invoke-virtual {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v1

    .line 671
    .local v1, "display":Landroid/hardware/display/SemWifiDisplay;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 672
    .local v0, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    invoke-virtual {v1, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 673
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->handlePreferenceScreenEnabled(I)V

    .line 675
    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    sget-object v4, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-direct {v3, v1, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;-><init>(Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    .line 676
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAnyDeviceConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 677
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V

    .line 683
    .end local v0    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/SemWifiDisplay;
    .end local v2    # "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 679
    .restart local v0    # "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/SemWifiDisplay;
    .restart local v2    # "p":Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 492
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 493
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 495
    const-string/jumbo v1, "WifiDisplaySettings"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->semSetActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V

    .line 499
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startListen()V

    .line 500
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    .line 502
    const-string/jumbo v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mGlobalEditDeviceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showInputMethod()V

    .line 508
    :cond_0
    const/4 v0, 0x1

    .line 509
    .local v0, "enabledMDM":Z
    if-eqz v0, :cond_1

    .line 510
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 511
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    iput-boolean v4, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    .line 523
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBixbyEnabled:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mExcutorMediatorResponseDone:Z

    if-eqz v1, :cond_5

    .line 491
    :cond_3
    :goto_0
    return-void

    .line 516
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->switchChanged(Z)V

    .line 517
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 518
    return-void

    .line 524
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOnlyOneDeviceTimer:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 525
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceTimer:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public startScanWifiDisplays()V
    .locals 4

    .prologue
    .line 1168
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "startScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x251c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1171
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStartScanWifiDisplays()V

    .line 1167
    :cond_0
    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 2

    .prologue
    .line 1176
    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "stopScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1179
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStopScanWifiDisplays()V

    .line 1175
    return-void
.end method

.method protected update(I)V
    .locals 7
    .param p1, "changes"    # I

    .prologue
    const/4 v4, 0x0

    .line 710
    const-string/jumbo v5, "WifiDisplaySettings"

    const-string/jumbo v6, "update"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->semCheckExceptionalCase()I

    move-result v2

    .line 712
    .local v2, "retExceptionValue":I
    packed-switch v2, :pswitch_data_0

    .line 726
    :pswitch_0
    const/4 v1, 0x0

    .line 729
    .local v1, "invalidateOptions":Z
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 731
    const-string/jumbo v6, "wifi_display_on"

    .line 730
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 733
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdCertification:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-virtual {v4}, Lcom/android/settings/wfd/Wfd_Certification;->updateCertificationMode()V

    .line 735
    const/4 v1, 0x1

    .line 739
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v4, :cond_7

    .line 746
    :cond_2
    and-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_3

    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_5

    .line 747
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    .line 748
    .local v3, "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    .line 752
    .local v0, "activeDisplayState":I
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    if-nez v4, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    .line 753
    :cond_4
    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    .line 754
    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->isScanning()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 761
    .end local v0    # "activeDisplayState":I
    .end local v3    # "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_5
    :goto_0
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_6

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->updateDlnaList()V

    .line 765
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->applyState(Z)V

    .line 709
    return-void

    .line 714
    .end local v1    # "invalidateOptions":Z
    :pswitch_1
    const-string/jumbo v5, "WifiDisplaySettings"

    const-string/jumbo v6, "group play is running!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0eb3

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 716
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 717
    return-void

    .line 719
    :pswitch_2
    const-string/jumbo v5, "WifiDisplaySettings"

    const-string/jumbo v6, "live broadcast is running!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0eb4

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 721
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 722
    return-void

    .line 739
    .restart local v1    # "invalidateOptions":Z
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isPendingForPrevDisconnect()Z

    move-result v4

    if-nez v4, :cond_2

    .line 740
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->finishSettings()V

    .line 741
    return-void

    .line 755
    .restart local v0    # "activeDisplayState":I
    .restart local v3    # "wifiDisplayStatus":Landroid/hardware/display/SemWifiDisplayStatus;
    :cond_8
    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 752
    if-eqz v4, :cond_5

    .line 756
    const-string/jumbo v4, "WifiDisplaySettings"

    const-string/jumbo v5, "update scanWifiDisplays"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    goto :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public updateDlnaList()V
    .locals 22

    .prologue
    .line 1390
    const-string/jumbo v19, "WifiDisplaySettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateDlnaList PlayerType: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const-string/jumbo v18, "TYPE_NONE"

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->clear()V

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1396
    .local v16, "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1397
    .local v9, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const-string/jumbo v18, "AVPLAYER_VIDEO"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1398
    .local v17, "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const-string/jumbo v18, "AVPLAYER_AUDIO"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1399
    .local v6, "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1401
    .local v14, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "dlna$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/allshare/Device;

    .line 1402
    .local v10, "dlna":Lcom/samsung/android/allshare/Device;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1390
    .end local v6    # "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v9    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v10    # "dlna":Lcom/samsung/android/allshare/Device;
    .end local v11    # "dlna$iterator":Ljava/util/Iterator;
    .end local v14    # "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v16    # "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v17    # "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->PlayerType:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    goto/16 :goto_0

    .line 1405
    .restart local v6    # "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .restart local v9    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .restart local v11    # "dlna$iterator":Ljava/util/Iterator;
    .restart local v14    # "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .restart local v16    # "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .restart local v17    # "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mIsKnoxMode:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    .line 1407
    .local v5, "activeDisplayState":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1408
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStartWithConnectedState:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->semIsDlnaDeviceConnected()Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    .line 1414
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/wfd/WfdSettingsUtils;->isVideoRunningOnTop(Landroid/content/Context;)Z

    move-result v15

    .line 1415
    .local v15, "isVideoRunning":Z
    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 1416
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "dmr$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Device;

    .line 1417
    .local v12, "dmr":Lcom/samsung/android/allshare/Device;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1419
    .local v7, "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 1421
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIpAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 1419
    if-eqz v18, :cond_4

    .line 1422
    :cond_6
    const-string/jumbo v19, "WifiDisplaySettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Pending... to request DLNA "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/SemWifiDisplay;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 1424
    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "dlna"

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v20

    const v21, 0x2208a

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    :cond_7
    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectDlna(Ljava/lang/String;Z)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    goto/16 :goto_2

    .line 1422
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 1429
    .end local v7    # "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1433
    .end local v12    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v13    # "dmr$iterator":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 1434
    :cond_b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "dmr$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Device;

    .line 1435
    .restart local v12    # "dmr":Lcom/samsung/android/allshare/Device;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1440
    .end local v12    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v13    # "dmr$iterator":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPlayerType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1441
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "dmr$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Device;

    .line 1442
    .restart local v12    # "dmr":Lcom/samsung/android/allshare/Device;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1448
    .end local v12    # "dmr":Lcom/samsung/android/allshare/Device;
    .end local v13    # "dmr$iterator":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    .line 1449
    const-string/jumbo v18, "WifiDisplaySettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " device total count : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " ssList("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") videoList ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") audioList ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") imageList ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "device$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1452
    .restart local v7    # "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    const-string/jumbo v18, "WifiDisplaySettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "\t device Info : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1455
    .end local v5    # "activeDisplayState":I
    .end local v7    # "device":Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .end local v8    # "device$iterator":Ljava/util/Iterator;
    .end local v15    # "isVideoRunning":Z
    :cond_10
    const-string/jumbo v18, "WifiDisplaySettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " device total count : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDlnaList:Ljava/util/Collection;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " ssList("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "), knox mode is running."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    .end local v6    # "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v9    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v11    # "dlna$iterator":Ljava/util/Iterator;
    .end local v14    # "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v16    # "ssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    .end local v17    # "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    :cond_11
    return-void
.end method
