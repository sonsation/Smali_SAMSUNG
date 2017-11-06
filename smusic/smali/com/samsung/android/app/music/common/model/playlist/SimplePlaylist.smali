.class public Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;
.super Ljava/lang/Object;
.source "SimplePlaylist.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNDEFINED:J


# instance fields
.field protected playlistId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localPlaylistId"
    .end annotation
.end field

.field protected playlistTitle:Ljava/lang/String;

.field protected sourcePlaylistId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playlistId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->playlistId:J

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->playlistId:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->sourcePlaylistId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->playlistTitle:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "playlistId"    # Ljava/lang/String;
    .param p2, "playlistTitle"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->playlistId:J

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->sourcePlaylistId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->playlistTitle:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaylistId()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->playlistId:J

    return-wide v0
.end method

.method public getPlaylistTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->playlistTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePlaylistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->sourcePlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method public setPlaylistTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "playlistTitle"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->playlistTitle:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->sourcePlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->playlistTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
