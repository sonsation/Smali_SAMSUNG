.class public Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "MusicCategoryDetailGenreChartsWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MusicCategoryDetailGenreChartsWorker"


# instance fields
.field private mGenreId:Ljava/lang/String;

.field private mPage:I

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "genreId"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "page"    # I
    .param p7, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 25
    const/16 v4, 0x2c26

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 27
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->mGenreId:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->mType:Ljava/lang/String;

    .line 29
    iput p6, p0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->mPage:I

    .line 30
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->mGenreId:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->getRequestId()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->mType:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->mPage:I

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getCategoryDetailGenreChartsInfo(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "MusicCategoryDetailGenreChartsWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 13
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;I)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 48
    packed-switch p3, :pswitch_data_0

    .line 53
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 54
    return-void

    .line 50
    :pswitch_0
    const-string v0, "MusicCategoryDetailGenreChartsWorker"

    const-string v1, "onApiHandled : success"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 13
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/musiccategory/MusicCategoryDetailGenreChartsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;I)V

    return-void
.end method
