.class public Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "EventPopup.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private againShowTime:J

.field private imageUrl:Ljava/lang/String;

.field private popupCombination:Ljava/lang/String;

.field private popupDomainType:Ljava/lang/String;

.field private popupId:Ljava/lang/String;

.field private popupLinkUrl:Ljava/lang/String;

.field private popupTitle:Ljava/lang/String;

.field private popupType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupId:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupTitle:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupType:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->imageUrl:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupLinkUrl:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupDomainType:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupCombination:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->againShowTime:J

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "popupId"    # Ljava/lang/String;
    .param p2, "popupTitle"    # Ljava/lang/String;
    .param p3, "popupType"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "popupLinkUrl"    # Ljava/lang/String;
    .param p6, "popupDomainType"    # Ljava/lang/String;
    .param p7, "popupCombination"    # Ljava/lang/String;
    .param p8, "againShowTime"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupTitle:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupType:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->imageUrl:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupLinkUrl:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupDomainType:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupCombination:Ljava/lang/String;

    .line 38
    iput-wide p8, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->againShowTime:J

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getDoNotShowTime()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->againShowTime:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupCombination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupCombination:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupDomainType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupDomainType:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupId:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupType:Ljava/lang/String;

    return-object v0
.end method

.method public setDoNotShowTime(J)V
    .locals 1
    .param p1, "againShowTime"    # J

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->againShowTime:J

    .line 123
    return-void
.end method

.method public setPopupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "popupId"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setPopupLinkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "popupLinkUrl"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupLinkUrl:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupLinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupDomainType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->popupCombination:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->againShowTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    return-void
.end method
