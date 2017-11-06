.class public Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;
.source "PlaylistTrackQueryArgs.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "playlistType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "cpAttrs"    # I
    .param p5, "filterOption"    # I

    .prologue
    .line 25
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "playlistType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "cpAttrs"    # I
    .param p5, "filterOption"    # I
    .param p6, "limit"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x64

    const/4 v7, -0x1

    .line 38
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "projectionBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "_id"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v4, "album_id"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v4, "artist"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v4, "is_secretbox"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v4, "drm_type"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v4, "cp_attrs"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HIGH_RESOLUTION_AUDIO:Z

    if-eqz v4, :cond_0

    .line 49
    const-string/jumbo v4, "sampling_rate"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v4, "bit_depth"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v4, "mime_type"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v4, :cond_1

    .line 54
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_2

    .line 57
    const-string/jumbo v4, "source_id"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 61
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wrong keyword for query music play list... keyword is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_4
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 73
    .local v2, "listItemId":J
    :goto_0
    if-ne p4, v7, :cond_5

    .line 74
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_7

    .line 75
    const/16 p4, 0xf

    .line 81
    :cond_5
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 82
    long-to-int v4, v2

    packed-switch v4, :pswitch_data_0

    .line 134
    const-string v4, "audio_id"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 137
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 138
    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    .line 139
    if-ne p5, v7, :cond_6

    .line 141
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/samsung/android/app/music/common/util/ListUtils;->getPlaylistFilterOption(Landroid/content/Context;J)I

    move-result p5

    .line 143
    :cond_6
    invoke-static {p5}, Lcom/samsung/android/app/music/common/util/ListUtils;->getPlaylistOrderBy(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 145
    :goto_2
    return-void

    .line 68
    .end local v2    # "listItemId":J
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 70
    const-wide/16 v2, -0x1

    .restart local v2    # "listItemId":J
    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const p4, 0x10001

    goto :goto_1

    .line 84
    :pswitch_0
    const-string v4, "audio_id"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v4

    const-string v6, "local"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 89
    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    .line 90
    if-ne p5, v7, :cond_8

    .line 92
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v4

    .line 91
    invoke-static {p1, v4, v5}, Lcom/samsung/android/app/music/common/util/ListUtils;->getPlaylistFilterOption(Landroid/content/Context;J)I

    move-result p5

    .line 94
    :cond_8
    invoke-static {p5}, Lcom/samsung/android/app/music/common/util/ListUtils;->getPlaylistOrderBy(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->onFavoriteTracksQueryArgsCreated()V

    goto :goto_2

    .line 98
    :pswitch_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 99
    if-nez p6, :cond_9

    .line 100
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    .line 102
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    invoke-static {v4, p6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLimitAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "most_played"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    .line 106
    const-string v4, "most_played DESC"

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->onMostPlayedTracksQueryArgsCreated()V

    goto/16 :goto_2

    .line 110
    :pswitch_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 111
    if-nez p6, :cond_a

    .line 112
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    .line 114
    :cond_a
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    invoke-static {v4, p6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLimitAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "recently_played"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    .line 117
    const-string/jumbo v4, "recently_played DESC"

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->onRecentlyPlayedTracksQueryArgsCreated()V

    goto/16 :goto_2

    .line 123
    :pswitch_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 124
    if-nez p6, :cond_b

    .line 125
    const-string p6, "900"

    .line 127
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    invoke-static {v4, p6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLimitAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->DEFAULT_SELECTION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "recently_added_remove_flag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    .line 130
    const-string v4, "date_added DESC"

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->onRecentlyAddedTracksQueryArgsCreated()V

    goto/16 :goto_2

    .line 82
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onFavoriteTracksQueryArgsCreated()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method protected onMostPlayedTracksQueryArgsCreated()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method protected onRecentlyAddedTracksQueryArgsCreated()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method protected onRecentlyPlayedTracksQueryArgsCreated()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
