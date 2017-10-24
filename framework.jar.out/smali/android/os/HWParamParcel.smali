.class public Landroid/os/HWParamParcel;
.super Ljava/lang/Object;
.source "HWParamParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HWParamParcel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/HWParamParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field appID:Ljava/lang/String;

.field compID:Ljava/lang/String;

.field compManufacture:Ljava/lang/String;

.field compVer:Ljava/lang/String;

.field customMap:Ljava/lang/String;

.field developMap:Ljava/lang/String;

.field feature:Ljava/lang/String;

.field hitType:Ljava/lang/String;

.field privateMap:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/os/HWParamParcel$1;

    invoke-direct {v0}, Landroid/os/HWParamParcel$1;-><init>()V

    sput-object v0, Landroid/os/HWParamParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/HWParamParcel;->type:I

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/HWParamParcel;->type:I

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Landroid/os/HWParamParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/HWParamParcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/HWParamParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getCompID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    return-object v0
.end method

.method public getCompManufacture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    return-object v0
.end method

.method public getCompVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomMap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    return-object v0
.end method

.method public getDevelopMap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getHitType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateMap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Landroid/os/HWParamParcel;->type:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/HWParamParcel;->type:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "compID"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "compVer"    # Ljava/lang/String;
    .param p6, "compManufacture"    # Ljava/lang/String;
    .param p7, "developMap"    # Ljava/lang/String;
    .param p8, "customMap"    # Ljava/lang/String;
    .param p9, "privateMap"    # Ljava/lang/String;

    .prologue
    .line 88
    iput p1, p0, Landroid/os/HWParamParcel;->type:I

    .line 89
    iput-object p2, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    .line 95
    iput-object p8, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    .line 96
    iput-object p9, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "compID"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "compVer"    # Ljava/lang/String;
    .param p6, "compManufacture"    # Ljava/lang/String;
    .param p7, "developMap"    # Ljava/lang/String;
    .param p8, "customMap"    # Ljava/lang/String;
    .param p9, "privateMap"    # Ljava/lang/String;
    .param p10, "appID"    # Ljava/lang/String;

    .prologue
    .line 103
    iput p1, p0, Landroid/os/HWParamParcel;->type:I

    .line 104
    iput-object p2, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    .line 108
    iput-object p6, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    .line 109
    iput-object p7, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    .line 110
    iput-object p8, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    .line 111
    iput-object p9, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    .line 112
    iput-object p10, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 49
    iget v0, p0, Landroid/os/HWParamParcel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Landroid/os/HWParamParcel;->writeToParcel(Landroid/os/Parcel;)V

    .line 81
    return-void
.end method
