.class public Lcom/samsung/android/app/music/common/model/playlist/Playlist;
.super Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;
.source "Playlist.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/Playlist;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private order:I

.field private registDate:Ljava/lang/String;

.field private registDateLong:J

.field private trackCount:I

.field private type:I

.field private updateDate:Ljava/lang/String;

.field private updateDateLong:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/samsung/android/app/music/common/model/playlist/Playlist$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/playlist/Playlist$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;-><init>(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "playlistId"    # Ljava/lang/String;
    .param p2, "playlistTitle"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static createContentValue(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 7
    .param p0, "sourcePlaylistId"    # Ljava/lang/String;
    .param p1, "playlistTitle"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 112
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 113
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dummy_data_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v1, "source_playlist_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    const-string v1, "is_sync"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    return-object v0
.end method

.method public static from(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/playlist/Playlist;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 122
    new-instance v0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/playlist/Playlist;-><init>()V

    .line 123
    .local v0, "playlist":Lcom/samsung/android/app/music/common/model/playlist/Playlist;
    const-string/jumbo v1, "source_playlist_id"

    .line 124
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->sourcePlaylistId:Ljava/lang/String;

    .line 125
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->playlistId:J

    .line 126
    const-string v1, "name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->playlistTitle:Ljava/lang/String;

    .line 127
    const-string v1, "date_modified"

    .line 128
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->updateDateLong:J

    .line 129
    const-string v1, "date_added"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->registDateLong:J

    .line 130
    return-object v0
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->order:I

    return v0
.end method

.method public getRegistDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->registDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->trackCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->type:I

    return v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDateLong()J
    .locals 4

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->updateDateLong:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->updateDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->updateDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateSec(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->updateDateLong:J

    .line 63
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->updateDateLong:J

    return-wide v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dummy_data_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->sourcePlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "source_playlist_id"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->sourcePlaylistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "name"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->playlistTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "date_added"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/playlist/Playlist;->registDate:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateSec(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v1, "is_sync"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    return-void
.end method
