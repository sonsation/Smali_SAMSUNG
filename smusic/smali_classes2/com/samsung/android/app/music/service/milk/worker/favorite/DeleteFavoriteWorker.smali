.class public Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "DeleteFavoriteWorker.java"


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
.field private static final TAG:Ljava/lang/String; = "DeleteFavoriteWorker"


# instance fields
.field private favoriteIds:Ljava/lang/String;

.field private ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;",
            ">;"
        }
    .end annotation
.end field

.field private needUpdate:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/util/List;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p5, "favoriteIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "trackLists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;>;"
    const/16 v4, 0x2bf

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->type:Ljava/lang/String;

    .line 55
    const-string v0, "1"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->ids:Ljava/util/List;

    .line 60
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->needUpdate:Z

    .line 62
    const-string v0, "1"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->mTrackLists:Ljava/util/List;

    .line 64
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;

    .line 65
    .local v6, "info":Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->getSource_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    .line 70
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->ids:Ljava/util/List;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->getSource_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    .end local v6    # "info":Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->ids:Ljava/util/List;

    goto :goto_0

    .line 68
    .restart local v6    # "info":Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->getSource_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    goto :goto_2

    .line 73
    .end local v6    # "info":Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->mTrackLists:Ljava/util/List;

    .line 74
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 75
    .local v7, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    goto :goto_3

    .line 78
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    goto :goto_3

    .line 82
    .end local v7    # "s":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;
    .param p1, "x1"    # Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->deleteDatabase(Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->needUpdate:Z

    return p1
.end method

.method private deleteDatabase(Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V
    .locals 5
    .param p1, "db"    # Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;

    .prologue
    .line 163
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->ids:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;->delete(Ljava/util/List;)I

    .line 165
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->ids:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->deleteData(Ljava/util/List;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->type:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->ids:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->deleteHeart(Landroid/content/Context;Ljava/util/List;)V

    .line 177
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->mTrackLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;

    .line 172
    .local v1, "list":Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;->getSource_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    .end local v1    # "list":Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->deleteFavoriteTrack(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 6
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
    .line 86
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 88
    .local v0, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->getLocalObservable()Lrx/Observable;

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->mReqId:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->favoriteIds:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->deleteFavorites(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
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
    .line 133
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    .line 102
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 104
    if-nez p3, :cond_1

    .line 105
    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->needUpdate:Z

    if-eqz v2, :cond_1

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "db":Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->type:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.radio.REQUEST_FAVORITE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "FavoriteAction"

    const-string v3, "delete"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v2, "FavoriteType"

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string/jumbo v2, "track_list"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->ids:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 116
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;

    move-result-object v0

    .line 125
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->deleteDatabase(Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V

    .line 129
    .end local v0    # "db":Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v2}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 130
    return-void

    .line 117
    .restart local v0    # "db":Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->type:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->type:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->type:Ljava/lang/String;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 37
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
