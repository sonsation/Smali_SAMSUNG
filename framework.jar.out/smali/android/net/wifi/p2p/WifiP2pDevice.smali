.class public Landroid/net/wifi/p2p/WifiP2pDevice;
.super Ljava/lang/Object;
.source "WifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pDevice$1;
    }
.end annotation


# static fields
.field public static final AVAILABLE:I = 0x3

.field public static final CONNECTED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_CAPAB_CLIENT_DISCOVERABILITY:I = 0x2

.field private static final DEVICE_CAPAB_CONCURRENT_OPER:I = 0x4

.field private static final DEVICE_CAPAB_DEVICE_LIMIT:I = 0x10

.field private static final DEVICE_CAPAB_INFRA_MANAGED:I = 0x8

.field private static final DEVICE_CAPAB_INVITATION_PROCEDURE:I = 0x20

.field private static final DEVICE_CAPAB_SERVICE_DISCOVERY:I = 0x1

.field public static final FAILED:I = 0x2

.field private static final GROUP_CAPAB_CROSS_CONN:I = 0x10

.field private static final GROUP_CAPAB_GROUP_FORMATION:I = 0x40

.field private static final GROUP_CAPAB_GROUP_LIMIT:I = 0x4

.field private static final GROUP_CAPAB_GROUP_OWNER:I = 0x1

.field private static final GROUP_CAPAB_INTRA_BSS_DIST:I = 0x8

.field private static final GROUP_CAPAB_PERSISTENT_GROUP:I = 0x2

.field private static final GROUP_CAPAB_PERSISTENT_RECONN:I = 0x20

.field public static final INVITED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiP2pDevice"

.field public static final UNAVAILABLE:I = 0x4

.field private static final WPS_CONFIG_DISPLAY:I = 0x8

.field private static final WPS_CONFIG_KEYPAD:I = 0x100

.field private static final WPS_CONFIG_PUSHBUTTON:I = 0x80

.field private static final cccInternetPatter:Ljava/util/regex/Pattern;

.field private static final cccUpnpPattern:Ljava/util/regex/Pattern;

.field private static final contactInfoHashPattern:Ljava/util/regex/Pattern;

.field private static final detailedDevicePattern:Ljava/util/regex/Pattern;

.field private static fwInviteStr:Ljava/lang/String;

.field private static final goAddrPattern:Ljava/util/regex/Pattern;

.field private static final iconPattern:Ljava/util/regex/Pattern;

.field private static final intendedAddrPattern:Ljava/util/regex/Pattern;

.field private static final prefixPattern:Ljava/util/regex/Pattern;

.field private static final sconnectPattern:Ljava/util/regex/Pattern;

.field private static final serviceDataPattern:Ljava/util/regex/Pattern;

.field private static final ssDevInfoPattern:Ljava/util/regex/Pattern;

.field private static final threeTokenPattern:Ljava/util/regex/Pattern;

.field private static final twoTokenPattern:Ljava/util/regex/Pattern;


# instance fields
.field public GOdeviceName:Ljava/lang/String;

.field public SConnectInfo:Ljava/lang/String;

.field public candidateStaticIp:I

.field public contactImage:Landroid/graphics/Bitmap;

.field public contactInfoHash:Ljava/lang/String;

.field public deviceAddress:Ljava/lang/String;

.field public deviceCapability:I

.field public deviceName:Ljava/lang/String;

.field public groupCapability:I

.field public groupownerAddress:Ljava/lang/String;

.field public iconIdx:I

.field public interfaceAddress:Ljava/lang/String;

.field public primaryDeviceType:Ljava/lang/String;

.field public secondaryDeviceType:Ljava/lang/String;

.field public semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

.field public semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

.field public semSamsungDeviceType:I

.field public serviceData:Ljava/lang/String;

.field public ssDevInfo:I

.field public status:I

.field public supportFwInvite:I

.field public wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

