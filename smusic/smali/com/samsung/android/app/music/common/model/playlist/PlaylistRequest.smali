.class public Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
.super Ljava/lang/Object;
.source "PlaylistRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private renamePlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private reorderingPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->type:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->renamePlaylist:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->reorderingPlaylist:Ljava/util/ArrayList;

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->reorderingPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 25
    return-void
.end method


# virtual methods
.method public addSimplePlaylist(Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;)V
    .locals 1
    .param p1, "playlist"    # Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->renamePlaylist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->renamePlaylist:Ljava/util/ArrayList;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->renamePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getRenamePlaylist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->renamePlaylist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReorderingPlaylist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->reorderingPlaylist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setReorderingPlaylist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "reorderingPlaylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->reorderingPlaylist:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->type:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->renamePlaylist:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->reorderingPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 65
    return-void
.end method
