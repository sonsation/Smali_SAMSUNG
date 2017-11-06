.class public Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;
.super Ljava/lang/Object;
.source "ChangeDeviceController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;,
        Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$Notify;,
        Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;,
        Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-ChangeDevice"

.field private static final PREFIX:Ljava/lang/String; = "Controller   |"

.field private static final RESTART_SCAN_DEVICE:I = 0x2

.field private static final SAVED_INSTANCE_STATE_DEVICE_ID:Ljava/lang/String; = "saved_instance_state_device_id"

.field private static final SAVED_INSTANCE_STATE_NIC:Ljava/lang/String; = "saved_instance_state_nic"

.field private static final SAVED_INSTANCE_STATE_PROGRESS:Ljava/lang/String; = "saved_instance_state_progress"

.field private static final START_SCAN_DEVICE:I = 0x1

.field private static final START_SCAN_INTERVAL_TIME:I = 0x1388

.field private static final STOP_SCAN_DEVICE:I = 0x0

.field private static final STOP_SCAN_INTERVAL_TIME:I = 0x251c

.field private static final TAG:Ljava/lang/String; = "ChangeDevice"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplayManagerReceiver:Landroid/content/BroadcastReceiver;

.field private final mDlnaConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mDoStartProgress:Z

.field private mIsProgress:Z

.field private final mIsWfdSupported:Z

.field private mNicId:Ljava/lang/String;

.field private mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

.field private mPlayerType:I

.field private final mScanDeviceHandler:Landroid/os/Handler;

.field private mSelectedDeviceId:Ljava/lang/String;

.field private mSelectedDeviceType:I

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mWifiState:I

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playerType"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mScanDeviceHandler:Landroid/os/Handler;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceType:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsProgress:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDoStartProgress:Z

    .line 352
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDlnaConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 392
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManagerReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    .line 92
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mPlayerType:I

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 94
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    .line 95
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mScanDeviceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->requestScanWfdDevices()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsProgress:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mNicId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->updateDeviceList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->requestStopScanWfdDevices()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .prologue
    .line 40
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mPlayerType:I

    return v0
.end method

.method private disconnectDevice()V
    .locals 0

    .prologue
    .line 273
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeToDefaultPlayer()V

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->disconnectWifiDisplay()V

    .line 276
    return-void
.end method

.method private disconnectWifiDisplay()V
    .locals 3

    .prologue
    .line 279
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->getActiveDisplayState(Landroid/hardware/display/DisplayManager;)I

    move-result v0

    .line 280
    .local v0, "curStatus":I
    sget v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTED:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTING:I

    if-ne v0, v1, :cond_1

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->disconnectWifiDisplay(Landroid/hardware/display/DisplayManager;)V

    .line 283
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;->onNotify(I)V

    .line 287
    :cond_1
    return-void
.end method

.method private registerDisplayManagerReceiver()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManagerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;->GLOBAL_WIFI_DISPLAY_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 205
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    return-void
.end method

.method private registerDlnaReceiver()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDlnaConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.music.dlna.connectivitychanged"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    return-void
.end method

.method private registerWifiStateReceiver()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    return-void
.end method

.method private requestScanWfdDevices()V
    .locals 4

    .prologue
    .line 297
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->isScanning(Landroid/hardware/display/DisplayManager;)Z

    move-result v0

    .line 298
    .local v0, "isScanning":Z
    const-string v1, "ChangeDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controller   | start scan!! isScanning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-nez v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->scanWifiDisplays(Landroid/hardware/display/DisplayManager;)V

    .line 302
    :cond_0
    return-void
.end method

.method private requestStopScanWfdDevices()V
    .locals 5

    .prologue
    .line 305
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->isScanning(Landroid/hardware/display/DisplayManager;)Z

    move-result v1

    .line 306
    .local v1, "isScanning":Z
    const-string v2, "ChangeDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Controller   | stop scan!! isScanning : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz v1, :cond_0

    .line 308
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->getActiveDisplayState(Landroid/hardware/display/DisplayManager;)I

    move-result v0

    .line 309
    .local v0, "disPlayState":I
    const-string v2, "ChangeDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Controller   | stop scan!! disPlayState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget v2, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTING:I

    if-eq v0, v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->stopScanWifiDisplays(Landroid/hardware/display/DisplayManager;)V

    .line 314
    .end local v0    # "disPlayState":I
    :cond_0
    return-void
