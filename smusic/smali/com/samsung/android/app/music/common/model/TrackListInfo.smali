.class public Lcom/samsung/android/app/music/common/model/TrackListInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "TrackListInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/TrackListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mSkippableCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skippableCount"
    .end annotation
.end field

.field private mStationId:Ljava/lang/String;

.field private mTracks:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/music/common/model/TrackListInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->LOG_TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/samsung/android/app/music/common/model/TrackListInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/TrackListInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mSkippableCount:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mStationId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mSkippableCount:I

    .line 34
    sget-object v0, Lcom/samsung/android/app/music/common/model/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 1
    .param p1, "prev"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p2, "curr"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p3, "next"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mSkippableCount:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getSkippableCount()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mSkippableCount:I

    return v0
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mStationId:Ljava/lang/String;

    return-object v0
.end method

.method public getTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public makeUnlimitSkipCount()V
    .locals 1

    .prologue
    .line 75
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mSkippableCount:I

    .line 76
    return-void
.end method

.method public setSkippableCount(I)V
    .locals 3
    .param p1, "skippableCount"    # I

    .prologue
    .line 79
    if-gtz p1, :cond_0

    .line 80
    sget-object v0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSkippableCount >> count - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 p1, 0x0

    .line 83
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mSkippableCount:I

    .line 84
    return-void
.end method

.method public setStationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mStationId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTracks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Track;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    .line 92
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mStationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mSkippableCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackListInfo;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 43
    return-void
.end method
