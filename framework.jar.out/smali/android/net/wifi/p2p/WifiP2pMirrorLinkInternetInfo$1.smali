.class final Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pMirrorLinkInternetInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;
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
        "Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .local v1, "mlType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 161
    .local v2, "haveInternetAccess":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 162
    .local v3, "internetAccessRequired":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 163
    .local v4, "mlCliPreference":I
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;-><init>(IZZILandroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;)V

    return-object v0

    .line 160
    .end local v2    # "haveInternetAccess":Z
    .end local v3    # "internetAccessRequired":Z
    .end local v4    # "mlCliPreference":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "haveInternetAccess":Z
    goto :goto_0

    .line 161
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "internetAccessRequired":Z
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 167
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    move-result-object v0

    return-object v0
.end method
