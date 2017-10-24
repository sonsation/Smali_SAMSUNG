.class public Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;
.super Ljava/lang/Object;
.source "WifiP2pMirrorLinkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiP2pMirrorLinkInfo"


# instance fields
.field private mInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

.field private mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo$1;-><init>()V

    .line 74
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    .line 34
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;)V
    .locals 1
    .param p1, "upnpInfo"    # Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;
    .param p2, "internetInfo"    # Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    .line 34
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    .line 40
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    .line 41
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getInternetInfo()Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    return-object v0

    .line 53
    :cond_0
    return-object v1
.end method

.method public getUpnpInfo()Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    return-object v0

    .line 47
    :cond_0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->getUpnpDevType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->getTmAppServerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->getTmClientProfileSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->getTmNotificationServerSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->getPortNum()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->getMLType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->getHaveInternetAccess()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->getInternetAccessRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->getMLCliPreference()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    :cond_1
    move v0, v2

    .line 65
    goto :goto_1

    :cond_2
    move v0, v2

    .line 66
    goto :goto_2

    :cond_3
    move v0, v2

    .line 69
    goto :goto_3

    :cond_4
    move v1, v2

    .line 70
    goto :goto_4
.end method
