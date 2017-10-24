.class public final Landroid/bluetooth/le/AdvertiseSettings;
.super Ljava/lang/Object;
.source "AdvertiseSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertiseSettings$1;,
        Landroid/bluetooth/le/AdvertiseSettings$Builder;
    }
.end annotation


# static fields
.field private static final ADVERTISE_INTERVAL_MAX:I = 0x4000

.field private static final ADVERTISE_INTERVAL_MIN:I = 0x20

.field public static final ADVERTISE_MODE_BALANCED:I = 0x1

.field public static final ADVERTISE_MODE_LOW_LATENCY:I = 0x2

.field public static final ADVERTISE_MODE_LOW_POWER:I = 0x0

.field public static final ADVERTISE_TX_POWER_HIGH:I = 0x3

.field public static final ADVERTISE_TX_POWER_LOW:I = 0x1

.field public static final ADVERTISE_TX_POWER_MEDIUM:I = 0x2

.field public static final ADVERTISE_TX_POWER_ULTRA_LOW:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/AdvertiseSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIMITED_ADVERTISING_MAX_MILLIS:I = 0x2bf20

.field public static final SEM_ADVERTISE_MODE_CUSTOM:I = 0x64


# instance fields
.field private final mAdvertiseConnectable:Z

.field private final mAdvertiseMode:I

.field private final mAdvertiseTimeoutMillis:I

.field private final mAdvertiseTxPowerLevel:I

.field private final mCustomAdvInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseSettings$1;-><init>()V

    .line 168
    sput-object v0, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method private constructor <init>(IIZII)V
    .locals 0
    .param p1, "advertiseMode"    # I
    .param p2, "advertiseTxPowerLevel"    # I
    .param p3, "advertiseConnectable"    # Z
    .param p4, "advertiseTimeout"    # I
    .param p5, "customAdvInterval"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    .line 97
    iput p2, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    .line 98
    iput-boolean p3, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    .line 99
    iput p4, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    .line 100
    iput p5, p0, Landroid/bluetooth/le/AdvertiseSettings;->mCustomAdvInterval:I

    .line 95
    return-void
.end method

.method synthetic constructor <init>(IIZIILandroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p1, "advertiseMode"    # I
    .param p2, "advertiseTxPowerLevel"    # I
    .param p3, "advertiseConnectable"    # Z
    .param p4, "advertiseTimeout"    # I
    .param p5, "customAdvInterval"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(IIZII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mCustomAdvInterval:I

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomAdvInterval()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mCustomAdvInterval:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    return v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Settings [mAdvertiseMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    const-string/jumbo v1, ", mAdvertiseTxPowerLevel="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string/jumbo v1, ", mAdvertiseConnectable="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    const-string/jumbo v1, ", mAdvertiseTimeoutMillis="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    const-string/jumbo v1, "]"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 161
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mCustomAdvInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
