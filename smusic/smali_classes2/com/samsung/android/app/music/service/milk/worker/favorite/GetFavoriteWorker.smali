.class public Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetFavoriteWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetFavoriteWorker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 43
    const/16 v4, 0x2be

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 44
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->type:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private getFavoritePlaylistId()J
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private insertData(Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p1, "db"    # Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;->insertWithTx(Ljava/util/Collection;)I

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->getHeartMaxOrder(Landroid/content/Context;)I

    move-result v0

    .line 147
    .local v0, "baseOrder":I
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    add-int/lit8 v3, v0, 0x1

    .line 148
    invoke-static {p2, p3, v3}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->toContentValuesArray(Ljava/util/ArrayList;Ljava/lang/String;I)[Landroid/content/ContentValues;

    move-result-object v3

    .line 147
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 149
    return-void
.end method

.method private insertDataTrack(Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "db"    # Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    .local p3, "trackLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;->insertWithTx(Ljava/util/Collection;)I

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->getFavoritePlaylistId()J

    move-result-wide v2

    .line 158
    .local v2, "favoriteId":J
    const-string v1, "GetFavoriteWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onApiHandled] favoriteId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->mContext:Landroid/content/Context;

    const-string v4, "local"

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getPlaylistMaxOrder(Landroid/content/Context;JLjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 163
    .local v0, "baseOrder":I
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->getSyncFavoriteUri(J)Landroid/net/Uri;

    move-result-object v4

    .line 165
    invoke-static {p3, v2, v3, v0}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->toContentValuesArrayTrack(Ljava/util/ArrayList;JI)[Landroid/content/ContentValues;

    move-result-object v5

    .line 164
    invoke-static {v1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 167
    .end local v0    # "baseOrder":I
    :cond_1
    return-void
.end method

.method private resetDatabase(Ljava/lang/String;Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "db"    # Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->getFavoriteIds(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->deleteFavoriteTrack(Landroid/content/Context;Ljava/util/List;)V

    .line 136
    :goto_0
    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p2}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;->resetTable()V

    .line 139
    :cond_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->deleteHeart(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->mReqId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getFavorites(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "GetFavoriteWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 34
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkfavorite/Favorite;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milkfavorite/Favorite;I)V
    .locals 22
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
    .param p5, "errorCode"    # I

    .prologue
    .line 61
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->getLogTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[onApiHandled] responseType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-nez p3, :cond_4

    .line 64
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "favorite_type = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 65
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    .line 67
    .local v12, "prefavorite":Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getLatestUpdateDate()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateMillis(Ljava/lang/String;)J

    move-result-wide v6

    .line 68
    .local v6, "currentTime":J
    const-wide/16 v10, 0x0

    .line 70
    .local v10, "preTime":J
    if-eqz v12, :cond_0

    .line 71
    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getLatestUpdateDate()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateMillis(Ljava/lang/String;)J

    move-result-wide v10

    .line 74
    :cond_0
    cmp-long v17, v6, v10

    if-lez v17, :cond_4

    .line 75
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->insertOrUpdate(Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;)Z

    .line 77
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getFavoriteList()Ljava/util/ArrayList;

    move-result-object v9

    .line 79
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v4, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v16, "trackLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->deleteData(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 86
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .line 87
    .local v8, "favorite":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    invoke-static {v8}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->fromFavorite(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v13

    .line 88
    .local v13, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v8    # "favorite":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .end local v13    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .line 93
    .restart local v8    # "favorite":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v18

    .line 94
    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    .line 95
    .local v14, "rowId":J
    invoke-virtual {v8, v14, v15}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->setThunmbnailId(J)V

    .line 96
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    .end local v8    # "favorite":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .end local v14    # "rowId":J
    :cond_2
    const/4 v5, 0x0

    .line 101
    .local v5, "db":Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 102
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;

    move-result-object v5

    .line 111
    :cond_3
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->resetDatabase(Ljava/lang/String;Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V

    .line 113
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 114
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v4, v1}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->insertData(Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 121
    .end local v4    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    .end local v5    # "db":Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    .end local v6    # "currentTime":J
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    .end local v10    # "preTime":J
    .end local v12    # "prefavorite":Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
    .end local v16    # "trackLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_4
    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 122
    return-void

    .line 103
    .restart local v4    # "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    .restart local v5    # "db":Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    .restart local v6    # "currentTime":J
    .restart local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    .restart local v10    # "preTime":J
    .restart local v12    # "prefavorite":Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
    .restart local v16    # "trackLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "2"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 104
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;

    move-result-object v5

    goto :goto_2

    .line 105
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "3"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 106
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;

    move-result-object v5

    goto :goto_2

    .line 107
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->getType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "4"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 108
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;

    move-result-object v5

    goto :goto_2

    .line 116
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v4, v1}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->insertDataTrack(Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 34
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/favorite/GetFavoriteWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkfavorite/Favorite;I)V

    return-void
.end method
