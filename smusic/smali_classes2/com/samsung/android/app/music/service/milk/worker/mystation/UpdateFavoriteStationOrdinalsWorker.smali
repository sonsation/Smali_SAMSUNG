.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationOrdinalsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "UpdateFavoriteStationOrdinalsWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mStationIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationOrdinalsWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationOrdinalsWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p4, "stationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 25
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationOrdinalsWorker;->mStationIds:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 5
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
    .line 30
    const/4 v0, 0x1

    .line 31
    .local v0, "index":I
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationOrdinalsWorker;->mStationIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    .local v2, "stationId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v4

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {v4, v2, v0}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->updateMyStationOrdinal(Ljava/lang/String;I)Z

    move v0, v1

    .line 33
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    .line 35
    .end local v2    # "stationId":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/mystation/UpdateFavoriteStationOrdinalsWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method
