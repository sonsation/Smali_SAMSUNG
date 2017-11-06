.class public Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;
.super Ljava/lang/Object;
.source "PlaylistTrackRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private trackSeqIds:Ljava/util/ArrayList;
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
    .line 58
    new-instance v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->type:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->trackSeqIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->trackSeqIds:Ljava/util/ArrayList;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->trackSeqIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 25
    return-void
.end method


# virtual methods
.method public addTrackSeqId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->trackSeqIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->trackSeqIds:Ljava/util/ArrayList;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->trackSeqIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackSeqIds()Ljava/util/ArrayList;
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
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->trackSeqIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setTrackSeqIds(Ljava/util/ArrayList;)V
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
    .line 32
    .local p1, "trackSeqIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->trackSeqIds:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->type:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackRequest;->trackSeqIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 55
    return-void
.end method
