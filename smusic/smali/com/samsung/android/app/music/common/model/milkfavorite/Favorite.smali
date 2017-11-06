.class public Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "Favorite.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Favorite"


# instance fields
.field public favoriteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;",
            ">;"
        }
    .end annotation
.end field

.field public latestUpdateDate:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->type:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->latestUpdateDate:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->favoriteList:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "latestUpdateDate"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->type:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->latestUpdateDate:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "latestUpdateDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "favoriteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->type:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->latestUpdateDate:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->favoriteList:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public static createFavoriteObjectFromFavoriteDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "favorite":Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 69
    const-string v2, "favorite_type_update_date"

    .line 70
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 69
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUtcToString(J)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "time":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    .end local v0    # "favorite":Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
    const-string v2, "favorite_type"

    .line 72
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v1    # "time":Ljava/lang/String;
    .restart local v0    # "favorite":Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
    :cond_0
    return-object v0
.end method

.method public static fromFavorite(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .locals 9
    .param p0, "favoriteTrack"    # Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .prologue
    .line 124
    new-instance v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-direct {v5}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 126
    .local v5, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getId()Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "trackId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "trackTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "albumId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "artistNames":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "imageUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "albumTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getArtists()Ljava/util/ArrayList;

    move-result-object v4

    .line 134
    .local v4, "mArtists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setTrackId(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setTrackTitle(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v5, v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAlbumId(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5, v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setArtistNames(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageUrl(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v5, v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAlbumTitle(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v5, v4}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setArtistList(Ljava/util/ArrayList;)V

    .line 141
    const v8, 0x80002

    invoke-static {v8}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->convertToAudioType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAudioType(Ljava/lang/String;)V

    .line 142
    return-object v5
.end method

.method public static isDeviceUserFavorite(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 146
    const-string v7, "0"

    .line 148
    .local v7, "isFavorite":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "favorite_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 152
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 154
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    const-string v7, "1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_1
    return-object v7

    .line 158
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static toContentValuesArray(Ljava/util/ArrayList;Ljava/lang/String;I)[Landroid/content/ContentValues;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "baseOrder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;",
            ">;",
            "Ljava/lang/String;",
            "I)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "favoriteLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/ContentValues;

    .line 82
    .local v4, "values":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 84
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .line 85
    .local v3, "list":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "baseOrder":I
    .local v0, "baseOrder":I
    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->toContentValues(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v6

    aput-object v6, v4, v1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    move p2, v0

    .line 86
    .end local v0    # "baseOrder":I
    .restart local p2    # "baseOrder":I
    goto :goto_0

    .line 88
    .end local v3    # "list":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    :cond_0
    return-object v4
.end method

.method public static toContentValuesArrayTrack(Ljava/util/ArrayList;JI)[Landroid/content/ContentValues;
    .locals 9
    .param p1, "favoriteId"    # J
    .param p3, "baseOrder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;JI)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "trackLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Landroid/content/ContentValues;

    .line 95
    .local v5, "values":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 97
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 99
    .local v3, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 100
    .local v4, "value":Landroid/content/ContentValues;
    const-string/jumbo v7, "play_order"

    add-int/lit8 v0, p3, 0x1

    .end local p3    # "baseOrder":I
    .local v0, "baseOrder":I
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v7, "audio_cp_attrs"

    const v8, 0x80002

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aput-object v4, v5, v1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    move p3, v0

    .line 103
    .end local v0    # "baseOrder":I
    .restart local p3    # "baseOrder":I
    goto :goto_0

    .line 105
    .end local v3    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_0
    return-object v5
.end method

.method public static toContentValuesToPlaylistHeart(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;
    .locals 5
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "playlistId"    # J
    .param p3, "rowAudioId"    # J

    .prologue
    .line 110
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v0, "newValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "server_track_seq_id"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "play_order"

    const-string/jumbo v2, "play_order"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "audio_id"

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 114
    .end local p3    # "rowAudioId":J
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string/jumbo v1, "playlist_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    const-string v1, "audio_source_id"

    const-string/jumbo v2, "source_id"

    .line 117
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "audio_cp_attrs"

    const-string v2, "audio_cp_attrs"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object v0

    .line 113
    .restart local p3    # "rowAudioId":J
    :cond_0
    const-wide/16 p3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getFavoriteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->favoriteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLatestUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->latestUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFavoriteList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "favoriteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->favoriteList:Ljava/util/ArrayList;

    .line 200
    return-void
.end method

.method public setLatestUpdateDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "latestUpdateDate"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->latestUpdateDate:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->type:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->latestUpdateDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->favoriteList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 171
    return-void
.end method
