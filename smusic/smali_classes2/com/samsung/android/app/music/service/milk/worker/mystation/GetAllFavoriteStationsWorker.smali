.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetAllFavoriteStationsWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/mystation/FavoriteStationInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GetAllFavoriteStationsWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 32
    const/16 v4, 0xcb

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 33
    return-void
.end method

.method private addGenre(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/common/model/Genre;
    .locals 2
    .param p1, "genreID"    # Ljava/lang/String;
    .param p2, "genreName"    # Ljava/lang/String;
    .param p3, "isHidden"    # Z

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "genre":Lcom/samsung/android/app/music/common/model/Genre;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->doesGenreIdExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    const-string v1, "1"

    invoke-static {p1, p2, v1}, Lcom/samsung/android/app/music/common/model/Genre;->createGenre(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Genre;

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Genre;->setVisible(I)V

    .line 134
    if-eqz p3, :cond_0

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Genre;->setHiddenGenre(Z)V

    .line 137
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->insert(Ljava/lang/Object;)J

    .line 140
    :cond_1
    return-object v0
.end method

.method private addStation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 2
    .param p1, "genreID"    # Ljava/lang/String;
    .param p2, "genreName"    # Ljava/lang/String;
    .param p3, "newStation"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 144
    if-nez p3, :cond_0

    .line 145
    const-string v0, "GetAllFavoriteStationsWorker"

    const-string v1, "addStation : Station is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string v0, "01"

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/music/common/model/Station;->setStationType(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/common/model/Station;->setGenre(Ljava/lang/String;)V

    .line 153
    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/common/model/Station;->setGenreId(Ljava/lang/String;)V

    .line 156
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/music/common/model/Station;->setGenreVisible(I)V

    .line 158
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->insert(Ljava/lang/Object;)J

    goto :goto_0
.end method

.method private addStationsToMyStations(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Station;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getCountOfMyStations()I

    move-result v2

    .line 99
    .local v2, "numMystations":I
    rsub-int/lit8 v0, v2, 0x32

    .line 100
    .local v0, "availableSize":I
    const-string v4, "GetAllFavoriteStationsWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToMyStations : numMyStations - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", available - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "candidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/Station;

    .line 105
    .local v3, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-gtz v0, :cond_4

    .line 119
    .end local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 120
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->insertAfterQuery(Ljava/util/Collection;)I

    .line 123
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 124
    const-string v4, "GetAllFavoriteStationsWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToMyStations : Some stations are not added to \"My Stations\" candidate size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", original size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_3
    return-void

    .line 109
    .restart local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->isHiddenStation()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 110
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->saveStationInfoToDB(Lcom/samsung/android/app/music/common/model/Station;)V

    .line 113
    :cond_5
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->doesStationExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 114
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private notInDeleteMyStation(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Station;>;"
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.radio.fragment.deep_link_station_id"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "deepLinkStationID":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 67
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v2, "selection":Ljava/lang/StringBuffer;
    const-string v4, "mystation_station_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " not in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/Station;

    .line 71
    .local v3, "station":Lcom/samsung/android/app/music/common/model/Station;
    const-string v5, "GetAllFavoriteStationsWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notInDeleteMyStation : DeepLink("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") Station("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    if-eqz v1, :cond_0

    .line 73
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    goto :goto_0

    .line 79
    .end local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ") and mystation_type = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v4, "GetAllFavoriteStationsWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notInDeleteMyStation : Selection => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->deleteByWhereClause(Ljava/lang/String;)I

    .line 95
    .end local v1    # "index":I
    .end local v2    # "selection":Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 88
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 89
    const-string v4, "GetAllFavoriteStationsWorker"

    const-string v5, "notInDeleteMyStation : DeepLink Station is empty"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mystation_type = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->deleteByWhereClause(Ljava/lang/String;)I

    goto :goto_1

    .line 92
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mystation_type = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mystation_station_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->deleteByWhereClause(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private saveStationInfoToDB(Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 7
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 162
    const-string v1, "99999999"

    .line 163
    .local v1, "genreId":Ljava/lang/String;
    const-string v2, "Hidden Genre"

    .line 166
    .local v2, "genreName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 167
    const-string v4, "GetAllFavoriteStationsWorker"

    const-string/jumbo v5, "saveStationInfoToDB : Station is empty"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 173
    .local v0, "dbStation":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_1

    .line 174
    const-string v4, "GetAllFavoriteStationsWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveStationInfoToDB : Station is already existed ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->isHiddenStation()Z

    move-result v3

    .line 179
    .local v3, "isHidden":Z
    if-eqz v3, :cond_2

    .line 180
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->addGenre(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/common/model/Genre;

    .line 181
    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->addStation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V

    goto :goto_0

    .line 183
    :cond_2
    const-string v4, "GetAllFavoriteStationsWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveStationInfoToDB : Genre ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") GenreID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 185
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v2

    .line 206
    :cond_3
    :goto_1
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->addGenre(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/common/model/Genre;

    .line 207
    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->addStation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V

    goto/16 :goto_0

    .line 188
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 192
    const-string v1, "99999999"

    .line 193
    const-string v2, "Hidden Genre"

    .line 194
    const/4 v3, 0x1

    goto :goto_1

    .line 196
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getGenreId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    const-string v1, "99999999"

    .line 201
    const-string v2, "Hidden Genre"

    .line 202
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/FavoriteStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    const-string v0, "GetAllFavoriteStationsWorker"

    const-string v1, "doWorkInternal : Call API"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->mReqId:I

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->getAllFavoriteStations(ILjava/util/Map;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "GetAllFavoriteStationsWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 28
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/FavoriteStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/FavoriteStationInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/FavoriteStationInfo;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/mystation/FavoriteStationInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 50
    if-nez p3, :cond_0

    .line 51
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/mystation/FavoriteStationInfo;->getStationList()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Station;>;"
    if-eqz v0, :cond_1

    .line 53
    const-string v1, "01"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->notInDeleteMyStation(Ljava/util/List;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->addStationsToMyStations(Ljava/util/List;)V

    .line 62
    .end local v0    # "stations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Station;>;"
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v0    # "stations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Station;>;"
    :cond_1
    const-string v1, "GetAllFavoriteStationsWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : GET_ALL_FAVORITE_STATIONS stationData is null favorite stations from request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 28
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/FavoriteStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetAllFavoriteStationsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/FavoriteStationInfo;I)V

    return-void
.end method