.field public wpsConfigMethodsSupported:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) (\\d+ )?p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) pri_dev_type=(\\d+-[0-9a-fA-F]+-\\d+) name=\'(.*)\' config_methods=(0x[0-9a-fA-F]+) dev_capab=(0x[0-9a-fA-F]+) group_capab=(0x[0-9a-fA-F]+)( wfd_dev_info=0x([0-9a-fA-F]{12}))?"

    .line 209
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    .line 227
    const-string/jumbo v0, "(p2p_dev_addr=)?((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    .line 226
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    .line 236
    const-string/jumbo v0, "(?:[0-9a-f]{2}:){5}[0-9a-f]{2} p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    .line 235
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    .line 241
    const-string/jumbo v0, "p2p_go_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    .line 240
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->goAddrPattern:Ljava/util/regex/Pattern;

    .line 245
    const-string/jumbo v0, "p2p_intended_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    .line 244
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->intendedAddrPattern:Ljava/util/regex/Pattern;

    .line 249
    const-string/jumbo v0, " sc_info=0x([0-9a-fA-F]*)"

    .line 248
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->sconnectPattern:Ljava/util/regex/Pattern;

    .line 254
    const-string/jumbo v0, " ss_dev_info=0x([0-9a-fA-F]+)"

    .line 253
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfoPattern:Ljava/util/regex/Pattern;

    .line 259
    const-string/jumbo v0, " icon=0x([0-9a-fA-F]*)"

    .line 258
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconPattern:Ljava/util/regex/Pattern;

    .line 263
    const-string/jumbo v0, " prefix=\'(.+)\'"

    .line 262
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->prefixPattern:Ljava/util/regex/Pattern;

    .line 267
    const-string/jumbo v0, " service=0x([0-9a-fA-F]*)"

    .line 266
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceDataPattern:Ljava/util/regex/Pattern;

    .line 271
    const-string/jumbo v0, " contact_info=0x([0-9a-fA-F]*)"

    .line 270
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHashPattern:Ljava/util/regex/Pattern;

    .line 275
    const-string/jumbo v0, " fw_invite"

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->fwInviteStr:Ljava/lang/String;

    .line 278
    const-string/jumbo v0, " upnp_info=(\\d+)"

    .line 277
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->cccUpnpPattern:Ljava/util/regex/Pattern;

    .line 282
    const-string/jumbo v0, " internet_info=(\\d+)"

    .line 281
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->cccInternetPatter:Ljava/util/regex/Pattern;

    .line 752
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice$1;-><init>()V

    .line 751
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 143
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    .line 152
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 163
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    .line 168
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    .line 185
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 188
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    .line 191
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 193
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    .line 201
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 143
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    .line 152
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 163
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    .line 168
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    .line 185
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 188
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    .line 191
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 193
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    .line 201
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    .line 679
    if-eqz p1, :cond_0

    .line 680
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 681
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 682
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 683
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 684
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 685
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 686
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 687
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 688
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    .line 689
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    .line 691
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    .line 692
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 693
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 694
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    .line 695
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 696
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    .line 697
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    .line 698
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 699
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    .line 700
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    .line 701
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    .line 702
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    .line 703
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    .line 678
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 27
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 52
    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 56
    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 143
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    .line 152
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 163
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    .line 168
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    .line 185
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 188
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    .line 191
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 193
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    .line 201
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    .line 306
    const-string/jumbo v22, "[ \n]"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 317
    .local v20, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 318
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "Malformed supplicant event"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 321
    :cond_0
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 346
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 347
    .local v9, "match":Ljava/util/regex/Matcher;
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->goAddrPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 348
    .local v13, "matchForGoAddr":Ljava/util/regex/Matcher;
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->sconnectPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 349
    .local v4, "Sconnect":Ljava/util/regex/Matcher;
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfoPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 352
    .local v17, "matchForSS":Ljava/util/regex/Matcher;
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->iconPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 353
    .local v14, "matchForIcon":Ljava/util/regex/Matcher;
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->prefixPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 354
    .local v16, "matchForPrifix":Ljava/util/regex/Matcher;
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceDataPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 355
    .local v18, "matchForServiceData":Ljava/util/regex/Matcher;
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHashPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 356
    .local v12, "matchForContactHash":Ljava/util/regex/Matcher;
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->cccUpnpPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 357
    .local v21, "upnpMatcher":Ljava/util/regex/Matcher;
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->cccInternetPatter:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 358
    .local v7, "internetMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-nez v22, :cond_4

    .line 359
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "Malformed supplicant event"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 324
    .end local v4    # "Sconnect":Ljava/util/regex/Matcher;
    .end local v7    # "internetMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "match":Ljava/util/regex/Matcher;
    .end local v12    # "matchForContactHash":Ljava/util/regex/Matcher;
    .end local v13    # "matchForGoAddr":Ljava/util/regex/Matcher;
    .end local v14    # "matchForIcon":Ljava/util/regex/Matcher;
    .end local v16    # "matchForPrifix":Ljava/util/regex/Matcher;
    .end local v17    # "matchForSS":Ljava/util/regex/Matcher;
    .end local v18    # "matchForServiceData":Ljava/util/regex/Matcher;
    .end local v21    # "upnpMatcher":Ljava/util/regex/Matcher;
    :pswitch_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 325
    return-void

    .line 327
    :pswitch_1
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 328
    .restart local v9    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-nez v22, :cond_1

    .line 329
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "Malformed supplicant event"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 331
    :cond_1
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 332
    return-void

    .line 335
    .end local v9    # "match":Ljava/util/regex/Matcher;
    :pswitch_2
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 336
    .restart local v9    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-nez v22, :cond_2

    .line 337
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "Malformed supplicant event"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 339
    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 340
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->intendedAddrPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 341
    .local v15, "matchForIntendedAddr":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 342
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 344
    :cond_3
    return-void

    .line 362
    .end local v15    # "matchForIntendedAddr":Ljava/util/regex/Matcher;
    .restart local v4    # "Sconnect":Ljava/util/regex/Matcher;
    .restart local v7    # "internetMatcher":Ljava/util/regex/Matcher;
    .restart local v12    # "matchForContactHash":Ljava/util/regex/Matcher;
    .restart local v13    # "matchForGoAddr":Ljava/util/regex/Matcher;
    .restart local v14    # "matchForIcon":Ljava/util/regex/Matcher;
    .restart local v16    # "matchForPrifix":Ljava/util/regex/Matcher;
    .restart local v17    # "matchForSS":Ljava/util/regex/Matcher;
    .restart local v18    # "matchForServiceData":Ljava/util/regex/Matcher;
    .restart local v21    # "upnpMatcher":Ljava/util/regex/Matcher;
    :cond_4
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 363
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 366
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v5

    .line 367
    .local v5, "devName":Landroid/net/wifi/WifiSsid;
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_0
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 369
    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 370
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 371
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 372
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 373
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    .line 374
    .local v19, "str":Ljava/lang/String;
    new-instance v22, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v23

    .line 375
    const/16 v24, 0x4

    const/16 v25, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v24

    .line 376
    const/16 v25, 0x8

    const/16 v26, 0xc

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v25

    .line 374
    invoke-direct/range {v22 .. v25}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 378
    .end local v19    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 379
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    .line 381
    :cond_6
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 382
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    .line 385
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 386
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    .line 390
    :cond_8
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 391
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    .line 394
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 395
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 397
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 398
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    .line 400
    :cond_b
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 401
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 404
    :cond_c
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 405
    const-wide/16 v10, 0x0

    .line 407
    .local v10, "mUpnpInfo":J
    const/16 v22, 0x1

    :try_start_0
    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 412
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseUpnpInfo(J)V

    .line 414
    .end local v10    # "mUpnpInfo":J
    :cond_d
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 415
    const/4 v8, 0x0

    .line 417
    .local v8, "mInternetInfo":I
    const/16 v22, 0x1

    :try_start_1
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 422
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseInternetInfo(I)V

    .line 427
    .end local v8    # "mInternetInfo":I
    :cond_e
    const/16 v22, 0x0

    aget-object v22, v20, v22

    const-string/jumbo v23, "P2P-DEVICE-FOUND"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 428
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 431
    :cond_f
    sget-object v22, Landroid/net/wifi/p2p/WifiP2pDevice;->fwInviteStr:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 432
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    .line 305
    :cond_10
    return-void

    .line 367
    :cond_11
    const-string/jumbo v22, "<unknown ssid>"

    goto/16 :goto_0

    .line 408
    .restart local v10    # "mUpnpInfo":J
    :catch_0
    move-exception v6

    .line 409
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v10, 0x0

    .line 410
    const-string/jumbo v22, "WifiP2pDevice"

    const-string/jumbo v23, "Number format exception in parsing UPnP info"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 418
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "mUpnpInfo":J
    .restart local v8    # "mInternetInfo":I
    :catch_1
    move-exception v6

    .line 419
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    .line 420
    const-string/jumbo v22, "WifiP2pDevice"

    const-string/jumbo v23, "Number format exception in parsing Internet info"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private parseHex(Ljava/lang/String;)I
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 796
    const/4 v1, 0x0

    .line 797
    .local v1, "num":I
    const-string/jumbo v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 798
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 802
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 806
    :goto_0
    return v1

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "WifiP2pDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse hex string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseInternetInfo(I)V
    .locals 9
    .param p1, "internetInfo"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 464
    const/4 v5, 0x0

    .line 465
    .local v5, "mlType":I
    const/4 v2, 0x0

    .line 466
    .local v2, "hvInternet":Z
    const/4 v3, 0x0

    .line 467
    .local v3, "internetReqd":Z
    const/4 v4, 0x0

    .line 469
    .local v4, "mlCliPref":I
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 470
    .local v1, "bb":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 471
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 472
    invoke-virtual {v1, v8, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 474
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 476
    .local v0, "b":B
    and-int/lit8 v5, v0, 0x3

    .line 478
    shr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0x1

    if-ne v7, v6, :cond_0

    .line 479
    const/4 v2, 0x1

    .line 480
    :cond_0
    shr-int/lit8 v6, v0, 0x3

    and-int/lit8 v6, v6, 0x1

    if-ne v7, v6, :cond_1

    .line 481
    const/4 v3, 0x1

    .line 483
    :cond_1
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 485
    invoke-static {v5, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->newInstance(IZZI)Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    .line 463
    return-void
.end method

.method private parseUpnpInfo(J)V
    .locals 11
    .param p1, "upnpInfo"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 437
    const/4 v2, 0x0

    .line 438
    .local v2, "devType":I
    const/4 v3, 0x0

    .line 439
    .local v3, "mTmAppServer":Z
    const/4 v4, 0x0

    .line 440
    .local v4, "mTmCliProfile":Z
    const/4 v5, 0x0

    .line 441
    .local v5, "mTmNotiServer":Z
    const/4 v6, 0x0

    .line 443
    .local v6, "portNum":I
    const/16 v7, 0x8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 444
    .local v1, "bb":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 445
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 446
    invoke-virtual {v1, v9, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 447
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 449
    .local v0, "b":B
    and-int/lit8 v2, v0, 0x7

    .line 451
    shr-int/lit8 v7, v0, 0x3

    and-int/lit8 v7, v7, 0x1

    if-ne v8, v7, :cond_0

    .line 452
    const/4 v3, 0x1

    .line 453
    :cond_0
    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0x1

    if-ne v8, v7, :cond_1

    .line 454
    const/4 v4, 0x1

    .line 455
    :cond_1
    shr-int/lit8 v7, v0, 0x5

    and-int/lit8 v7, v7, 0x1

    if-ne v8, v7, :cond_2

    .line 456
    const/4 v5, 0x0

    .line 457
    :cond_2
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    .line 459
    invoke-static {v2, v3, v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->newInstance(IZZZI)Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    .line 436
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 634
    if-ne p0, p1, :cond_0

    return v1

    .line 635
    :cond_0
    instance-of v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    .line 637
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 638
    .local v0, "other":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 639
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    .line 641
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isDeviceLimit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 515
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGroupClient()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 529
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    return-object v0

    .line 531
    :cond_0
    return-object v1
.end method

.method public isGroupLimit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 537
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGroupOwner()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 520
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInvitationCapable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 510
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isServiceDiscoveryCapable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 505
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public semGetContactInfoHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    return-object v0
.end method

.method public semGetCustomInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    return-object v0
.end method

.method public semGetGroupOwnerAddress()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 559
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 560
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    return-object v0

    .line 562
    :cond_0
    return-object v1
.end method

.method public semGetWifiDisplayInfo()Landroid/net/wifi/p2p/SemWifiDisplayInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 584
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    .line 585
    return-object v1

    .line 587
    :cond_0
    new-instance v0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/SemWifiDisplayInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 645
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 646
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    const-string/jumbo v1, "\n deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 648
    const-string/jumbo v1, "\n primary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    const-string/jumbo v1, "\n secondary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 650
    const-string/jumbo v1, "\n wps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 651
    const-string/jumbo v1, "\n grpcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 652
    const-string/jumbo v1, "\n devcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 653
    const-string/jumbo v1, "\n status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 654
    const-string/jumbo v1, "\n wfdInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 655
    const-string/jumbo v1, "\n groupownerAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    const-string/jumbo v1, "\n GOdeviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    const-string/jumbo v1, "\n interfaceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 658
    const-string/jumbo v1, "\n SConnectInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    const-string/jumbo v1, "\n contactInfoHash : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    const-string/jumbo v1, "\n ssDevInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 661
    const-string/jumbo v1, "\n iconIdx : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 662
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    if-eqz v1, :cond_0

    .line 663
    const-string/jumbo v1, "\n semMirrorLinkUpnpInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    if-eqz v1, :cond_1

    .line 665
    const-string/jumbo v1, "\n semMirrorLinkInternetInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    :cond_1
    const-string/jumbo v1, "\n semSamsungDeviceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 667
    const-string/jumbo v1, "\n serviceData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    const-string/jumbo v1, "\n fw_invite : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 669
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 599
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 597
    return-void
.end method

.method public updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 604
    if-nez p1, :cond_0

    .line 605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "device is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "deviceAddress is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "deviceAddress does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 614
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 615
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 616
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 617
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 618
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 619
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 620
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    .line 621
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 622
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    .line 623
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    .line 624
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 625
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    .line 626
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    .line 627
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    .line 628
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    .line 629
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    .line 603
    return-void
.end method

.method public wpsDisplaySupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 500
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public wpsKeypadSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 495
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public wpsPbcSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 490
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 709
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 713
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 723
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 731
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    if-eqz v0, :cond_1

    .line 734
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 739
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    if-eqz v0, :cond_2

    .line 740
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 745
    :goto_2
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 747
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    return-void

    .line 721
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 737
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 743
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
