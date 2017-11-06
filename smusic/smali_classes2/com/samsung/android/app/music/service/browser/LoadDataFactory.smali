.class public final Lcom/samsung/android/app/music/service/browser/LoadDataFactory;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;
.source "LoadDataFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected obtainBrowsableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/service/media/MediaBrowserService$Result;

    .prologue
    .line 41
    invoke-static {p2}, Lcom/samsung/android/app/music/service/browser/LoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object v10

    .line 42
    .local v10, "id":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;
    iget-object v9, v10, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    .line 43
    .local v9, "category":Ljava/lang/String;
    const-string v0, "Artists"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const-string v2, "artist"

    const/4 v3, 0x1

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;-><init>()V

    const/4 v6, 0x0

    const-string v7, "artist"

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const-string v0, "Albums"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const-string v2, "album"

    const/4 v3, 0x1

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;-><init>()V

    const/4 v6, 0x0

    const-string v7, "album"

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "Playlists"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const-string v2, "name"

    const/4 v3, 0x1

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>()V

    const/4 v6, 0x0

    const-string v7, "name"

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "Genres"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const-string v2, "genre_name"

    const/4 v3, 0x1

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreQueryArgs;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreQueryArgs;-><init>()V

    const-string v6, "genre_name"

    const-string v7, "genre_name"

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_3
    const-string v0, "Composers"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const-string v2, "composer"

    const/4 v3, 0x1

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;-><init>()V

    const-string v6, "composer"

    const-string v7, "composer"

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_4
    const-string v0, "Folders"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const-string v2, "bucket_display_name"

    const/4 v3, 0x1

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;

    invoke-direct {v5, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;-><init>(Landroid/content/Context;)V

    const-string v6, "bucket_id"

    const-string v7, "bucket_display_name"

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected obtainBrowserRootLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/service/media/MediaBrowserService$Result;

    .prologue
    const/4 v5, 0x0

    .line 35
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected obtainPlayableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/service/media/MediaBrowserService$Result;

    .prologue
    .line 77
    invoke-static {p2}, Lcom/samsung/android/app/music/service/browser/LoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object v11

    .line 78
    .local v11, "id":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;
    iget-object v10, v11, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    .line 79
    .local v10, "category":Ljava/lang/String;
    const-string v0, "Tracks"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v3, 0x0

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    const/4 v6, 0x0

    const-string/jumbo v7, "title"

    const-string v8, "artist"

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const-string v0, "artist"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v3, 0x0

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;

    iget-object v1, v11, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string/jumbo v7, "title"

    const-string v8, "artist"

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    const-string v0, "album"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v3, 0x0

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;

    iget-object v1, v11, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string/jumbo v7, "title"

    const-string v8, "artist"

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v0, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    new-instance v12, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v6, 0x0

    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    iget-object v2, v11, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    const-string/jumbo v3, "unknown"

    .line 92
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ListUtils;->getActionableCpAttrs()I

    move-result v4

    const/4 v5, -0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x0

    const-string/jumbo v8, "title"

    const-string v9, "artist"

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move v4, v6

    move-object/from16 v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    goto :goto_0

    .line 94
    :cond_3
    const-string v0, "genre_name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v3, 0x0

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;

    iget-object v1, v11, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string/jumbo v7, "title"

    const-string v8, "artist"

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_4
    const-string v0, "composer"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v3, 0x0

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;

    iget-object v1, v11, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string/jumbo v7, "title"

    const-string v8, "artist"

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_5
    const-string v0, "bucket_display_name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v3, 0x0

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;

    iget-object v1, v11, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, "_display_name"

    const-string v8, "artist"

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
