.class public Lcom/samsung/android/app/music/common/model/AlbumTrack;
.super Lcom/samsung/android/app/music/common/model/SimpleTrack;
.source "AlbumTrack.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/app/music/common/model/AlbumTrack;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/samsung/android/app/music/common/model/AlbumTrack$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/AlbumTrack$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/AlbumTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 8
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>(Landroid/os/Parcel;)V

    .line 17
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/app/music/common/model/AlbumTrack;)I
    .locals 2
    .param p1, "another"    # Lcom/samsung/android/app/music/common/model/AlbumTrack;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getDiscNo()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getDiscNo()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    const/4 v0, -0x1

    .line 44
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getDiscNo()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getDiscNo()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 42
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getTrackNo()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->getTrackNo()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/samsung/android/app/music/common/model/AlbumTrack;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/model/AlbumTrack;->compareTo(Lcom/samsung/android/app/music/common/model/AlbumTrack;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    return-void
.end method
