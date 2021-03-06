.class public Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetArtistDetailRelatedArtistsWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GetArtistDetailRelatedArtistsWorker"


# instance fields
.field private mArtistId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "artistId"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 20
    const/16 v4, 0x28a4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 22
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;->mArtistId:Ljava/lang/String;

    .line 23
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
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;->mArtistId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;->getRequestId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getArtistRelatedArtists(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "GetArtistDetailRelatedArtistsWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 12
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;I)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 38
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 40
    packed-switch p3, :pswitch_data_0

    .line 45
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 46
    return-void

    .line 42
    :pswitch_0
    const-string v0, "GetArtistDetailRelatedArtistsWorker"

    const-string v1, "onApiHandled : success"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
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

    check-cast v4, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailRelatedArtistsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;I)V

    return-void
.end method
