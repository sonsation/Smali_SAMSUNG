.class Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectingDevice"
.end annotation


# instance fields
.field public mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

.field public mPendingForDlnaSwitching:Z

.field public mPendingForPrevDisconnect:Z

.field private mRoute:Landroid/media/MediaRouter$RouteInfo;

.field public mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field public mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;)Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public constructor <init>(Landroid/hardware/display/SemWifiDisplay;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 1
    .param p1, "display"    # Landroid/hardware/display/SemWifiDisplay;
    .param p2, "type"    # Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    .line 263
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 264
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 265
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaRouter$RouteInfo;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 1
    .param p1, "device"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "type"    # Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 277
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 278
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    .line 279
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    .line 275
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 0
    .param p1, "type"    # Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;)V
    .locals 1
    .param p1, "device"    # Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .param p2, "type"    # Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mDlna:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 270
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mType:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    .line 271
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mWifiDisplay:Landroid/hardware/display/SemWifiDisplay;

    .line 272
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectingDevice;->mPendingForDlnaSwitching:Z

    .line 268
    return-void
.end method
