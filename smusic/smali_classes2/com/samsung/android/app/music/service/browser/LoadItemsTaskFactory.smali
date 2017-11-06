.class public Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;
.source "LoadItemsTaskFactory.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;)V
    .locals 0
    .param p1, "loadDataFactory"    # Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;)V

    .line 28
    return-void
.end method


# virtual methods
.method public runBrowsableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object v1

    .line 45
    .local v1, "id":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->obtainBrowsableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    move-result-object v0

    .line 46
    .local v0, "data":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v2, "Playlists"

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    new-instance v2, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;

    invoke-direct {v2}, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;-><init>()V

    new-array v3, v5, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 53
    :cond_1
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;-><init>()V

    new-array v3, v5, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public runBrowsableRootResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->obtainBrowserRootLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    move-result-object v0

    .line 34
    .local v0, "data":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public runPlayableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object v9

    .line 61
    .local v9, "id":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;
    const-string/jumbo v1, "req_track_one"

    iget-object v2, v9, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 64
    .local v5, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const-string v1, "_id=?"

    iput-object v1, v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 65
    new-array v1, v10, [Ljava/lang/String;

    iget-object v2, v9, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    aput-object v2, v1, v3

    iput-object v1, v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v6, 0x0

    const-string/jumbo v7, "title"

    const-string v8, "artist"

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, "data":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;

    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    new-array v2, v10, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    .end local v5    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :goto_0
    return-void

    .line 70
    .end local v0    # "data":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->obtainPlayableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    move-result-object v0

    .line 71
    .restart local v0    # "data":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;->sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0

    .line 75
    :cond_1
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableLoadItemsTask;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableLoadItemsTask;-><init>()V

    new-array v2, v10, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableLoadItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
