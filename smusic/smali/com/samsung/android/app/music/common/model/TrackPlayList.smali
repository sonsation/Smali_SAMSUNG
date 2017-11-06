.class public Lcom/samsung/android/app/music/common/model/TrackPlayList;
.super Ljava/lang/Object;
.source "TrackPlayList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/TrackPlayList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field trackPlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/TrackPlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/samsung/android/app/music/common/model/TrackPlayList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/TrackPlayList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/TrackPlayList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/samsung/android/app/music/common/model/TrackPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlayList;->trackPlays:Ljava/util/List;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/TrackPlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/TrackPlay;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlayList;->trackPlays:Ljava/util/List;

    .line 14
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlayList;->trackPlays:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 41
    return-void
.end method
