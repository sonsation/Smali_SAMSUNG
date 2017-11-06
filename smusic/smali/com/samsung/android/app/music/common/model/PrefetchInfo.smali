.class public Lcom/samsung/android/app/music/common/model/PrefetchInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "PrefetchInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/PrefetchInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/PrefetchData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/samsung/android/app/music/common/model/PrefetchInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/PrefetchInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/PrefetchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 13
    sget-object v0, Lcom/samsung/android/app/music/common/model/PrefetchData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/PrefetchInfo;->list:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefetchData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/PrefetchData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PrefetchInfo;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setTrackInfo()V
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/PrefetchInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/PrefetchData;

    .line 47
    .local v0, "data":Lcom/samsung/android/app/music/common/model/PrefetchData;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PrefetchData;->setTrackInfo()V

    goto :goto_0

    .line 49
    .end local v0    # "data":Lcom/samsung/android/app/music/common/model/PrefetchData;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/PrefetchInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 20
    return-void
.end method
