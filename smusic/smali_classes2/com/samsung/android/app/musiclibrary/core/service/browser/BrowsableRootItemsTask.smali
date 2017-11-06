.class public final Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;
.source "BrowsableRootItemsTask.java"


# static fields
.field private static final TEST_MODE:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;-><init>()V

    return-void
.end method

.method private getBtRootResult()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    const-string v1, "Tracks"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;->getRootItem(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v1, "Artists"

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;->getRootItem(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v1, "Albums"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;->getRootItem(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v1, "Playlists"

    const/4 v2, 0x5

    .line 52
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;->getRootItem(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-object v0
.end method

.method private getRootItem(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {p1, p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescriptionWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/MediaDescription;

    move-result-object v0

    .line 43
    .local v0, "des":Landroid/media/MediaDescription;
    new-instance v1, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    return-object v1
.end method

.method private getRootResult()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    const-string v1, "Tracks"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;->getRootItem(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v1, "Artists"

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;->getRootItem(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "Albums"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;->getRootItem(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "Playlists"

    const/4 v2, 0x5

    .line 68
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;->getRootItem(Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v1

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-object v0
.end method


# virtual methods
.method protected getListInBackground(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;
    .locals 3
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
    .line 30
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->parentId:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object v1

    .line 31
    .local v1, "id":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    .line 32
    .local v0, "category":Ljava/lang/String;
    const-string/jumbo v2, "root"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;->getRootResult()Ljava/util/List;

    move-result-object v2

    .line 37
    :goto_0
    return-object v2

    .line 34
    :cond_0
    const-string v2, "bt_root"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableRootItemsTask;->getBtRootResult()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
