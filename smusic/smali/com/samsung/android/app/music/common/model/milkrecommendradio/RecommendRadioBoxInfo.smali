.class public Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "RecommendRadioBoxInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private radioBoxId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radioBoxId"
    .end annotation
.end field

.field private radioBoxTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radioBoxTitle"
    .end annotation
.end field

.field private stationList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stationList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->radioBoxId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->radioBoxTitle:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->stationList:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public getRadioBoxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->radioBoxId:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioBoxTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->radioBoxTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->stationList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->radioBoxId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->radioBoxTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;->stationList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 28
    return-void
.end method
