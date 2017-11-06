.class public Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "DownloadDeviceListInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 14
    sget-object v0, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;->deviceList:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public getDeviceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;->deviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;->deviceList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 21
    return-void
.end method
