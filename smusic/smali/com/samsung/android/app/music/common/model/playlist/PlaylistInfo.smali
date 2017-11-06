.class public Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "PlaylistInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private latestUpdateDate:Ljava/lang/String;

.field private playlist:Lcom/samsung/android/app/music/common/model/playlist/Playlist;

.field private playlists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/Playlist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 21
    const-class v0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->playlist:Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    .line 22
    return-void
.end method


# virtual methods
.method public getLatestUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->latestUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylist()Lcom/samsung/android/app/music/common/model/playlist/Playlist;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->playlist:Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    return-object v0
.end method

.method public getPlaylists()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/Playlist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->playlists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public playlistSize()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->playlists:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->playlists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toContentValuesArray()[Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 55
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->playlists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    .line 56
    .local v2, "values":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 57
    .local v0, "index":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->playlists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    .line 58
    .local v1, "playlist":Lcom/samsung/android/app/music/common/model/playlist/Playlist;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v2, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    .end local v1    # "playlist":Lcom/samsung/android/app/music/common/model/playlist/Playlist;
    :cond_0
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;->playlist:Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    return-void
.end method
