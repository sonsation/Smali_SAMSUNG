.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/AddAllFavoriteStationsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "AddAllFavoriteStationsWorker.java"


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
.field public static final LOG_TAG:Ljava/lang/String; = "AddAllFavoriteStationsWorker"


# instance fields
.field private mStations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Station;",
            ">;",
            "Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p4, "stations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Station;>;"
    const/16 v4, 0xca

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 28
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddAllFavoriteStationsWorker;->mStations:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method private getStationIds()Ljava/lang/String;
    .locals 5

    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 50
    .local v0, "index":I
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddAllFavoriteStationsWorker;->mStations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/Station;

    .line 51
    .local v2, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-lez v0, :cond_0

    .line 52
    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    .end local v2    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 7
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
    const/4 v2, 0x0

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddAllFavoriteStationsWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v6

    .line 34
    .local v6, "userinfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddAllFavoriteStationsWorker;->isDeviceUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddAllFavoriteStationsWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddAllFavoriteStationsWorker;->mReqId:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddAllFavoriteStationsWorker;->getStationIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/UserInfo;->getIsAdult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddAllFavoriteStationsWorker;->getExplicitSetting()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->addFavStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    .line 38
    :cond_0
    return-object v2
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "AddAllFavoriteStationsWorker"

    return-object v0
.end method
