.class Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;
.source "PlaylistBrowsableLoadItemsTask.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;-><init>()V

    return-void
.end method

.method private getDefaultPlaylists(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x4

    new-array v6, v0, [J

    fill-array-data v6, :array_0

    .line 27
    .local v6, "defaultPlayLists":[J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    array-length v11, v6

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v11, :cond_0

    aget-wide v8, v6, v10

    .line 29
    .local v8, "listId":J
    const-string v1, "name"

    .line 30
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v8, v9}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;->getSimpleBrowsableMediaItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 34
    .end local v8    # "listId":J
    :cond_0
    return-object v7

    .line 24
    nop

    :array_0
    .array-data 8
        -0xe
        -0xc
        -0xd
        -0xb
    .end array-data
.end method

.method private getSimpleBrowsableMediaItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 4
    .param p1, "parentMediaId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "subTitle"    # Ljava/lang/String;
    .param p5, "folderType"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;->fromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "mediaId":Ljava/lang/String;
    invoke-static {v1, p3, p4, p5}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescriptionWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/MediaDescription;

    move-result-object v0

    .line 42
    .local v0, "des":Landroid/media/MediaDescription;
    new-instance v2, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    return-object v2
.end method


# virtual methods
.method protected getPreDefinedBrowsableList(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;->getDefaultPlaylists(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
