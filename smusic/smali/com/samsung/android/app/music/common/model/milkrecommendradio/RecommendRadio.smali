.class public Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "RecommendRadio.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bannerList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bannerList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;",
            ">;"
        }
    .end annotation
.end field

.field private radioBoxInfo:Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radioBoxInfo"
    .end annotation
.end field

.field private radioBoxList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radioBoxList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 32
    const-class v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->radioBoxInfo:Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->radioBoxList:Ljava/util/List;

    .line 34
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->bannerList:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public getRadioBannerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->bannerList:Ljava/util/List;

    return-object v0
.end method

.method public getRadioBoxInfo()Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->radioBoxInfo:Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;

    return-object v0
.end method

.method public getRadioBoxList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->radioBoxList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->radioBoxInfo:Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->radioBoxList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->bannerList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 28
    return-void
.end method
