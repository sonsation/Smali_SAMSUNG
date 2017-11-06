.class public Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "CheckFavoriteWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckFavoriteWorker"


# instance fields
.field private contentId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "contentId"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 19
    const/16 v4, 0x2c0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 20
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;->type:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;->contentId:Ljava/lang/String;

    .line 22
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
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;->mReqId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;->type:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;->contentId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->checkFavorite(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "CheckFavoriteWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 12
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;I)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;
    .param p5, "errorCode"    # I

    .prologue
    .line 36
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;->getLogTag()Ljava/lang/String;

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

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 12
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/CheckFavoriteWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;I)V

    return-void
.end method
