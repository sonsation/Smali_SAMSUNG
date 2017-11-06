.class public Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "OnDeviceRecommendKeywordsResponseModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private keywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;->keywords:Ljava/util/List;

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;->keywords:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getKeywordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;->keywords:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;->keywords:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 27
    return-void
.end method
