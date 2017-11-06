.class public Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "CreateSmartStationWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CreateSmartStationWorker"


# instance fields
.field private mRequest:Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 55
    const/16 v4, 0xe1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->getAdultSetting()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->getExplicitSetting()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    .prologue
    .line 49
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->mReqId:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    .prologue
    .line 49
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->mReqId:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->mRequest:Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;)Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->mRequest:Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->makeRequest()Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;

    move-result-object v0

    return-object v0
.end method

.method private createSmartStationSeedsPath()Ljava/io/File;
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "seeds"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 170
    .local v0, "seedDirs":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    .end local v0    # "seedDirs":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 173
    .restart local v0    # "seedDirs":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSpotlightGenre()Lcom/samsung/android/app/music/common/model/Genre;
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v0

    const-string v1, "genre_type=\'2\'"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Genre;

    return-object v0
.end method

.method private makeRequest()Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0xa

    .line 148
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getModSearchList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 149
    .local v1, "modSearchTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    move-result-object v5

    const-string v6, "mod"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getSmartStationSeedList(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 151
    .local v2, "modTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    move-result-object v5

    const-string v6, "radio"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getSmartStationSeedList(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 152
    .local v3, "radioTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    move-result-object v5

    const-string v6, "local"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getSmartStationSeedList(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    .local v0, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    new-instance v5, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;

    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 156
    .end local v1    # "modSearchTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 157
    .end local v2    # "modTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 158
    .end local v3    # "radioTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .end local v0    # "localList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    :goto_3
    invoke-direct {v5, v1, v2, v3, v0}, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v5

    .restart local v0    # "localList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    .restart local v1    # "modSearchTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    .restart local v2    # "modTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    .restart local v3    # "radioTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    :cond_0
    move-object v1, v4

    .line 155
    goto :goto_0

    .end local v1    # "modSearchTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    :cond_1
    move-object v2, v4

    .line 156
    goto :goto_1

    .end local v2    # "modTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    :cond_2
    move-object v3, v4

    .line 157
    goto :goto_2

    .end local v3    # "radioTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    :cond_3
    move-object v0, v4

    .line 158
    goto :goto_3
.end method

.method private static saveSeedFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$3;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$3;->start()V

    .line 210
    return-void
.end method

.method private saveSmartStationSeeds(Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;Ljava/util/List;)V
    .locals 4
    .param p1, "request"    # Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "response":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->createSmartStationSeedsPath()Ljava/io/File;

    move-result-object v0

    .line 163
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->saveSeedFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "CreateSmartStationWorker"

    const-string v1, "doWorkInternal. start to work."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$2;-><init>(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)V

    .line 68
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "CreateSmartStationWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 49
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 104
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "seedList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Seed;>;"
    if-nez p3, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->getSpotlightGenre()Lcom/samsung/android/app/music/common/model/Genre;

    move-result-object v0

    .line 111
    .local v0, "genre":Lcom/samsung/android/app/music/common/model/Genre;
    iget-object v2, p4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;->station:Lcom/samsung/android/app/music/common/model/Station;

    .line 112
    .local v2, "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "station_type=\'03\' AND station_genre_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->deleteByWhereClause(Ljava/lang/String;)I

    .line 116
    const-string v3, "CreateSmartStationWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : Station Info => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/16 v3, 0x270f

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Station;->setStationOrdinal(I)V

    .line 118
    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Station;->setGenreType(Ljava/lang/String;)V

    .line 119
    const-string v3, "03"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Station;->setStationType(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Station;->setGenreId(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Genre;->getGenreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Station;->setGenre(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->insert(Lcom/samsung/android/app/music/common/model/Station;Z)J

    .line 124
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/samsung/android/app/music/common/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->setTrack(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 125
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.radio.date_of_latest_create_smart_station"

    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 126
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getSeedList()Ljava/util/ArrayList;

    move-result-object v1

    .line 127
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 135
    .end local v0    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .end local v2    # "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    const-string v3, "CreateSmartStationWorker"

    const-string v4, "onApiHandled. not user release version. save seed."

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->mRequest:Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->saveSmartStationSeeds(Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;Ljava/util/List;)V

    .line 139
    :cond_0
    return-void

    .line 129
    .restart local v0    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .restart local v2    # "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    new-array v3, v7, [Ljava/lang/Object;

    const/16 v4, -0x3e7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, p3, v5, v3}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    .end local v0    # "genre":Lcom/samsung/android/app/music/common/model/Genre;
    .end local v2    # "smartStation":Lcom/samsung/android/app/music/common/model/Station;
    :cond_2
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, p3, v5, v3}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 49
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/mystation/MyStationInfo;I)V

    return-void
.end method
