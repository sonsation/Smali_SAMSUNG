.class public Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetAlbumInfoWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/AlbumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlbumId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "albumId"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 18
    const/16 v4, 0x283d

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 19
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;->mAlbumId:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;->getRequestId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getAlbumInfo(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/AlbumInfo;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/AlbumInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 30
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 34
    packed-switch p3, :pswitch_data_0

    .line 46
    :cond_0
    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v2}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 47
    return-void

    .line 36
    :pswitch_0
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/AlbumInfo;->getAlbumInfo()Lcom/samsung/android/app/music/common/model/Album;

    move-result-object v0

    .line 37
    .local v0, "album":Lcom/samsung/android/app/music/common/model/Album;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;->isDeviceUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/provider/dao/FavoriteAlbumListDAO;->isFavorite(Ljava/lang/String;)Z

    move-result v1

    .line 40
    .local v1, "favorite":Z
    if-eqz v1, :cond_0

    .line 41
    const-string v2, "Y"

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/Album;->setFavoriteYn(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 13
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/AlbumInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/AlbumInfo;I)V

    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 13
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/AlbumInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetAlbumInfoWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/AlbumInfo;I)V

    return-void
.end method
