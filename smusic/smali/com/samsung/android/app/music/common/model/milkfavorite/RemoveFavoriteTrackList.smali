.class public Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;
.super Ljava/lang/Object;
.source "RemoveFavoriteTrackList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audio_id:Ljava/lang/String;

.field private source_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->audio_id:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->source_id:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "audio_id"    # Ljava/lang/String;
    .param p2, "source_id"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->audio_id:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->source_id:Ljava/lang/String;

    .line 27
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

.method public getAudio_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->audio_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->source_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAudio_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "audio_id"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->audio_id:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSource_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "source_id"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->source_id:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->audio_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->source_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return-void
.end method
