.class Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;
.super Ljava/lang/Object;
.source "AddFavoriteWorker.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->getLocalObservable()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 249
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/samsung/android/app/music/common/model/ResponseModel;>;"
    const-string v6, "AddFavoriteWorker"

    const-string v7, "getLocalObservable call() : isDeviceUser"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 255
    .local v26, "now":J
    new-instance v20, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUtcToString(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v20, "favoriteInfo":Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->insertOrUpdate(Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;)Z

    .line 258
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v24, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;>;"
    const/16 v17, 0x0

    .line 261
    .local v17, "db":Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;

    move-result-object v17

    .line 263
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v30, "trackLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;

    .line 265
    .local v29, "t":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    new-instance v5, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getTrackId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getTrackTitle()Ljava/lang/String;

    move-result-object v7

    .line 266
    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getArtistName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 267
    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getAlbumId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;->getAlbumTitle()Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v5 .. v15}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 268
    .local v5, "l":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-static {v5}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->fromFavorite(Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v28

    .line 271
    .local v28, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    .end local v5    # "l":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .end local v28    # "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .end local v29    # "t":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$200(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)J

    move-result-wide v18

    .line 275
    .local v18, "favoriteId":J
    const-string v6, "AddFavoriteWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onApiHandled] favoriteId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-wide/16 v6, -0x1

    cmp-long v6, v18, v6

    if-eqz v6, :cond_1

    .line 277
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    .line 278
    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$300(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "local"

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1, v7}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getPlaylistMaxOrder(Landroid/content/Context;JLjava/lang/String;)I

    move-result v6

    add-int/lit8 v16, v6, 0x1

    .line 280
    .local v16, "baseOrder":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$400(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Landroid/content/Context;

    move-result-object v6

    .line 281
    invoke-static/range {v18 .. v19}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->getAddFavoriteUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 282
    move-object/from16 v0, v30

    move-wide/from16 v1, v18

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->toContentValuesArrayTrack(Ljava/util/ArrayList;JI)[Landroid/content/ContentValues;

    move-result-object v8

    .line 280
    invoke-static {v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 320
    .end local v16    # "baseOrder":I
    .end local v18    # "favoriteId":J
    .end local v30    # "trackLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_1
    if-eqz v17, :cond_2

    .line 321
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;->getCount()I

    move-result v6

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_6

    .line 322
    const-string v6, "AddFavoriteWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLocalObservable db count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v6, Lcom/samsung/android/app/music/milk/AddFavoriteException;

    invoke-direct {v6}, Lcom/samsung/android/app/music/milk/AddFavoriteException;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 342
    :cond_2
    :goto_1
    return-void

    .line 285
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 286
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;

    move-result-object v17

    .line 288
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$500(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;

    .line 289
    .local v4, "a":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v6

    .line 290
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getAblumId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v8}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    .line 291
    .local v12, "rowId":J
    new-instance v5, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getAblumId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getAlbumTitle()Ljava/lang/String;

    move-result-object v7

    .line 292
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getArtistName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 293
    .restart local v5    # "l":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 295
    .end local v4    # "a":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;
    .end local v5    # "l":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .end local v12    # "rowId":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 296
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;

    move-result-object v17

    .line 298
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$600(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;

    .line 299
    .local v4, "a":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v6

    .line 300
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getArtistId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v8}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    .line 302
    .restart local v12    # "rowId":J
    new-instance v5, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getArtistId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getArtistName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 303
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 304
    .restart local v5    # "l":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 306
    .end local v4    # "a":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;
    .end local v5    # "l":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .end local v12    # "rowId":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 307
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;

    move-result-object v17

    .line 309
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$700(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;

    .line 310
    .local v25, "p":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;

    move-result-object v6

    .line 311
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getMilkPickId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v8}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/app/music/provider/dao/MilkEtcThumbnailDAO;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    .line 313
    .restart local v12    # "rowId":J
    new-instance v5, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .line 314
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getMilkPickId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getMilkPickTitle()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 315
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;->getImgUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 316
    .restart local v5    # "l":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 325
    .end local v5    # "l":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .end local v12    # "rowId":J
    .end local v25    # "p":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;
    :cond_6
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Landroid/content/ContentValues;

    move-object/from16 v31, v0

    .line 326
    .local v31, "values":[Landroid/content/ContentValues;
    const/16 v22, 0x0

    .line 328
    .local v22, "index":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$800(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->getHeartMaxOrder(Landroid/content/Context;)I

    move-result v6

    add-int/lit8 v16, v6, 0x1

    .line 329
    .restart local v16    # "baseOrder":I
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    .line 330
    .local v21, "favoriteList":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "index":I
    .local v23, "index":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-static {v7}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->toContentValues(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v7

    aput-object v7, v31, v22

    move/from16 v22, v23

    .line 331
    .end local v23    # "index":I
    .restart local v22    # "index":I
    goto :goto_5

    .line 333
    .end local v21    # "favoriteList":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-static {v6, v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$900(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;Ljava/util/ArrayList;[Landroid/content/ContentValues;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->access$1002(Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;Z)Z

    .line 337
    new-instance v6, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/service/milk/worker/favorite/AddFavoriteWorker;->getRequestId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 339
    invoke-virtual/range {p1 .. p1}, Lrx/Subscriber;->onCompleted()V

    goto/16 :goto_1
.end method
