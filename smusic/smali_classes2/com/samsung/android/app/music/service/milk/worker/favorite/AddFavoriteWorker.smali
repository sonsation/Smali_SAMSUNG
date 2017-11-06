.class public Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "AddFavoriteWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AddFavoriteWorker"


# instance fields
.field private albumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;",
            ">;"
        }
    .end annotation
.end field

.field private artistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;",
            ">;"
        }
    .end annotation
.end field

.field private needDBUpdate:Z

.field private pickList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;",
            ">;"
        }
    .end annotation
.end field

.field private trackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p9, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .param p10, "needDBUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;",
            ">;",
            "Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p5, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    .local p6, "albumList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;>;"
    .local p7, "artistList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    .local p8, "pickList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    const/16 v5, 0x2bd

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->trackList:Ljava/util/ArrayList;

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->albumList:Ljava/util/ArrayList;

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->pickList:Ljava/util/ArrayList;

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->needDBUpdate:Z

    .line 73
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    .line 74
    const-string v1, "AddFavoriteWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AddFavoriteWorker] AddFavoriteWorker() type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->artistList:Ljava/util/ArrayList;

    .line 76
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->needDBUpdate:Z

    .line 77
    const-string v1, "1"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->trackList:Ljava/util/ArrayList;

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v1, "2"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->albumList:Ljava/util/ArrayList;

    goto :goto_0

    .line 81
    :cond_2
    const-string v1, "3"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->artistList:Ljava/util/ArrayList;

    goto :goto_0

    .line 83
    :cond_3
    const-string v1, "4"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->pickList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->trackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->needDBUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->getFavoritePlaylistId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->albumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->artistList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->pickList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;Ljava/util/ArrayList;[Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;
    .param p1, "x1"    # Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # [Landroid/content/ContentValues;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->addDatabase(Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;Ljava/util/ArrayList;[Landroid/content/ContentValues;)V

    return-void
.end method

.method private addDatabase(Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;Ljava/util/ArrayList;[Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "db"    # Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    .param p3, "values"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;",
            ">;[",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 348
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;->insertWithTx(Ljava/util/Collection;)I

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 353
    :cond_0
    return-void
.end method

.method private getFavoritePlaylistId()J
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v5

    .line 92
    .local v5, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v6

    if-nez v6, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->getLocalObservable()Lrx/Observable;

    move-result-object v6

    .line 117
    :goto_0
    return-object v6

    .line 95
    :cond_0
    new-instance v4, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;

    invoke-direct {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;-><init>()V

    .line 96
    .local v4, "request":Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    const-string v6, "AddFavoriteWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AddFavoriteWorker] doWork() : !isDeviceUser : AddFavoriteTrackRequest track - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->trackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v3, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->trackList:Ljava/util/ArrayList;

    invoke-direct {v3, v6, v7}, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    .local v3, "reqTrack":Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;
    invoke-virtual {v4, v3}, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->addFavoriteTrackRequest(Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;)V

    .line 117
    .end local v3    # "reqTrack":Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mReqId:I

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->addFavorites(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;)Lrx/Observable;

    move-result-object v6

    goto :goto_0

    .line 101
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    const-string v6, "AddFavoriteWorker"

    const-string v7, "[AddFavoriteWorker] doWork() : !isDeviceUser : AddFavoriteAlbumRequest"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteAlbumRequest;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->albumList:Ljava/util/ArrayList;

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteAlbumRequest;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 104
    .local v0, "reqAlbum":Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteAlbumRequest;
    invoke-virtual {v4, v0}, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->addFavoriteAlbumRequest(Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteAlbumRequest;)V

    goto :goto_1

    .line 105
    .end local v0    # "reqAlbum":Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteAlbumRequest;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 106
    const-string v6, "AddFavoriteWorker"

    const-string v7, "[AddFavoriteWorker] doWork() : !isDeviceUser : AddFavoriteArtistRequest"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v1, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->artistList:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v7}, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    .local v1, "reqArtist":Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;
    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->addFavoriteArtistRequest(Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;)V

    goto :goto_1

    .line 109
    .end local v1    # "reqArtist":Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    const-string v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    const-string v6, "AddFavoriteWorker"

    const-string v7, "[AddFavoriteWorker] doWork() : !isDeviceUser : AddFavoriteMilkPickRequest"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v2, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->pickList:Ljava/util/ArrayList;

    invoke-direct {v2, v6, v7}, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 114
    .local v2, "reqMilkPick":Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;
    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->addFavoriteMilkMagazineRequest(Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;)V

    goto :goto_1
.end method

.method protected getLocalObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "AddFavoriteWorker"

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 36
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    .line 129
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 130
    if-nez p3, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->needDBUpdate:Z

    if-eqz v6, :cond_2

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 133
    .local v30, "now":J
    invoke-static/range {v30 .. v31}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUtcToString(J)Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, "timeNow":Ljava/lang/String;
    const/16 v21, 0x0

    .line 135
    .local v21, "db":Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    const/16 v34, 0x0

    .line 136
    .local v34, "values":[Landroid/content/ContentValues;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v17, "addedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    const/16 v24, 0x0

    .line 139
    .local v24, "index":I
    const-string v6, "1"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v4, "addTrackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->trackList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Landroid/content/ContentValues;

    move-object/from16 v34, v0

    .line 142
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v33, "trackLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->trackList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;

    .line 145
    .local v32, "track":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getTrackId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v5, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .line 148
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getTrackId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getTrackTitle()Ljava/lang/String;

    move-result-object v7

    .line 149
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getArtistName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    .line 150
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getAlbumId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getAlbumTitle()Ljava/lang/String;

    move-result-object v15

    .line 151
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getArtists()Ljava/util/ArrayList;

    move-result-object v16

    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 152
    .local v5, "added":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {v5}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->fromFavorite(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v29

    .line 155
    .local v29, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v5    # "added":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .end local v29    # "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .end local v32    # "track":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;

    move-result-object v21

    .line 160
    const-string v6, "AddFavoriteWorker"

    const-string v7, "[onApiHandled] Send ACTION_REQUEST_FAVORITE"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v26, Landroid/content/Intent;

    const-string v6, "com.samsung.radio.REQUEST_FAVORITE"

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v26, "intent":Landroid/content/Intent;
    const-string v6, "FavoriteAction"

    const-string v7, "add"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v6, "FavoriteType"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v6, "result"

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string/jumbo v6, "track_list"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 169
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->getFavoritePlaylistId()J

    move-result-wide v22

    .line 176
    .local v22, "favoriteId":J
    const-string v6, "AddFavoriteWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onApiHandled] favoriteId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-wide/16 v6, -0x1

    cmp-long v6, v22, v6

    if-eqz v6, :cond_1

    .line 179
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    const-string v7, "local"

    .line 180
    move-wide/from16 v0, v22

    invoke-static {v6, v0, v1, v7}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getPlaylistMaxOrder(Landroid/content/Context;JLjava/lang/String;)I

    move-result v6

    add-int/lit8 v20, v6, 0x1

    .line 182
    .local v20, "baseOrder":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    .line 183
    invoke-static/range {v22 .. v23}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->getAddFavoriteUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 184
    move-object/from16 v0, v33

    move-wide/from16 v1, v22

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->toContentValuesArrayTrack(Ljava/util/ArrayList;JI)[Landroid/content/ContentValues;

    move-result-object v8

    .line 182
    invoke-static {v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 242
    .end local v4    # "addTrackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "baseOrder":I
    .end local v22    # "favoriteId":J
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v33    # "trackLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->addDatabase(Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;Ljava/util/ArrayList;[Landroid/content/ContentValues;)V

    .line 245
    .end local v11    # "timeNow":Ljava/lang/String;
    .end local v17    # "addedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    .end local v21    # "db":Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    .end local v24    # "index":I
    .end local v30    # "now":J
    .end local v34    # "values":[Landroid/content/ContentValues;
    :cond_2
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 246
    return-void

    .line 187
    .restart local v11    # "timeNow":Ljava/lang/String;
    .restart local v17    # "addedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    .restart local v21    # "db":Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    .restart local v24    # "index":I
    .restart local v30    # "now":J
    .restart local v34    # "values":[Landroid/content/ContentValues;
    :cond_3
    const-string v6, "2"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->albumList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Landroid/content/ContentValues;

    move-object/from16 v34, v0

    .line 190
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->albumList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;

    .line 191
    .local v18, "album":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v6

    .line 192
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getAblumId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    .line 194
    .local v12, "rowId":J
    new-instance v5, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .line 195
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getAblumId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getAlbumTitle()Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getArtistName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 198
    .restart local v5    # "added":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->getHeartMaxOrder(Landroid/content/Context;)I

    move-result v6

    add-int/lit8 v20, v6, 0x1

    .line 201
    .restart local v20    # "baseOrder":I
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v12, v13, v1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->toContentValues(JI)Landroid/content/ContentValues;

    move-result-object v28

    .line 202
    .local v28, "newValue":Landroid/content/ContentValues;
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "index":I
    .local v25, "index":I
    aput-object v28, v34, v24

    move/from16 v24, v25

    .line 203
    .end local v25    # "index":I
    .restart local v24    # "index":I
    goto :goto_2

    .line 204
    .end local v5    # "added":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .end local v12    # "rowId":J
    .end local v18    # "album":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;
    .end local v20    # "baseOrder":I
    .end local v28    # "newValue":Landroid/content/ContentValues;
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;

    move-result-object v21

    goto/16 :goto_1

    .line 205
    :cond_5
    const-string v6, "3"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 206
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Landroid/content/ContentValues;

    move-object/from16 v34, v0

    .line 208
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;

    .line 209
    .local v19, "artist":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v6

    .line 210
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getArtistId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    .line 212
    .restart local v12    # "rowId":J
    new-instance v5, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .line 213
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getArtistId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getArtistName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 214
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 215
    .restart local v5    # "added":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->getHeartMaxOrder(Landroid/content/Context;)I

    move-result v6

    add-int/lit8 v20, v6, 0x1

    .line 218
    .restart local v20    # "baseOrder":I
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v12, v13, v1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->toContentValues(JI)Landroid/content/ContentValues;

    move-result-object v28

    .line 219
    .restart local v28    # "newValue":Landroid/content/ContentValues;
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "index":I
    .restart local v25    # "index":I
    aput-object v28, v34, v24

    move/from16 v24, v25

    .line 220
    .end local v25    # "index":I
    .restart local v24    # "index":I
    goto :goto_3

    .line 222
    .end local v5    # "added":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .end local v12    # "rowId":J
    .end local v19    # "artist":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;
    .end local v20    # "baseOrder":I
    .end local v28    # "newValue":Landroid/content/ContentValues;
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;

    move-result-object v21

    goto/16 :goto_1

    .line 223
    :cond_7
    const-string v6, "4"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->pickList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Landroid/content/ContentValues;

    move-object/from16 v34, v0

    .line 226
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->pickList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;

    .line 227
    .local v27, "magazine":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v6

    .line 228
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getMilkPickId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->type:Ljava/lang/String;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    .line 230
    .restart local v12    # "rowId":J
    new-instance v5, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getMilkPickId()Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getMilkPickTitle()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 233
    .restart local v5    # "added":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->getHeartMaxOrder(Landroid/content/Context;)I

    move-result v6

    add-int/lit8 v20, v6, 0x1

    .line 236
    .restart local v20    # "baseOrder":I
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v12, v13, v1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->toContentValues(JI)Landroid/content/ContentValues;

    move-result-object v28

    .line 237
    .restart local v28    # "newValue":Landroid/content/ContentValues;
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "index":I
    .restart local v25    # "index":I
    aput-object v28, v34, v24

    move/from16 v24, v25

    .line 238
    .end local v25    # "index":I
    .restart local v24    # "index":I
    goto :goto_4

    .line 239
    .end local v5    # "added":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .end local v12    # "rowId":J
    .end local v20    # "baseOrder":I
    .end local v27    # "magazine":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;
    .end local v28    # "newValue":Landroid/content/ContentValues;
    :cond_8
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;

    move-result-object v21

    goto/16 :goto_1
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 52
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
