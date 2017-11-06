.class public Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;
.super Ljava/lang/Object;
.source "FavoriteSyncManager.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoriteSyncManager"

.field private static sSyncManager:Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;


# instance fields
.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishAdded:I

.field private newAccountUser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->newAccountUser:Z

    .line 37
    iput v0, p0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->mFinishAdded:I

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method

.method private addFavorite(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    .local p3, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;>;"
    .local p4, "artists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    .local p5, "milkPicks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;Z)V

    .line 157
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->setOnApiInterceptCallback(Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;)V

    .line 158
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->doWork()V

    .line 160
    .end local v0    # "worker":Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;
    :cond_0
    return-void
.end method

.method private getAllFavorite()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "1"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->doWork()V

    .line 144
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "2"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->doWork()V

    .line 145
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "3"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->doWork()V

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "4"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->doWork()V

    .line 148
    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->sSyncManager:Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->sSyncManager:Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->sSyncManager:Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->sSyncManager:Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private resetDatabase(Ljava/lang/String;Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "db"    # Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->getFavoriteIds(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->deleteFavoriteTrack(Landroid/content/Context;Ljava/util/List;)V

    .line 135
    :goto_0
    if-eqz p2, :cond_0

    .line 136
    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;->resetTable()V

    .line 139
    .end local v0    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 132
    .restart local v0    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->deleteHeart(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;I)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Ljava/lang/Object;
    .param p5, "errorCode"    # I

    .prologue
    .line 113
    packed-switch p2, :pswitch_data_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->mFinishAdded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->mFinishAdded:I

    .line 117
    const-string v0, "FavoriteSyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onApiHandled] mFInishAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->mFinishAdded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->mFinishAdded:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->resetFavorite()V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getAllFavorite()V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
    .end packed-switch
.end method

.method public resetFavorite()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "FavoriteSyncManager"

    const-string v1, "[resetFavorite]"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "1"

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->resetDatabase(Ljava/lang/String;Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V

    .line 97
    const-string v0, "2"

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->resetDatabase(Ljava/lang/String;Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V

    .line 98
    const-string v0, "3"

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->resetDatabase(Ljava/lang/String;Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V

    .line 99
    const-string v0, "4"

    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->resetDatabase(Ljava/lang/String;Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V

    .line 101
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->deleteTable()I

    .line 102
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->deleteTable()I

    .line 103
    return-void
.end method

.method public startSync(Z)V
    .locals 20
    .param p1, "isNewAccount"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->newAccountUser:Z

    .line 59
    const-string v2, "FavoriteSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[startSync] isNewAccount : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->newAccountUser:Z

    if-eqz v2, :cond_4

    .line 61
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->mFinishAdded:I

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 65
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->getAllFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 66
    .local v4, "trackRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 67
    const-string v3, "1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->addFavorite(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 71
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;->getAllFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    .line 72
    .local v8, "albumRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 73
    const-string v6, "2"

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->addFavorite(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 77
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;->getAllFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v13

    .line 78
    .local v13, "artistRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 79
    const-string v10, "3"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->addFavorite(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 83
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;->getAllFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v19

    .line 84
    .local v19, "milkMagazineRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 85
    const-string v15, "4"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v14, p0

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->addFavorite(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 91
    .end local v4    # "trackRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    .end local v8    # "albumRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;>;"
    .end local v13    # "artistRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    .end local v19    # "milkMagazineRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    :cond_3
    :goto_0
    return-void

    .line 89
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getAllFavorite()V

    goto :goto_0
.end method
