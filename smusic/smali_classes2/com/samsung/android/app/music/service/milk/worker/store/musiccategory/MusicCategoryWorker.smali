.class public Lcom/samsung/android/app/music/service/milk/worker/store/musiccategory/MusicCategoryWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "MusicCategoryWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicCategoryWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 25
    const/16 v4, 0x2c25

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/store/musiccategory/MusicCategoryWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/store/musiccategory/MusicCategoryWorker;->mReqId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getMusicCategoryList(ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "MusicCategoryWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 20
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/store/musiccategory/MusicCategoryWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;I)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 42
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 44
    const-string v3, "MusicCategoryWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : responseType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    if-nez p3, :cond_0

    .line 46
    move-object v1, p4

    .line 48
    .local v1, "listInfo":Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;->getGenreList()Ljava/util/ArrayList;

    move-result-object v0

    .line 49
    .local v0, "genreInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v2

    .line 51
    .local v2, "yearInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;>;"
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 52
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->insertWithTx(Ljava/util/Collection;)I

    .line 57
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 58
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;->insertWithTx(Ljava/util/Collection;)I

    .line 64
    .end local v0    # "genreInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    .end local v1    # "listInfo":Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;
    .end local v2    # "yearInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;>;"
    :cond_0
    :goto_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p4, v3}, Lcom/samsung/android/app/music/service/milk/worker/store/musiccategory/MusicCategoryWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 65
    return-void

    .line 54
    .restart local v0    # "genreInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;>;"
    .restart local v1    # "listInfo":Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;
    .restart local v2    # "yearInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;>;"
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryGenreDAO;->insertOrUpdate(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;->deleteTable()I

    .line 61
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/provider/dao/MusicCategoryPeriodDAO;->insertWithTx(Ljava/util/Collection;)I

    goto :goto_1
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 20
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/store/musiccategory/MusicCategoryWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;I)V

    return-void
.end method
