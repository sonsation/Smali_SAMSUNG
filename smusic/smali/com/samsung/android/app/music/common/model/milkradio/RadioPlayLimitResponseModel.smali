.class public Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitResponseModel;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "RadioPlayLimitResponseModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitResponseModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private radioPlayInfo:Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitResponseModel$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitResponseModel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitResponseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 21
    const-class v0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitResponseModel;->radioPlayInfo:Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;

    .line 22
    return-void
.end method


# virtual methods
.method public getRadioPlayLimitInfo()Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitResponseModel;->radioPlayInfo:Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitResponseModel;->radioPlayInfo:Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 28
    return-void
.end method
