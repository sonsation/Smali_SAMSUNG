.class public Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetAlbumTrackInfoWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GetAlbumTrackInfoWorker"


# instance fields
.field private mAlbumId:Ljava/lang/String;

.field private mCurrentPage:I

.field private mPageNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "albumId"    # Ljava/lang/String;
    .param p5, "page"    # I
    .param p6, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    const/4 v6, 0x1

    .line 28
    const/16 v4, 0x283e

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 15
    iput v6, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mPageNumber:I

    .line 16
    iput v6, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mCurrentPage:I

    .line 29
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mAlbumId:Ljava/lang/String;

    .line 30
    iput p5, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mPageNumber:I

    .line 32
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mPageNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 33
    iput v6, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mCurrentPage:I

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mPageNumber:I

    iput v0, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mCurrentPage:I

    goto :goto_0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->getRequestId()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mCurrentPage:I

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getAlbumTrackInfo(Ljava/lang/String;IILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 12
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;
    .param p5, "errorCode"    # I

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 48
    const/4 v0, 0x1

    .line 50
    .local v0, "invokeCallback":Z
    packed-switch p3, :pswitch_data_0

    .line 65
    :cond_0
    :goto_0
    const-string v1, "GetAlbumTrackInfoWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : invoke callback - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz v0, :cond_1

    .line 68
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v1}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 70
    :cond_1
    return-void

    .line 52
    :pswitch_0
    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mCurrentPage:I

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mPageNumber:I

    if-eq v1, v2, :cond_0

    .line 53
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;->hasMoreList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->mCurrentPage:I

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->doWork()V

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 12
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumTrackInfoWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;I)V

    return-void
.end method
