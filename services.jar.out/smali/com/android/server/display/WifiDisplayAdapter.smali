.class final Lcom/android/server/display/WifiDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayAdapter$1;,
        Lcom/android/server/display/WifiDisplayAdapter$2;,
        Lcom/android/server/display/WifiDisplayAdapter$3;,
        Lcom/android/server/display/WifiDisplayAdapter$4;,
        Lcom/android/server/display/WifiDisplayAdapter$5;,
        Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;,
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;,
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DISCONNECT:Ljava/lang/String; = "android.server.display.wfd.DISCONNECT"

.field private static final CONNECTED_STATE:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DISCONNECTED_STATE:I = 0x0

.field private static final DISPLAY_NAME_PREFIX:Ljava/lang/String; = "wifi:"

.field private static final GOOGLE_CAST_ROUTE_TYPE:I = 0x7

.field private static final MSG_SEND_STATUS_CHANGE_BROADCAST:I = 0x1

.field private static final MSG_UPDATE_NOTIFICATION:I = 0x2

.field private static final SS_WFD_SERVICE_WITH_GCAST:Z

.field private static final TAG:Ljava/lang/String; = "WifiDisplayAdapter"

.field private static final WFD_FLOATING_ICON_CLASS:Ljava/lang/String; = "com.sec.android.app.wfdbroker.wfdfloatingicon.WfdFloatingIconService"

.field private static final WFD_NOTIFICATION:Ljava/lang/String; = "com.samsung.wfd.notification"


# instance fields
.field private mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

.field private mActiveDLNAState:I

.field private mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private mActiveDisplayState:I

.field private mActiveGCastDevice:Landroid/media/MediaRouter$RouteInfo;

.field private mActiveSinkState:I

.field private mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectState:I

.field private mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mDisconnectPendingIntent:Landroid/app/PendingIntent;

.field private mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field private mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

