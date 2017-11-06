.class public Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;
.super Ljava/lang/Object;
.source "RadioPlayLimitInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private basicOffer:I

.field private bonusOffer:I

.field private endDate:Ljava/lang/String;

.field private playCnt:I

.field private startDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->basicOffer:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->bonusOffer:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->playCnt:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->startDate:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->endDate:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getBasicOffer()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->basicOffer:I

    return v0
.end method

.method public getBonusOffer()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->bonusOffer:I

    return v0
.end method

.method public getPlayCount()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->playCnt:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->basicOffer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->bonusOffer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->playCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->startDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->endDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
