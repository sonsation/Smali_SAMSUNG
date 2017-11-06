.class Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;
.super Ljava/lang/Object;
.source "SyncPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistEntry"
.end annotation


# static fields
.field static final DUMMY:I = -0x1


# instance fields
.field mAlbumId:I

.field mData:Ljava/lang/String;

.field mDateAdded:J

.field mName:Ljava/lang/String;

.field mNumberOfTracks:I

.field mRowId:J

.field mSourceId:J

.field mSyncedHashCode:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V
    .locals 1
    .param p1, "rowId"    # J
    .param p3, "sourceId"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "dateAdded"    # J
    .param p9, "numberOfTracks"    # I
    .param p10, "albumId"    # I
    .param p11, "syncedHashCode"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mRowId:J

    .line 68
    iput-wide p3, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mSourceId:J

    .line 69
    iput-object p5, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mName:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mData:Ljava/lang/String;

    .line 71
    iput-wide p7, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mDateAdded:J

    .line 72
    iput p9, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mNumberOfTracks:I

    .line 73
    iput p10, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mAlbumId:I

    .line 74
    iput-object p11, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mSyncedHashCode:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mNumberOfTracks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mAlbumId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 83
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "mRowId [%d], mSourceId [%d], mName [%s], mData [%s], mDateAdded[%d], mNumberOfTracks [%d], mAlbumId [%d]"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mRowId:J

    .line 85
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mSourceId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mData:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mDateAdded:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mNumberOfTracks:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist$PlaylistEntry;->mAlbumId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 83
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
