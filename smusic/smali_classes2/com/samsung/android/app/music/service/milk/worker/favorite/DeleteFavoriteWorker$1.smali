.class Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;
.super Ljava/lang/Object;
.source "DeleteFavoriteWorker.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->getLocalObservable()Lrx/Observable;
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
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 7
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
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/samsung/android/app/music/common/model/ResponseModel;>;"
    const/4 v6, 0x0

    .line 136
    const-string v4, "DeleteFavoriteWorker"

    const-string v5, "[DeleteFavoriteWorker] doWork() : isDeviceUser"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 139
    .local v2, "now":J
    new-instance v1, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUtcToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v1, "favoriteInfo":Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/provider/dao/FavoriteDAO;->insertOrUpdate(Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;)Z

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "db":Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteTrackListDAO;

    move-result-object v0

    .line 153
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    invoke-static {v4, v0}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;Lcom/samsung/android/app/music/provider/dao/AbsFavoriteListDAO;)V

    .line 154
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    invoke-static {v4, v6}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->access$202(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;Z)Z

    .line 155
    new-instance v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->getRequestId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 158
    return-void

    .line 145
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteArtistListDAO;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/favorite/DeleteFavoriteWorker;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteMilkMagazineListDAO;

    move-result-object v0

    goto :goto_0
.end method
