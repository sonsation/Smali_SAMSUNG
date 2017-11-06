.class Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker$2;
.super Ljava/lang/Object;
.source "RemoveFavoriteStationsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;->removeHiddensStation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;

.field final synthetic val$stationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker$2;->val$stationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 108
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker$2;->val$stationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v3

    .line 109
    .local v3, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->isHiddenStation()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "genreId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker$2;->val$stationId:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->deleteStation(Ljava/lang/String;Z)V

    .line 113
    const-string v4, "RemoveFavoriteStationsWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeHiddensStation : Hidden Station("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemoveFavoriteStationsWorker$2;->val$stationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 115
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getAllGenres()Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    .local v0, "allGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/Genre;

    .line 118
    .local v1, "genre":Lcom/samsung/android/app/music/common/model/Genre;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Genre;->isHiddenGenre()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStationCount(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_0

    .line 120
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->deleteById(Ljava/lang/String;)I

    .line 121
    const-string v4, "RemoveFavoriteStationsWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeHiddensStation : Hidden Genre("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v0    # "allGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Genre;>;"
    .end local v1    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .end local v2    # "genreId":Ljava/lang/String;
    :cond_1
    return-void
.end method