.field private mDisplays:[Landroid/hardware/display/WifiDisplay;

.field mDlnaMonitor:Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;

.field private mFeatureState:I

.field private mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field private final mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

.field private mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

.field private final mIpRemoteDisplayListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

.field private mLastConnectedDlnaDevice:Landroid/hardware/display/SemDlnaDevice;

.field private mLastConnectedGCastDevice:Ljava/lang/String;

.field private mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingNotificationUpdate:Z

.field private mPendingStatusChangeBroadcast:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mQoSLevel:I

.field private mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private mScanRequestedInConnected:Z

.field private mScanState:I

.field private mScreenSharingStatus:I

.field private mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

.field private mSettingsPendingIntent:Landroid/app/PendingIntent;

.field private mStartTime:J

.field private final mSupportsProtectedBuffers:Z

.field private final mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/WifiDisplayAdapter;->SS_WFD_SERVICE_WITH_GCAST:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDlnaDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/display/WifiDisplayAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/media/MediaRouter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRouter:Landroid/media/MediaRouter;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/display/WifiDisplayAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanRequestedInConnected:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/display/WifiDisplayAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/display/WifiDisplayAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -get19(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/WifiDisplayAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/WifiDisplayAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveGCastDevice:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/WifiDisplayAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mQoSLevel:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/display/WifiDisplayAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanRequestedInConnected:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScreenSharingStatus:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/server/display/WifiDisplayAdapter;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mStartTime:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/WifiDisplayAdapter;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveGCastDevice:Landroid/media/MediaRouter$RouteInfo;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveSinkState:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/WifiDisplayAdapter;I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->IsRunningIpRemoteDisplay(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/display/WifiDisplayAdapter;I)Z
    .locals 1
    .param p1, "connectedMode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->isApMirroring(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->handleUpdateNotification()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;)V
    .locals 0
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "device"    # Landroid/hardware/display/SemDlnaDevice;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->initActiveDlnaDevice(Landroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->registerGameManagerCallback()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->rememberedDisplayLocked(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removePresentationDisplayFlag()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->renameDisplayDeviceLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->rotationDisplayDeviceLocked(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/WifiDisplayAdapter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->isGCastConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->sendDlnaDisconnectReqBroadcast()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemDlnaDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/display/SemDlnaDevice;
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->sendDlnaStatusBroadcast(Landroid/hardware/display/SemDlnaDevice;I)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/display/WifiDisplayAdapter;II)V
    .locals 0
    .param p1, "param"    # I
    .param p2, "event"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->sendEventToSemDeviceStatusListener(II)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->sendStartFABBroadcast()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->sendStopFABBroadcast()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/display/WifiDisplayAdapter;Z)V
    .locals 0
    .param p1, "off"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->unregisterGameManagerCallback()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateDisplaysLocked()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerPackageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->updateOverrideDisplayInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->broadcastGCastState(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->checkForegroundGameApp()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->clearActiveDlnaDevice()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->disconnectDeviceLocked()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->fixRememberedDisplayNamesFromAvailableDisplaysLocked()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->handleSendStatusChangeBroadcast()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x138e4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/display/WifiDisplayAdapter;->SS_WFD_SERVICE_WITH_GCAST:Z

    .line 109
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V
    .locals 7
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "persistentDataStore"    # Lcom/android/server/display/PersistentDataStore;

    .prologue
    const/4 v6, 0x0

    .line 184
    const-string/jumbo v5, "WifiDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 150
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 151
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 152
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    .line 162
    iput v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mQoSLevel:I

    .line 167
    iput v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I

    .line 169
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScreenSharingStatus:I

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mStartTime:J

    .line 176
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedGCastDevice:Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 294
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 331
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$2;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

    .line 1180
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$3;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1255
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$4;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1254
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 1554
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$5;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1553
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    .line 185
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    .line 186
    iput-object p5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 187
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    const v1, 0x112007e

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    .line 190
    const-string/jumbo v0, "notification"

    .line 189
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    .line 191
    const-string/jumbo v0, "media_router"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRouter:Landroid/media/MediaRouter;

    .line 183
    return-void
.end method

.method private IsRunningIpRemoteDisplay(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 748
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 749
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 748
    :cond_0
    :goto_0
    return v0

    .line 750
    :cond_1
    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    .line 751
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    .line 752
    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 12
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    .line 948
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 949
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 950
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 951
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 961
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 964
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->removeLastConnectedDevice(I)V

    .line 965
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeLastConnectedGCastDevice()V

    .line 970
    :cond_0
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_4

    const/4 v11, 0x1

    .line 971
    .local v11, "secure":Z
    :goto_1
    const/4 v8, 0x0

    .line 972
    .local v8, "rotation":I
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    .line 973
    const/4 v8, 0x3

    .line 975
    :cond_1
    const/16 v7, 0x40

    .line 976
    .local v7, "deviceFlags":I
    if-eqz v11, :cond_2

    .line 977
    const/16 v7, 0x44

    .line 978
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    if-eqz v0, :cond_2

    .line 979
    or-int/lit8 v7, v7, 0x8

    .line 980
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addDisplayDeviceLocked deviceFlags : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v7, v0

    .line 986
    const/high16 v6, 0x42700000    # 60.0f

    .line 988
    .local v6, "refreshRate":F
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v9

    .line 990
    .local v9, "address":Ljava/lang/String;
    invoke-static {v3, v11}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 991
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    move-object v1, p0

    move v4, p3

    move/from16 v5, p4

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFIILjava/lang/String;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    .line 993
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 945
    return-void

    .line 955
    .end local v2    # "displayToken":Landroid/os/IBinder;
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "refreshRate":F
    .end local v7    # "deviceFlags":I
    .end local v8    # "rotation":I
    .end local v9    # "address":Ljava/lang/String;
    .end local v11    # "secure":Z
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    .line 956
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    .line 957
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 958
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 959
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    goto/16 :goto_0

    .line 970
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "secure":Z
    goto :goto_1
.end method

.method private addPresentationDisplayFlag()V
    .locals 2

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_0

    .line 2051
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "addPresentationDisplayFlag"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->addFlags(I)V

    .line 2053
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 2049
    :cond_0
    return-void
.end method

.method private broadcastGCastState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2438
    sget-boolean v1, Lcom/android/server/display/WifiDisplayAdapter;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v1, :cond_0

    .line 2439
    const-string/jumbo v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcastGCastState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2441
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2443
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2437
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkForegroundGameApp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v1}, Lcom/samsung/android/game/IGameManagerService;->identifyForegroundApp()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 357
    const-string/jumbo v1, "WifiDisplayAdapter"

    const-string/jumbo v2, "Game mode start with Smart View"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string/jumbo v1, "lowl"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WifiDisplayAdapter"

    const-string/jumbo v2, "identifyForegroundApp error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private clearActiveDlnaDevice()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2139
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "clearActiveDlnaDevice"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2141
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->isSwitchingDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2144
    :cond_0
    :goto_0
    const/4 v0, 0x7

    invoke-direct {p0, v7, v0}, Lcom/android/server/display/WifiDisplayAdapter;->sendEventToSemDeviceStatusListener(II)V

    .line 2145
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mStartTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    .line 2146
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisableWiFiP2P()V

    .line 2147
    const-string/jumbo v0, "USTM"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mStartTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    :cond_1
    iput-wide v8, p0, Lcom/android/server/display/WifiDisplayAdapter;->mStartTime:J

    .line 2152
    :cond_2
    iput-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    .line 2153
    iput v7, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I

    .line 2155
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaMonitor:Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;

    if-eqz v0, :cond_3

    .line 2156
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaMonitor:Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->unlinkToDeath()V

    .line 2157
    iput-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaMonitor:Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;

    .line 2137
    :cond_3
    return-void

    .line 2142
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V

    goto :goto_0
.end method

.method private disconnectDeviceLocked()V
    .locals 2

    .prologue
    .line 656
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "disconnectDeviceLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    if-eqz v0, :cond_1

    .line 661
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->sendDlnaDisconnectReqBroadcast()V

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz v0, :cond_2

    .line 665
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    if-eqz v0, :cond_2

    .line 666
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->IsRunningIpRemoteDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    if-eqz v0, :cond_3

    .line 669
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    if-eqz v0, :cond_3

    .line 670
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->IsRunningIpRemoteDisplay(I)Z

    move-result v0

    .line 668
    if-eqz v0, :cond_3

    .line 671
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    invoke-virtual {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->requestDisableWifiDisplay(I)I

    .line 654
    :cond_3
    :goto_0
    return-void

    .line 667
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->requestDisconnect()V

    goto :goto_0
.end method

.method private findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 913
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 914
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 915
    return-object v0

    .line 913
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private fixRememberedDisplayNamesFromAvailableDisplaysLocked()V
    .locals 7

    .prologue
    .line 893
    const/4 v1, 0x0

    .line 894
    .local v1, "changed":Z
    const/4 v2, 0x0

    .end local v1    # "changed":Z
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 895
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    aget-object v3, v4, v2

    .line 897
    .local v3, "rememberedDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    .line 896
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayAdapter;->findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 898
    .local v0, "availableDisplay":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 894
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 900
    :cond_1
    const-string/jumbo v4, "WifiDisplayAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fixRememberedDisplayNamesFromAvailableDisplaysLocked: updating remembered display to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    aput-object v0, v4, v2

    .line 904
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4, v0}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    or-int/2addr v1, v4

    .local v1, "changed":Z
    goto :goto_1

    .line 907
    .end local v0    # "availableDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v1    # "changed":Z
    .end local v3    # "rememberedDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_2
    if-eqz v1, :cond_3

    .line 908
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 888
    :cond_3
    return-void
.end method

.method private getLocalIpAddress()Ljava/lang/String;
    .locals 8

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 483
    .local v3, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 484
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    iget v2, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 487
    .local v2, "serverIp":I
    const-string/jumbo v4, "%d.%d.%d.%d"

    .line 486
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 488
    and-int/lit16 v6, v2, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 489
    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 490
    shr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 491
    shr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 486
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "ipAddress":Ljava/lang/String;
    return-object v1
.end method

.method private handleSendStatusChangeBroadcast()V
    .locals 4

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 1040
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    .line 1041
    return-void

    .line 1044
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    .line 1045
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1047
    const-string/jumbo v1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    .line 1047
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1037
    return-void

    .line 1039
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handleUpdateNotification()V
    .locals 19

    .prologue
    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v5

    monitor-enter v5

    .line 1061
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingNotificationUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit v5

    .line 1062
    return-void

    .line 1065
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingNotificationUpdate:Z

    .line 1067
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    const/4 v11, 0x1

    .local v11, "isDlnaConnected":Z
    :goto_0
    monitor-exit v5

    .line 1073
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1074
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1073
    const/4 v6, 0x0

    .line 1074
    const v7, 0x1040714

    .line 1073
    invoke-virtual {v3, v6, v7, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1076
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v3}, Landroid/hardware/display/SemDlnaDevice;->isSwitchingDevice()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1057
    :cond_1
    :goto_1
    return-void

    .line 1067
    .end local v11    # "isDlnaConnected":Z
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "isDlnaConnected":Z
    goto :goto_0

    .line 1060
    .end local v11    # "isDlnaConnected":Z
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    .line 1077
    .restart local v11    # "isDlnaConnected":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1081
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_4

    .line 1082
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.CAST_SETTINGS"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v4, "settingsIntent":Landroid/content/Intent;
    const/high16 v3, 0x14200000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1087
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1086
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    .line 1090
    .end local v4    # "settingsIntent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_5

    .line 1091
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v3, "android.server.display.wfd.DISCONNECT"

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v10, "disconnectIntent":Landroid/content/Intent;
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1092
    invoke-static {v2, v5, v10, v6, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    .line 1098
    .end local v10    # "disconnectIntent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 1100
    .local v16, "r":Landroid/content/res/Resources;
    new-instance v12, Landroid/app/Notification$Builder;

    invoke-direct {v12, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1102
    .local v12, "mBuilder":Landroid/app/Notification$Builder;
    const/16 v18, 0x0

    .line 1103
    .local v18, "title":Ljava/lang/CharSequence;
    const/16 v17, 0x0

    .line 1104
    .local v17, "subtext":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 1107
    .local v8, "deviceName":Ljava/lang/CharSequence;
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v3}, Landroid/hardware/display/SemDlnaDevice;->isSwitchingDevice()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1112
    .end local v8    # "deviceName":Ljava/lang/CharSequence;
    :cond_6
    :goto_2
    const v3, 0x1040714

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1115
    .local v9, "disconnect":Ljava/lang/CharSequence;
    const v3, 0x1040716

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1116
    .local v18, "title":Ljava/lang/CharSequence;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v3, v5

    const v5, 0x1040717

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1119
    .local v17, "subtext":Ljava/lang/CharSequence;
    const-wide/16 v6, 0x0

    invoke-virtual {v12, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1120
    const v3, 0x1080876

    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1121
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1122
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1123
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1124
    const/4 v3, -0x2

    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1125
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1128
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.wfd.notification"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v13, "noti_intent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v2, v3, v13, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1131
    .local v15, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    invoke-virtual {v12, v3, v9, v15}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1133
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    .line 1135
    .local v14, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1137
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1135
    const/4 v6, 0x0

    .line 1136
    const v7, 0x1040714

    .line 1135
    invoke-virtual {v3, v6, v7, v14, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 1108
    .end local v9    # "disconnect":Ljava/lang/CharSequence;
    .end local v13    # "noti_intent":Landroid/content/Intent;
    .end local v14    # "notification":Landroid/app/Notification;
    .end local v15    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v8    # "deviceName":Ljava/lang/CharSequence;
    .local v17, "subtext":Ljava/lang/CharSequence;
    .local v18, "title":Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v3}, Landroid/hardware/display/SemDlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    .local v8, "deviceName":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private initActiveDlnaDevice(Landroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "device"    # Landroid/hardware/display/SemDlnaDevice;

    .prologue
    .line 2129
    if-eqz p1, :cond_0

    .line 2130
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaMonitor:Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;

    .line 2132
    :cond_0
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    .line 2133
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initActiveDlnaDevice mActiveDLNADevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    return-void
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 2413
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2414
    const-string/jumbo v2, "WifiDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertLog... feature:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", extra:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2417
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.screenmirroring"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2423
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2424
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2426
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2428
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2411
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private isApMirroring(I)Z
    .locals 2
    .param p1, "connectedMode"    # I

    .prologue
    const/4 v0, 0x1

    .line 809
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGCastConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 324
    sget-boolean v1, Lcom/android/server/display/WifiDisplayAdapter;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveGCastDevice:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 327
    :cond_1
    return v0
.end method

.method private registerGameManagerCallback()V
    .locals 6

    .prologue
    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v3, :cond_0

    .line 369
    const-string/jumbo v3, "gamemanager"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 370
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 371
    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 374
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v3, :cond_1

    .line 375
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

    invoke-interface {v3, v4}, Lcom/samsung/android/game/IGameManagerService;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v2

    .line 376
    .local v2, "ret":Z
    const-string/jumbo v3, "WifiDisplayAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerCallback. ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v2    # "ret":Z
    :goto_0
    return-void

    .line 378
    :cond_1
    const-string/jumbo v3, "WifiDisplayAdapter"

    const-string/jumbo v4, "failed to get gamemanager"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiDisplayAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerCallback failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rememberedDisplayLocked(Landroid/hardware/display/WifiDisplay;)V
    .locals 2
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 925
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 926
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 935
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 938
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->removeLastConnectedDevice(I)V

    .line 939
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeLastConnectedGCastDevice()V

    .line 922
    :cond_0
    return-void

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    .line 930
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    .line 931
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 932
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 933
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    goto :goto_0
.end method

.method private removeDisplayDeviceLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 997
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->destroyLocked()V

    .line 999
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 1000
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    .line 996
    :cond_0
    return-void
.end method

.method private removePresentationDisplayFlag()V
    .locals 2

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_0

    .line 2043
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "removePresentationDisplayFlag"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->removeFlags(I)V

    .line 2045
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 2041
    :cond_0
    return-void
.end method

.method private renameDisplayDeviceLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setNameLocked(Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_0
.end method

.method private requestDisableWiFiP2P()V
    .locals 2

    .prologue
    .line 402
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestDisableWiFiP2P"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$7;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$7;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    return-void
.end method

.method private rotationDisplayDeviceLocked(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setRotationLocked(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->sendTraversalRequestLocked()V

    .line 1011
    :cond_0
    return-void
.end method

.method private scheduleStatusChangedBroadcastLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1020
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 1021
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    if-nez v0, :cond_0

    .line 1022
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    .line 1023
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->sendEmptyMessage(I)Z

    .line 1019
    :cond_0
    return-void
.end method

.method private scheduleUpdateNotificationLocked()V
    .locals 2

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingNotificationUpdate:Z

    if-eqz v0, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 1030
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingNotificationUpdate:Z

    .line 1031
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private sendDlnaDisconnectReqBroadcast()V
    .locals 5

    .prologue
    .line 1173
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1174
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 1175
    .local v1, "uid":Ljava/lang/String;
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    const-string/jumbo v2, "WifiDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDlnaDisconnectReqBroadcast::DLNA_DISCONNECTION_REQUEST uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1172
    return-void
.end method

.method private sendDlnaStatusBroadcast(Landroid/hardware/display/SemDlnaDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/display/SemDlnaDevice;
    .param p2, "state"    # I

    .prologue
    .line 2114
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.screensharing.DLNA_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2115
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2116
    const-string/jumbo v1, "device_name"

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2117
    const-string/jumbo v1, "ipAddress"

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2118
    const-string/jumbo v1, "resume_request"

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->isSwitchingDevice()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2119
    const-string/jumbo v1, "player_type"

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2120
    const-string/jumbo v1, "uid"

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2121
    const-string/jumbo v1, "p2pMacAddress"

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2122
    const-string/jumbo v1, "uri"

    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2123
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2112
    return-void
.end method

.method private sendEventToSemDeviceStatusListener(II)V
    .locals 2
    .param p1, "param"    # I
    .param p2, "event"    # I

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$20;-><init>(Lcom/android/server/display/WifiDisplayAdapter;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1239
    return-void
.end method

.method private sendStartFABBroadcast()V
    .locals 2

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$17;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$17;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1143
    return-void
.end method

.method private sendStopFABBroadcast()V
    .locals 2

    .prologue
    .line 1161
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$18;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$18;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1160
    return-void
.end method

.method private turnOffPeriodicWifiScan(Z)V
    .locals 2
    .param p1, "off"    # Z

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$21;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$21;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->post(Ljava/lang/Runnable;)Z

    .line 1745
    return-void
.end method

.method private unregisterGameManagerCallback()V
    .locals 3

    .prologue
    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/game/IGameManagerService;->unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WifiDisplayAdapter"

    const-string/jumbo v2, "mGameManagerService.unregisterCallback error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateDisplaysLocked()V
    .locals 17

    .prologue
    .line 832
    new-instance v11, Ljava/util/ArrayList;

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v3, v3

    add-int/2addr v2, v3

    .line 832
    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 834
    .local v11, "displays":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    new-array v13, v2, [Z

    .line 835
    .local v13, "remembered":[Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    const/4 v2, 0x0

    array-length v0, v15

    move/from16 v16, v0

    move v14, v2

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    aget-object v10, v15, v14

    .line 836
    .local v10, "d":Landroid/hardware/display/WifiDisplay;
    const/4 v9, 0x0

    .line 837
    .local v9, "available":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    if-ge v12, v2, :cond_0

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    aget-object v2, v2, v12

    invoke-virtual {v10, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 839
    const/4 v9, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v13, v12

    .line 843
    :cond_0
    if-nez v9, :cond_1

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v10, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    :cond_1
    :goto_2
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    .line 837
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 851
    :cond_3
    new-instance v1, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 852
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 851
    invoke-direct/range {v1 .. v8}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 861
    .end local v9    # "available":Z
    .end local v10    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v12    # "i":I
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    if-ge v12, v2, :cond_5

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    aget-object v10, v2, v12

    .line 866
    .restart local v10    # "d":Landroid/hardware/display/WifiDisplay;
    new-instance v1, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 867
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v6

    aget-boolean v7, v13, v12

    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x1

    .line 866
    invoke-direct/range {v1 .. v8}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 868
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getIconIdx()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/display/WifiDisplay;->setIconIdx(I)V

    .line 870
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    .line 871
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 878
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v10    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_5
    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 831
    return-void
.end method

.method private updateOverrideDisplayInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "ownerPackageName"    # Ljava/lang/String;

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$19;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$19;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1228
    return-void
.end method

.method private updateRememberedDisplaysLocked()V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 883
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 884
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 885
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateDisplaysLocked()V

    .line 881
    return-void
.end method

.method private updateRememberedDlnaDevice()V
    .locals 3

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getRememberedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedDlnaDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 2279
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRememberedDlnaDevice mLastConnectedDlnaDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedDlnaDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    return-void
.end method

.method private updateRememberedGCastDevice()V
    .locals 3

    .prologue
    .line 2326
    sget-boolean v0, Lcom/android/server/display/WifiDisplayAdapter;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    .line 2328
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "updateRememberedGCastDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getRememberedGCastDevice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedGCastDevice:Ljava/lang/String;

    .line 2331
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRememberedGCastDevice mLastConnectedGCastDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedGCastDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-wide/16 v4, 0xc8

    .line 196
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFeatureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScanState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAvailableDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRememberedDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingStatusChangeBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingNotificationUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingNotificationUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportsProtectedBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConnectState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastRememberedDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastConnectedDlnaDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedDlnaDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDLNADevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDLNAState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenSharingStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScreenSharingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-nez v0, :cond_0

    .line 220
    const-string/jumbo v0, "mDisplayController=null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string/jumbo v0, "mDisplayController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "  "

    invoke-direct {v2, p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 224
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 225
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v3, ""

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 228
    const-string/jumbo v0, "mIpRemoteDisplayController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "  "

    invoke-direct {v8, p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 230
    .local v8, "ipw2":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    const-string/jumbo v9, ""

    move-wide v10, v4

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public getActiveDLNADevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/SemDlnaDevice;

    return-object v0
.end method

.method public getActiveDLNAState()I
    .locals 1

    .prologue
    .line 2066
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I

    return v0
.end method

.method public getDeviceStatus(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "deviceType"    # I

    .prologue
    .line 2244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2245
    .local v0, "bundle":Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 2272
    :pswitch_0
    return-object v0

    .line 2245
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getLastConnectedDevice(I)Landroid/os/Bundle;
    .locals 4
    .param p1, "deviceType"    # I

    .prologue
    .line 2196
    const-string/jumbo v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLastConnectedDevice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2199
    .local v0, "bundle":Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 2209
    :goto_0
    return-object v0

    .line 2201
    :pswitch_0
    const-string/jumbo v1, "device"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2204
    :pswitch_1
    const-string/jumbo v1, "device"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedDlnaDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;
    .locals 4
    .param p1, "cancel"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2392
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLastConnectedDisplay cancel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    if-eqz p1, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_0

    .line 2399
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    .line 2400
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2401
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 2402
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 2405
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public getLastConnectedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 3

    .prologue
    .line 2186
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLastConnectedDlnaDevice mLastConnectedDlnaDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedDlnaDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedDlnaDevice:Landroid/hardware/display/SemDlnaDevice;

    return-object v0
.end method

.method public getLastConnectedGCastDevice()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2298
    sget-boolean v0, Lcom/android/server/display/WifiDisplayAdapter;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    .line 2300
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "getLastConnectedGCastDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLastConnectedGCastDevice mLastConnectedGCastDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedGCastDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedGCastDevice:Ljava/lang/String;

    return-object v0

    .line 2306
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getScreenSharingStatus()I
    .locals 1

    .prologue
    .line 2016
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScreenSharingStatus:I

    return v0
.end method

.method public getWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2374
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWifiDisplayConfiguration key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz v0, :cond_0

    .line 2377
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    if-ne v0, v4, :cond_0

    .line 2378
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->IsRunningIpRemoteDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2380
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    if-eqz v0, :cond_2

    .line 2381
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    if-ne v0, v4, :cond_2

    .line 2382
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->IsRunningIpRemoteDisplay(I)Z

    move-result v0

    .line 2380
    if-eqz v0, :cond_2

    .line 2383
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->getWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2379
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->getWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2386
    :cond_2
    return-object v3
.end method

.method public getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;
    .locals 9

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-nez v0, :cond_0

    .line 763
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    .line 764
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    .line 765
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 766
    iget v7, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    iget v8, p0, Lcom/android/server/display/WifiDisplayAdapter;->mQoSLevel:I

    .line 763
    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;II)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 777
    :cond_0
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWifiDisplayStatusLocked: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 786
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connWithPinSupported: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDongleRenameAvailableLocked()Z
    .locals 2

    .prologue
    .line 797
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "isDongleRenameAvailableLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->IsRunningIpRemoteDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController;->isDongleRenameAvailable()Z

    move-result v0

    return v0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isDongleRenameAvailable()Z

    move-result v0

    return v0
.end method

.method public isKDDIServiceConnected()Z
    .locals 2

    .prologue
    .line 2340
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "isKDDIServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz v0, :cond_0

    .line 2344
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isKDDIServiceConnected()Z

    move-result v0

    return v0

    .line 2346
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceRunning(Ljava/lang/String;)Z
    .locals 7
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 2448
    const/4 v0, 0x0

    .line 2449
    .local v0, "isServiceRunning":Z
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2450
    .local v1, "manager":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2451
    .local v2, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2452
    const/4 v0, 0x1

    .line 2457
    .end local v2    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const-string/jumbo v5, "WifiDisplayAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isServiceRunning["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] return "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_2

    const-string/jumbo v4, "true"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    return v0

    .line 2457
    :cond_2
    const-string/jumbo v4, "false"

    goto :goto_0
.end method

.method public isSinkAvailable()Z
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x1

    return v0
.end method

.method public isSourceAvailable()Z
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x1

    return v0
.end method

.method public isWfdConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2433
    const-string/jumbo v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWfdConnected : mActiveDisplayState(source) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mActiveSinkState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveSinkState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveSinkState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWfdEngineRunning()Z
    .locals 1

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->isWfdConnected()Z

    move-result v0

    return v0
.end method

.method public registerLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 240
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 242
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDlnaDevice()V

    .line 247
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedGCastDevice()V

    .line 248
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedDlnaDevice:Landroid/hardware/display/SemDlnaDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_2

    .line 249
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "mLastConnectedDlnaDevice is existed, remove mLastRememberedDisplay."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 258
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$6;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$6;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedGCastDevice:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_1

    .line 252
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "mLastConnectedGCastDevice is existed, remove mLastRememberedDisplay."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    goto :goto_0
.end method

.method public removeLastConnectedDevice(I)V
    .locals 4
    .param p1, "deviceType"    # I

    .prologue
    const/4 v3, 0x0

    .line 2216
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeLastConnectedDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    packed-switch p1, :pswitch_data_0

    .line 2214
    :cond_0
    :goto_0
    return-void

    .line 2220
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    .line 2223
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2224
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 2225
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    goto :goto_0

    .line 2229
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedDlnaDevice:Landroid/hardware/display/SemDlnaDevice;

    if-eqz v0, :cond_0

    .line 2231
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->forgetRememberedDlnaDevice()V

    .line 2232
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2233
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedDlnaDevice:Landroid/hardware/display/SemDlnaDevice;

    goto :goto_0

    .line 2218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeLastConnectedDlnaDevice()V
    .locals 2

    .prologue
    .line 2178
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "removeLastConnectedDlnaDevice"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->removeLastConnectedDevice(I)V

    .line 2176
    return-void
.end method

.method public removeLastConnectedGCastDevice()V
    .locals 2

    .prologue
    .line 2311
    sget-boolean v0, Lcom/android/server/display/WifiDisplayAdapter;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_0

    .line 2313
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "removeLastConnectedDLNADevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedGCastDevice:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2318
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->forgetRememberedGCastDevice()V

    .line 2319
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2320
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedGCastDevice:Ljava/lang/String;

    .line 2310
    :cond_0
    return-void
.end method

.method public renameDongleLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 815
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "renameDongleLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->renameDongle(Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method public requestConnectDeviceLocked(IILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 9
    .param p1, "deviceType"    # I
    .param p2, "connectingMode"    # I
    .param p3, "device"    # Landroid/os/Bundle;
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 497
    packed-switch p1, :pswitch_data_0

    .line 512
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "Fail to connect device because of unknown device type."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    :pswitch_0
    return-void

    .line 499
    :pswitch_1
    const-string/jumbo v0, "device"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/SemWifiDisplay;

    .line 500
    .local v8, "display":Landroid/hardware/display/SemWifiDisplay;
    invoke-direct {p0, p2}, Lcom/android/server/display/WifiDisplayAdapter;->IsRunningIpRemoteDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/hardware/display/SemWifiDisplay;->getPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Landroid/hardware/display/SemWifiDisplay;->isEmptySurface()Z

    move-result v7

    move-object v0, p0

    move v3, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;->requestEnableLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {v8}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/hardware/display/SemWifiDisplay;->isEmptySurface()Z

    move-result v3

    invoke-virtual {v8}, Landroid/hardware/display/SemWifiDisplay;->isPinConnection()Z

    move-result v4

    invoke-virtual {v8}, Landroid/hardware/display/SemWifiDisplay;->isPersistentMode()Z

    move-result v5

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(ILjava/lang/String;ZZZ)V

    goto :goto_0

    .line 509
    .end local v8    # "display":Landroid/hardware/display/SemWifiDisplay;
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public requestConnectLocked(ILjava/lang/String;)V
    .locals 3
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 558
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", connectingMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$12;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 555
    return-void
.end method

.method public requestConnectLocked(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isPendingRequest"    # Z

    .prologue
    .line 577
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", connectingMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isPendingRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter$13;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
    return-void
.end method

.method public requestConnectLocked(ILjava/lang/String;ZZZ)V
    .locals 8
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isPendingRequest"    # Z
    .param p4, "isPinConnect"    # Z
    .param p5, "isPersistentMode"    # Z

    .prologue
    .line 535
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectLocked: address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", connectingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isPendingRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isPinConnect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", PersistentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$11;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WifiDisplayAdapter$11;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ZILjava/lang/String;ZZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    return-void
.end method

.method public requestConnectLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 465
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$10;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    return-void
.end method

.method public requestConnectWithPinLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1899
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectWithPinLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$22;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$22;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1896
    return-void
.end method

.method public requestDisconnectDeviceLocked(I)V
    .locals 2
    .param p1, "deviceType"    # I

    .prologue
    .line 518
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestDisconnectDeviceLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    packed-switch p1, :pswitch_data_0

    .line 527
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "Fail to connect device because of unknown device type."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_0
    return-void

    .line 521
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->disconnectDeviceLocked()V

    goto :goto_0

    .line 524
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->sendDlnaDisconnectReqBroadcast()V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestDisconnectLocked()V
    .locals 2

    .prologue
    .line 637
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestDisconnectLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$16;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$16;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 635
    return-void
.end method

.method public requestEnableLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 1962
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestEnableLocked params : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$25;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$25;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1959
    return-void
.end method

.method public requestEnableLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 1918
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestEnableLocked ipAddr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$23;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter$23;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1915
    return-void
.end method

.method public requestEnableLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z

    .prologue
    .line 1938
    const-string/jumbo v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestEnableLocked ipAddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", deviceName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isPendingRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$24;

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/WifiDisplayAdapter$24;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1935
    return-void
.end method

.method public requestForgetLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 715
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestForgetLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 720
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 721
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->disconnectDeviceLocked()V

    .line 713
    :cond_1
    return-void
.end method

.method public requestPauseLocked()V
    .locals 2

    .prologue
    .line 595
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestPauseLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$14;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$14;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    return-void
.end method

.method public requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 677
    const-string/jumbo v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRenameLocked: address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", alias="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    if-eqz p2, :cond_1

    .line 681
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 682
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    :cond_0
    const/4 p2, 0x0

    .line 687
    .end local p2    # "alias":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v8

    .line 688
    .local v8, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    move-object v0, v8

    .line 708
    .end local v8    # "display":Landroid/hardware/display/WifiDisplay;
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 709
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->renameDisplayDeviceLocked(Ljava/lang/String;)V

    .line 675
    :cond_4
    return-void

    .line 692
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v8    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_5
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move v6, v4

    .line 692
    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 701
    .end local v8    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v0    # "display":Landroid/hardware/display/WifiDisplay;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 702
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 703
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 704
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    goto :goto_0
.end method

.method public requestResumeLocked()V
    .locals 2

    .prologue
    .line 616
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestResumeLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$15;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$15;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    return-void
.end method

.method public requestStartScanLocked()V
    .locals 2

    .prologue
    .line 419
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestStartScanLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$8;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$8;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void
.end method

.method public requestStopScanLocked()V
    .locals 2

    .prologue
    .line 450
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestStopScanLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$9;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$9;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void
.end method

.method public restartWifiDisplayLocked()V
    .locals 2

    .prologue
    .line 1992
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "restartWifiDisplayLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$26;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$26;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1989
    return-void
.end method

.method public setActiveDlnaState(Landroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;I)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "device"    # Landroid/hardware/display/SemDlnaDevice;
    .param p3, "state"    # I

    .prologue
    .line 2074
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveDlnaState device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$27;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$27;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ILandroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2071
    return-void
.end method

.method public setExtendMode(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 2032
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExtendedMode flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    if-eqz p1, :cond_0

    .line 2034
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removePresentationDisplayFlag()V

    .line 2030
    :goto_0
    return-void

    .line 2036
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->addPresentationDisplayFlag()V

    goto :goto_0
.end method

.method public setLastConnectedDlnaDevice(Landroid/hardware/display/SemDlnaDevice;)V
    .locals 2
    .param p1, "dlnaDevice"    # Landroid/hardware/display/SemDlnaDevice;

    .prologue
    .line 2164
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "setLastConnectedDlnaDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberDlnaDevice(Landroid/hardware/display/SemDlnaDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2169
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDlnaDevice()V

    .line 2171
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 2172
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeLastConnectedGCastDevice()V

    .line 2161
    return-void
.end method

.method public setLastConnectedGCastDevice(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "device"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 2283
    sget-boolean v0, Lcom/android/server/display/WifiDisplayAdapter;->SS_WFD_SERVICE_WITH_GCAST:Z

    if-eqz v0, :cond_1

    .line 2285
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "setLastConnectedGCastDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberGCastDevice(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2290
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedGCastDevice()V

    .line 2292
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastRememberedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 2293
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeLastConnectedDlnaDevice()V

    .line 2282
    :cond_1
    return-void
.end method

.method public setScanningChannelLocked(I)V
    .locals 2
    .param p1, "requestedChannel"    # I

    .prologue
    .line 824
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "setScanChannelLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->setScanningChannel(I)V

    .line 821
    return-void
.end method

.method public setScreenSharingStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 2023
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScreenSharingStatus:I

    .line 2024
    const-string/jumbo v1, "ftps"

    .line 2025
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2024
    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/WifiDisplayAdapter;->setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I

    .line 2026
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScreenSharingStatus:I

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendEventToSemDeviceStatusListener(II)V

    .line 2021
    return-void

    .line 2025
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x2

    .line 2356
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiDisplayConfiguration key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz v0, :cond_0

    .line 2359
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    if-ne v0, v3, :cond_0

    .line 2360
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->IsRunningIpRemoteDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2362
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    if-eqz v0, :cond_1

    .line 2363
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    if-ne v0, v3, :cond_1

    .line 2364
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->IsRunningIpRemoteDisplay(I)Z

    move-result v0

    .line 2362
    if-eqz v0, :cond_1

    .line 2365
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I

    .line 2368
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 2361
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I

    goto :goto_0
.end method
