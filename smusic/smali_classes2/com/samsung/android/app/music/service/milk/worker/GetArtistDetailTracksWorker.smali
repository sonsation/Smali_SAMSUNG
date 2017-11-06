.class public Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetArtistDetailTracksWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mArtistId:Ljava/lang/String;

.field private mPage:I

.field private mSort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "artistId"    # Ljava/lang/String;
    .param p5, "page"    # I
    .param p6, "sort"    # Ljava/lang/String;
    .param p7, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 26
    const/16 v4, 0x28a2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 22
    const-string v0, "1"

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->mSort:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->mArtistId:Ljava/lang/String;

    .line 29
    iput p5, p0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->mPage:I

    .line 30
    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->mSort:Ljava/lang/String;

    .line 31
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
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->mSort:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37
    const-string/jumbo v1, "sorting"

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->mSort:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->mArtistId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->getRequestId()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->mPage:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getArtistTracks(Ljava/lang/String;IILjava/util/Map;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 15
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;I)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 50
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 52
    packed-switch p3, :pswitch_data_0

    .line 57
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 58
    return-void

    .line 54
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onApiHandled : success"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 15
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetArtistDetailTracksWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;I)V

    return-void
.end method
