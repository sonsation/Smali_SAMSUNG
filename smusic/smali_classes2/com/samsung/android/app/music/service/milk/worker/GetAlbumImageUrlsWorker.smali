.class public Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetAlbumImageUrlsWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetAlbumImageUrlsWorker"


# instance fields
.field private mAlbumIds:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .param p5, "albumIds"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;

    .prologue
    .line 22
    const/16 v4, 0x5dd

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->mContext:Landroid/content/Context;

    .line 25
    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->mType:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->mAlbumIds:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->mReqId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->mAlbumIds:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->mType:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getAlbumImageUrls(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "GetAlbumImageUrlsWorker"

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/AlbumImageUrlsList;I)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;
    .param p5, "errorCode"    # I

    .prologue
    .line 42
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onApiHandled] responseType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 12
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/AlbumImageUrlsList;I)V

    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 12
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumImageUrlsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/AlbumImageUrlsList;I)V

    return-void
.end method
