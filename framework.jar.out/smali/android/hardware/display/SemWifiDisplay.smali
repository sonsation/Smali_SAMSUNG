.class public final Landroid/hardware/display/SemWifiDisplay;
.super Ljava/lang/Object;
.source "SemWifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/SemWifiDisplay$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/SemWifiDisplay;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplay;

.field public static final SCREEN_SHARING_AP_CONNECTED:I = 0x3

.field public static final SCREEN_SHARING_AP_NOT_CONNECTED:I = 0x1

.field public static final SCREEN_SHARING_NOT_SUPPORTED:I


# instance fields
.field private mIsPersistentMode:Z

.field private mIsPinConnection:Z

.field private mPort:Ljava/lang/String;

.field private mWfd:Landroid/hardware/display/WifiDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/display/SemWifiDisplay;

    sput-object v0, Landroid/hardware/display/SemWifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplay;

    .line 60
    new-instance v0, Landroid/hardware/display/SemWifiDisplay$1;

    invoke-direct {v0}, Landroid/hardware/display/SemWifiDisplay$1;-><init>()V

    sput-object v0, Landroid/hardware/display/SemWifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/WifiDisplay;)V
    .locals 1
    .param p1, "wfd"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "7236"

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mPort:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/WifiDisplay;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "wfd"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "isPinConnection"    # Z
    .param p4, "isPersistentMode"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "7236"

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mPort:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    .line 86
    iput-object p2, p0, Landroid/hardware/display/SemWifiDisplay;->mPort:Ljava/lang/String;

    .line 87
    iput-boolean p3, p0, Landroid/hardware/display/SemWifiDisplay;->mIsPinConnection:Z

    .line 88
    iput-boolean p4, p0, Landroid/hardware/display/SemWifiDisplay;->mIsPersistentMode:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "wfd"    # Landroid/os/Parcelable;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "7236"

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mPort:Ljava/lang/String;

    .line 110
    instance-of v0, p1, Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_0

    .line 111
    nop

    nop

    .end local p1    # "wfd":Landroid/os/Parcelable;
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    .line 109
    :goto_0
    return-void

    .line 112
    .restart local p1    # "wfd":Landroid/os/Parcelable;
    :cond_0
    instance-of v0, p1, Landroid/hardware/display/SemWifiDisplay;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 113
    nop

    nop

    iget-object v0, v0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    move-object v0, p1

    .line 114
    nop

    nop

    iget-object v0, v0, Landroid/hardware/display/SemWifiDisplay;->mPort:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mPort:Ljava/lang/String;

    move-object v0, p1

    .line 115
    nop

    nop

    iget-boolean v0, v0, Landroid/hardware/display/SemWifiDisplay;->mIsPinConnection:Z

    iput-boolean v0, p0, Landroid/hardware/display/SemWifiDisplay;->mIsPinConnection:Z

    .line 116
    nop

    nop

    .end local p1    # "wfd":Landroid/os/Parcelable;
    iget-boolean v0, p1, Landroid/hardware/display/SemWifiDisplay;->mIsPersistentMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/SemWifiDisplay;->mIsPersistentMode:Z

    goto :goto_0

    .line 118
    .restart local p1    # "wfd":Landroid/os/Parcelable;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameter must be WifiDisplay type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "targetDeviceAddress"    # Ljava/lang/String;
    .param p3, "primaryDeviceType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "7236"

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mPort:Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    const/4 v3, 0x0

    .line 100
    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    move v5, v4

    move-object v7, p3

    .line 99
    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    .line 98
    return-void
.end method


# virtual methods
.method public canConnect()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    return v0
.end method

.method public compareTo(Landroid/hardware/display/SemWifiDisplay;)I
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/SemWifiDisplay;

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 354
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 356
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/hardware/display/SemWifiDisplay;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/SemWifiDisplay;

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 299
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 299
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 290
    instance-of v0, p1, Landroid/hardware/display/SemWifiDisplay;

    if-eqz v0, :cond_0

    nop

    nop

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendlyDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconIdx()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getIconIdx()I

    move-result v0

    return v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiDisplay()Landroid/hardware/display/WifiDisplay;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isEmptySurface()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isEmptySurface()Z

    move-result v0

    return v0
.end method

.method public isOnlySupportsAudio()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isOnlySupportsAudio()Z

    move-result v0

    return v0
.end method

.method public isPersistentMode()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/hardware/display/SemWifiDisplay;->mIsPersistentMode:Z

    return v0
.end method

.method public isPinConnection()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Landroid/hardware/display/SemWifiDisplay;->mIsPinConnection:Z

    return v0
.end method

.method public setEmptySurface(Z)V
    .locals 1
    .param p1, "isEmptySurface"    # Z

    .prologue
    .line 384
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    .line 383
    return-void
.end method

.method public setPersistentMode()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/display/SemWifiDisplay;->mIsPersistentMode:Z

    .line 220
    return-void
.end method

.method public setPinConnection()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/display/SemWifiDisplay;->mIsPinConnection:Z

    .line 197
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplay;->mPort:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->setUri(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplay;->mPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 315
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-boolean v0, p0, Landroid/hardware/display/SemWifiDisplay;->mIsPinConnection:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-boolean v0, p0, Landroid/hardware/display/SemWifiDisplay;->mIsPersistentMode:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    return-void

    :cond_0
    move v0, v2

    .line 316
    goto :goto_0

    :cond_1
    move v1, v2

    .line 317
    goto :goto_1
.end method
