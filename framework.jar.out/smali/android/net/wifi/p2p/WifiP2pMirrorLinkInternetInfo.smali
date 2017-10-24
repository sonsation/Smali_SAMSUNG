.class public Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;
.super Ljava/lang/Object;
.source "WifiP2pMirrorLinkInternetInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiP2pMirrorLinkInternetInfo"


# instance fields
.field private mHaveInternetAccess:Z

.field private mInternetAccessRequired:Z

.field private mMLCliPreference:I

.field private mMLType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo$1;-><init>()V

    .line 156
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    .line 44
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    .line 48
    return-void
.end method

.method private constructor <init>(IZZI)V
    .locals 1
    .param p1, "mlType"    # I
    .param p2, "haveInternetAccess"    # Z
    .param p3, "internetAccessRequired"    # Z
    .param p4, "mlCliPreference"    # I

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    .line 44
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    .line 78
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLType:I

    .line 79
    iput-boolean p2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    .line 80
    iput-boolean p3, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    .line 81
    iput p4, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    .line 77
    return-void
.end method

.method synthetic constructor <init>(IZZILandroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;)V
    .locals 0
    .param p1, "mlType"    # I
    .param p2, "haveInternetAccess"    # Z
    .param p3, "internetAccessRequired"    # Z
    .param p4, "mlCliPreference"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;-><init>(IZZI)V

    return-void
.end method

.method public static newInstance(IZZI)Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;
    .locals 1
    .param p0, "mlType"    # I
    .param p1, "haveInternetAccess"    # Z
    .param p2, "internetAccessRequired"    # Z
    .param p3, "mlCliPreference"    # I

    .prologue
    .line 88
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;-><init>(IZZI)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getHaveInternetAccess()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    return v0
.end method

.method public getInternetAccessRequired()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    return v0
.end method

.method public getMLCliPreference()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    return v0
.end method

.method public getMLType()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLType:I

    return v0
.end method

.method public getSupplicantData()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 96
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 97
    .local v2, "bb":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "b1":B
    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLType:I

    if-ne v4, v6, :cond_5

    .line 101
    int-to-byte v0, v6

    .line 106
    .end local v0    # "b1":B
    :cond_0
    :goto_0
    iget-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    if-eqz v4, :cond_1

    .line 107
    or-int/lit8 v4, v0, 0x4

    int-to-byte v0, v4

    .line 108
    :cond_1
    iget-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    if-eqz v4, :cond_2

    .line 109
    or-int/lit8 v4, v0, 0x8

    int-to-byte v0, v4

    .line 110
    :cond_2
    invoke-virtual {v2, v7, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "b2":B
    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    if-ne v6, v4, :cond_3

    .line 114
    int-to-byte v1, v6

    .line 115
    .end local v1    # "b2":B
    :cond_3
    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    if-ne v8, v4, :cond_4

    .line 116
    or-int/lit8 v4, v1, 0x2

    int-to-byte v1, v4

    .line 117
    :cond_4
    invoke-virtual {v2, v6, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    .line 120
    .local v3, "internetInfo":I
    const-string/jumbo v4, "%04x"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 102
    .end local v3    # "internetInfo":I
    .restart local v0    # "b1":B
    :cond_5
    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 103
    int-to-byte v0, v6

    .line 104
    .local v0, "b1":B
    or-int/lit8 v4, v0, 0x2

    int-to-byte v0, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "\n P2P-CCC-Internet Accessibility Info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string/jumbo v1, "\n MirrorLink Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 130
    const-string/jumbo v1, "\n Have internet Access = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 131
    const-string/jumbo v1, "\n Internet Access required = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 132
    const-string/jumbo v1, "\n MirrorLink Client Preference Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 133
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

    .line 147
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 149
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return-void

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0

    :cond_1
    move v1, v2

    .line 149
    goto :goto_1
.end method
