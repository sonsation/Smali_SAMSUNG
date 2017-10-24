.class public Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;
.super Ljava/lang/Object;
.source "WifiP2pMirrorLinkUpnpDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiP2pMirrorLinkUpnpDeviceInfo"


# instance fields
.field private mPortNum:I

.field private mTmAppServerSupported:Z

.field private mTmClientProfileSupported:Z

.field private mTmNotificationServerSupported:Z

.field private mUpnpDevType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo$1;-><init>()V

    .line 159
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mUpnpDevType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mPortNum:I

    .line 44
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmAppServerSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmClientProfileSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmNotificationServerSupported:Z

    .line 48
    return-void
.end method

.method private constructor <init>(IZZZI)V
    .locals 1
    .param p1, "upnpDevtype"    # I
    .param p2, "tmAppServerSupported"    # Z
    .param p3, "tmClientProfileSupported"    # Z
    .param p4, "tmNotificationServerSupported"    # Z
    .param p5, "portNum"    # I

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mUpnpDevType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mPortNum:I

    .line 44
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmAppServerSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmClientProfileSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmNotificationServerSupported:Z

    .line 84
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mUpnpDevType:I

    .line 85
    iput-boolean p2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmAppServerSupported:Z

    .line 86
    iput-boolean p3, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmClientProfileSupported:Z

    .line 87
    iput-boolean p4, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmNotificationServerSupported:Z

    .line 88
    iput p5, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mPortNum:I

    .line 83
    return-void
.end method

.method synthetic constructor <init>(IZZZILandroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;)V
    .locals 0
    .param p1, "upnpDevtype"    # I
    .param p2, "tmAppServerSupported"    # Z
    .param p3, "tmClientProfileSupported"    # Z
    .param p4, "tmNotificationServerSupported"    # Z
    .param p5, "portNum"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;-><init>(IZZZI)V

    return-void
.end method

.method public static newInstance(IZZZI)Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;
    .locals 6
    .param p0, "upnpDevType"    # I
    .param p1, "tmAppServerSupported"    # Z
    .param p2, "tmClientProfileSupported"    # Z
    .param p3, "tmNotificationServerSupported"    # Z
    .param p4, "portNum"    # I

    .prologue
    .line 95
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;-><init>(IZZZI)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getPortNum()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mPortNum:I

    return v0
.end method

.method public getSupplicantData()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 103
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 104
    .local v1, "bb":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "b":B
    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mUpnpDevType:I

    if-ne v3, v5, :cond_0

    .line 108
    int-to-byte v0, v5

    .line 109
    .end local v0    # "b":B
    :cond_0
    iget-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmAppServerSupported:Z

    if-eqz v3, :cond_1

    .line 110
    or-int/lit8 v3, v0, 0x8

    int-to-byte v0, v3

    .line 111
    :cond_1
    iget-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmClientProfileSupported:Z

    if-eqz v3, :cond_2

    .line 112
    or-int/lit8 v3, v0, 0x10

    int-to-byte v0, v3

    .line 113
    :cond_2
    iget-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmNotificationServerSupported:Z

    if-eqz v3, :cond_3

    .line 114
    or-int/lit8 v3, v0, 0x20

    int-to-byte v0, v3

    .line 115
    :cond_3
    invoke-virtual {v1, v6, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {v1, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 119
    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mPortNum:I

    int-to-short v3, v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 122
    .local v2, "upnpInfo":I
    const-string/jumbo v3, "%08x"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTmAppServerSupported()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmAppServerSupported:Z

    return v0
.end method

.method public getTmClientProfileSupported()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmClientProfileSupported:Z

    return v0
.end method

.method public getTmNotificationServerSupported()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmNotificationServerSupported:Z

    return v0
.end method

.method public getUpnpDevType()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mUpnpDevType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "\n P2P-CCC-UPNP Device Information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string/jumbo v1, "\n UPNP DEV Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mUpnpDevType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 132
    const-string/jumbo v1, "\n TmApplicationServer supported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmAppServerSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 133
    const-string/jumbo v1, "\n TmClientProfile supported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmClientProfileSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 134
    const-string/jumbo v1, "\n TmNotificationServer supported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmNotificationServerSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 135
    const-string/jumbo v1, "\n Port Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mPortNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mUpnpDevType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmAppServerSupported:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 152
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmClientProfileSupported:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 153
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mTmNotificationServerSupported:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 154
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkUpnpDeviceInfo;->mPortNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return-void

    :cond_0
    move v0, v2

    .line 151
    goto :goto_0

    :cond_1
    move v0, v2

    .line 152
    goto :goto_1

    :cond_2
    move v1, v2

    .line 153
    goto :goto_2
.end method