.end method

.method private selectDmrDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "selectedDeviceId"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    const-string v1, "CHPL"

    const-string v2, "DLNA"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeToDmrPlayer(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->disconnectWifiDisplay()V

    .line 250
    return-void
.end method

.method private selectWfdDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "selectedDeviceAddress"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    const-string v1, "CHPL"

    const-string v2, "Screen Mirroring"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayCompat;->getDeviceAddress(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    .line 264
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setActivityState(Landroid/hardware/display/DisplayManager;I)V

    .line 265
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeToWfdDevice()V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->connectWifiDisplayWithMode(Landroid/hardware/display/DisplayManager;ILjava/lang/String;)V

    .line 268
    const-string v0, "SMUSIC-ChangeDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller   | selectWfdDevice() deviceAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connect type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->CONN_STATE_CHANGEPLAYER_MUSIC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDeviceList(Ljava/lang/String;)V
    .locals 3
    .param p1, "nicId"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string v0, "ChangeDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller   | updateDeviceList() nicId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectedDeviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mNicId:Ljava/lang/String;

    .line 293
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 294
    return-void
.end method


# virtual methods
.method public getSelectedDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 99
    if-eqz p1, :cond_1

    .line 100
    const-string/jumbo v1, "saved_instance_state_device_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    .line 101
    const-string/jumbo v1, "saved_instance_state_nic"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mNicId:Ljava/lang/String;

    .line 102
    const-string/jumbo v1, "saved_instance_state_progress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDoStartProgress:Z

    .line 110
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindDlna()V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 120
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiState:I

    .line 122
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    .line 126
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setActivityState(Landroid/hardware/display/DisplayManager;I)V

    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 128
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setActivityState(Landroid/hardware/display/DisplayManager;I)V

    .line 130
    :cond_0
    return-void

    .line 104
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getDlnaPlayingDmrId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getDlnaPlayingNic()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mNicId:Ljava/lang/String;

    .line 106
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDoStartProgress:Z

    goto :goto_0
.end method

.method public onDestroyCalled()V
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->requestStopScanWfdDevices()V

    .line 180
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setActivityState(Landroid/hardware/display/DisplayManager;I)V

    .line 185
    :cond_0
    return-void
.end method

.method public onPauseCalled()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mScanDeviceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDlnaConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDisplayManagerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResumeCalled()V
    .locals 4

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->registerDlnaReceiver()V

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->registerWifiStateReceiver()V

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsWfdSupported:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->registerDisplayManagerReceiver()V

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mScanDeviceHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDoStartProgress:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    return-void

    .line 144
    :cond_1
    const-wide/16 v0, 0x1388

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    const-string/jumbo v0, "saved_instance_state_device_id"

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "saved_instance_state_nic"

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mNicId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "saved_instance_state_progress"

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mIsProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    return-void
.end method

.method public onStartCalled()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mDoStartProgress:Z

    .line 168
    return-void
.end method

.method public selectDevice(ILjava/lang/String;)V
    .locals 3
    .param p1, "deviceType"    # I
    .param p2, "selectedDeviceId"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v0, "ChangeDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller   | selectDevice() deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "ChangeDevice"

    const-string v1, "Controller   | selectDevice() selectedDeviceId is null."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "ChangeDevice"

    const-string v1, "Controller   | selectDevice() select the same device."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceId:Ljava/lang/String;

    .line 227
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mSelectedDeviceType:I

    .line 228
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->disconnectDevice()V

    goto :goto_0

    .line 230
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->selectDmrDevice(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->selectWfdDevice(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setChangeDeviceListener(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    .line 189
    return-void
.end method
