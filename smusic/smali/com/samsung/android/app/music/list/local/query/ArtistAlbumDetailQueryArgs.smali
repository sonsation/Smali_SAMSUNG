.class public Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;
.source "ArtistAlbumDetailQueryArgs.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 4
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "filterOption"    # I
    .param p3, "artistGroupType"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->uri:Landroid/net/Uri;

    const-string v3, "album_id"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getGroupByAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->uri:Landroid/net/Uri;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v0, "projectionBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "album_id AS _id"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    const-string v2, "album"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v2, :cond_0

    .line 21
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    const-string v2, "MAX(year_name) AS maxyear"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 28
    const-string v1, "music_album_artist"

    .line 33
    .local v1, "selectionKeyword":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->projection:[Ljava/lang/String;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->DEFAULT_SELECTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->selection:Ljava/lang/String;

    .line 36
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 37
    const-string v2, "maxyear DESC"

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->orderBy:Ljava/lang/String;

    .line 41
    :goto_1
    return-void

    .line 30
    .end local v1    # "selectionKeyword":Ljava/lang/String;
    :cond_1
    const-string v1, "artist_id"

    .restart local v1    # "selectionKeyword":Ljava/lang/String;
    goto :goto_0

    .line 39
    :cond_2
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_1
.end method
