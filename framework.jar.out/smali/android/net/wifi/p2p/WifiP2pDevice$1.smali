.class final Landroid/net/wifi/p2p/WifiP2pDevice$1;
.super Ljava/lang/Object;
.source "WifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 754
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 755
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 762
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 763
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 764
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 766
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 773
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice$1;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 778
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    .line 780
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 781
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    .line 783
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    .line 786
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 753
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 790
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    return-object v0
.end method
