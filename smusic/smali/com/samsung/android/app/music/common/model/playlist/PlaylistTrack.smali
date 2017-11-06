.class public Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;
.super Lcom/samsung/android/app/music/common/model/SimpleTrack;
.source "PlaylistTrack.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private displayOrder:Ljava/lang/String;

.field private isValid:I

.field private playlistId:Ljava/lang/String;

.field private registDate:Ljava/lang/String;

.field private trackSeqId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>(Landroid/os/Parcel;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->playlistId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->trackSeqId:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->displayOrder:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->registDate:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 1
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAudioType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->setAudioType(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->setTrackId(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->setTrackTitle(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->setImageUrl(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->setAlbumId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->setAlbumTitle(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->setArtistList(Ljava/util/ArrayList;)V

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->setArtistNames(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getExplicit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->setExplicit(I)V

    .line 43
    return-void
.end method

.method public static convertToPlaylistMap(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;
    .locals 5
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "audioId"    # J
    .param p3, "playlistId"    # J

    .prologue
    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v0, "newValues":Landroid/content/ContentValues;
    const-string v1, "audio_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    const-string/jumbo v1, "playlist_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    const-string v1, "audio_source_id"

    const-string/jumbo v2, "source_id"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v1, "server_track_seq_id"

    const-string/jumbo v2, "server_track_seq_id"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "play_order"

    const-string/jumbo v2, "play_order"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "audio_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dummy_data_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "source_id"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "audio_cp_attrs"

    const-string v2, "cp_attrs"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    return-object v0
.end method

.method public static convertToVirtualAudioMeta(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 137
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v0, "newValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "source_id"

    const-string/jumbo v3, "source_id"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "title":Ljava/lang/String;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v2, "title_key"

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "artist"

    const-string v3, "artist"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "drm_type"

    const-string v2, "cp_attrs"

    .line 144
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v4, 0x80001

    if-ne v2, v4, :cond_0

    const/4 v2, 0x2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    return-object v0

    .line 144
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDisplayOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->displayOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getIsValid()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->isValid:I

    return v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->registDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackSeqId()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->trackSeqId:I

    return v0
.end method

.method public setIsValid(I)V
    .locals 0
    .param p1, "isValid"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->isValid:I

    .line 83
    return-void
.end method

.method public setPlaylistId(Ljava/lang/String;)V
    .locals 0
    .param p1, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->playlistId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTrackSeqId(I)V
    .locals 0
    .param p1, "trackSeqId"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->trackSeqId:I

    .line 67
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 110
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "play_order"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->getDisplayOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "server_track_seq_id"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->getTrackSeqId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->playlistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->trackSeqId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->displayOrder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->registDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method
