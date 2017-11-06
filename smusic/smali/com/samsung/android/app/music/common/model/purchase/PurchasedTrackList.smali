.class public Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "PurchasedTrackList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;",
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
            "Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private moreYn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;->list:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMoreYn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;->moreYn:Ljava/lang/String;

    return-object v0
.end method

.method public toContentValuesArray(I)[Landroid/content/ContentValues;
    .locals 5
    .param p1, "trackType"    # I

    .prologue
    .line 55
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    .line 56
    .local v2, "values":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 57
    .local v0, "index":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrack;

    .line 58
    .local v1, "track":Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrack;
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrack;->toContentValues(I)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v2, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrack;
    :cond_0
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 30
    return-void
.end method
