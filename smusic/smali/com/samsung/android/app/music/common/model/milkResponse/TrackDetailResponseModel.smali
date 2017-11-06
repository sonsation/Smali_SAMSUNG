.class public Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "TrackDetailResponseModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field trackInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 22
    const-class v0, Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/TrackDetail;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->trackInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackInfo()Lcom/samsung/android/app/music/common/model/TrackDetail;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->trackInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->trackInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->trackInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    return-void
.end method
