.class public Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "PlaylistTrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private playlistTracks:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "list"
        }
        value = "playlistTracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->playlistTracks:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaylistTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->playlistTracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setPlaylistTracks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "playlistTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->playlistTracks:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public setSimpleTracks(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "simpleTracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->playlistTracks:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->playlistTracks:Ljava/util/ArrayList;

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 64
    .local v0, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->playlistTracks:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;

    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;-><init>(Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v0    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_1
    return-void
.end method

.method public toContentValuesArray()[Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 69
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->playlistTracks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    .line 70
    .local v2, "values":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 71
    .local v0, "index":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->playlistTracks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;

    .line 72
    .local v1, "track":Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v2, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    goto :goto_0

    .line 75
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;
    :cond_0
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->playlistTracks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 32
    return-void
.end method
