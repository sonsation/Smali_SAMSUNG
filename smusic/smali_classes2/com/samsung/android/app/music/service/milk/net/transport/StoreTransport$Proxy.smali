.class public Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;
.super Ljava/lang/Object;
.source "StoreTransport.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field private static httpUrl:Ljava/lang/String;

.field private static volatile proxy:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

.field private static secureService:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->mContext:Landroid/content/Context;

    .line 479
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->secureService:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    if-nez v0, :cond_1

    .line 468
    const-class v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    monitor-enter v1

    .line 469
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    .line 472
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    return-object v0

    .line 472
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addFavorites(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "dataList"    # Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1072
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$42;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$42;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public addPlaylistTracks(Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;I)Lrx/Observable;
    .locals 8
    .param p1, "playlistId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "playlistId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "playlistRequest"    # Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p5, "type"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;",
            "I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 906
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$31;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$31;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;I)V

    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public adjustment(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/TrackPlayList;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "trackPlayList"    # Lcom/samsung/android/app/music/common/model/TrackPlayList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/music/common/model/TrackPlayList;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1211
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$52;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$52;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/TrackPlayList;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public checkDRMLicense(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 8
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "trackList"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackList"
        .end annotation
    .end param
    .param p4, "orderId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orderId"
        .end annotation
    .end param
    .param p5, "type"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1442
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$SignInFunc;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$SignInFunc;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$63;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$63;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public checkFavorite(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 7
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "type"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p4, "contentId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "contentId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1113
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$45;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$45;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public checkPayPromotion(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "channelId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/PayPromotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1355
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$61;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$61;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public completeDrmTrackDownload(ILjava/util/Map;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadCompleteArray;)Lrx/Observable;
    .locals 7
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "orderId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orderId"
        .end annotation
    .end param
    .param p4, "drm"    # Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadCompleteArray;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadCompleteArray;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1470
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$65;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$65;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadCompleteArray;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public createPlaylist(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "title"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "playlistTitle"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 852
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$27;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$27;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deleteDownloadableDeivces(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;)Lrx/Observable;
    .locals 7
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "uniqueId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uniqueId"
        .end annotation
    .end param
    .param p3, "accessToken"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "access_token"
        .end annotation
    .end param
    .param p4, "deviceList"    # Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$49;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$49;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deleteFavorites(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 7
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "type"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p4, "favoriteIds"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "favoriteIds"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1099
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$44;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$44;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deletePlaylist(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "playlistIds"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "playlistIds"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$30;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$30;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deletePlaylistTracks(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 7
    .param p1, "playlistId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "playlistId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "trackSeqIds"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackSeqIds"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 960
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$34;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$34;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public drmLicenseComplete(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 7
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "trackId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackId"
        .end annotation
    .end param
    .param p4, "orderId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orderId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1457
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$64;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$64;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumImageUrls(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 7
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "albumIds"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "albumIds"
        .end annotation
    .end param
    .param p4, "type"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1483
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$66;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$66;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumInfo(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "albumId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "albumId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$5;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumTrackInfo(Ljava/lang/String;IILjava/util/Map;)Lrx/Observable;
    .locals 7
    .param p1, "albumId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "albumId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    .local p4, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$6;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;IILjava/util/Map;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getArtistAlbums(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "artistId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "artistId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailAlbumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$19;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$19;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getArtistInfo(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "artistId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "artistId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$17;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getArtistMusicVideos(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "artistId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "artistId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$20;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getArtistRelatedArtists(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "artistId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "artistId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailRelatedArtistInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 773
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$21;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$21;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getArtistTracks(Ljava/lang/String;IILjava/util/Map;)Lrx/Observable;
    .locals 7
    .param p1, "artistId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "artistId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    .local p4, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$18;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$18;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;IILjava/util/Map;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryDetailGenreAlbumsInfo(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;I)Lrx/Observable;
    .locals 8
    .param p1, "genreId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "genreId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "type"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p5, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1274
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$56;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$56;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryDetailGenreArtistsInfo(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;I)Lrx/Observable;
    .locals 8
    .param p1, "genreId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "genreId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "type"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p5, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1288
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$57;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$57;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryDetailGenreChartsInfo(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;I)Lrx/Observable;
    .locals 8
    .param p1, "genreId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "genreId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "type"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p5, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1260
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$55;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$55;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryDetailPeriodAlbumsInfo(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Lrx/Observable;
    .locals 9
    .param p1, "periodId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "periodId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "type"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p5, "cntryGroup"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "cntryGroup"
        .end annotation
    .end param
    .param p6, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1316
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$59;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$59;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryDetailPeriodArtistsInfo(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Lrx/Observable;
    .locals 9
    .param p1, "periodId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "periodId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "type"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p5, "cntryGroup"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "cntryGroup"
        .end annotation
    .end param
    .param p6, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1331
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$60;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$60;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryDetailPeriodChartsInfo(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 8
    .param p1, "periodId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "periodId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "type"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p5, "year"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "year"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1302
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$58;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$58;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadableDeivces(ILjava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "uniqueId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uniqueId"
        .end annotation
    .end param
    .param p3, "accessToken"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "access_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$48;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$48;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getDrmTrackDownloadUrl(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 9
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "bitrate"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bitrate"
        .end annotation
    .end param
    .param p3, "codec"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "codec"
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p5, "orderId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orderId"
        .end annotation
    .end param
    .param p6, "trackList"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackList"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/DownloadTackList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1058
    .local p4, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$41;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$41;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getEventList(IILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1186
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$50;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$50;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;IILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "type"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1085
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$43;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$43;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->httpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics(ILjava/lang/String;Ljava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "trackIds"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackIds"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/LyricsList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1428
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$62;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$62;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getMilkRadios(ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$22;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getMusicCategoryList(ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/MusicCategoryListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1246
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$54;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$54;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getMusicVideoPlay(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;
    .locals 7
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "mvIdList"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "mvIdList"
        .end annotation
    .end param
    .param p3, "trackIdList"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackIdList"
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    .local p4, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$SignInFunc;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$SignInFunc;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$46;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$46;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1129
    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnDeviceRecommendSearchKeyword(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "keyword"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "keyword"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommend/OnDeviceRecommendKeywordsResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$26;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$26;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOrderPaymentDataTrack(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 9
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "channelId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "trackList"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackList"
        .end annotation
    .end param
    .param p5, "promotionId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "promotionId"
        .end annotation
    .end param
    .param p6, "payYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "payYn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$39;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$39;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentDataSubscription(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 9
    .param p1, "productId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "productId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "channelid"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .param p5, "pricingTypeCode"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "pricingTypeCode"
        .end annotation
    .end param
    .param p6, "promotionId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "promotionId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$13;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$13;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPickDetail(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "pickId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "pickId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/PickDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 983
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPickList(IILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/PickList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 972
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$35;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$35;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;IILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistTracks(Ljava/lang/String;ILjava/util/Map;I)Lrx/Observable;
    .locals 7
    .param p1, "playlistId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "playlistId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "type"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 920
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$32;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$32;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;I)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylists(ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 865
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$28;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupList(ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkevent/EventPopupList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1198
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$51;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$51;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPurchasedDrmTracks(ILjava/util/Map;Ljava/lang/String;I)Lrx/Observable;
    .locals 7
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "channelid"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .param p4, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$10;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$10;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPurchasedSubscriptions(ILjava/util/Map;Ljava/lang/String;I)Lrx/Observable;
    .locals 7
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "channelid"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .param p4, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SubscriptionList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$9;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$9;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPurchasedTracks(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "channelid"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrackList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$7;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getRadioPlayLimitInfo(ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$11;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAutoCompletes(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "keyword"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "keyword"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$24;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$24;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getSearchPresets(ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$23;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getSearchResults(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 10
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "bixby"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bixby"
        .end annotation
    .end param
    .param p3, "searchType"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "searchType"
        .end annotation
    .end param
    .param p4, "order"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .param p5, "page"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p7, "keyword"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "keyword"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    .local p6, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v9

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$25;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$25;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getStoreDisplayDetailPage(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;
    .locals 9
    .param p1, "displayId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "displayId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3, "page"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4, "displayGroup"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "displayGroup"
        .end annotation
    .end param
    .param p5, "displayType"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "displayType"
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    .local p6, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$3;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getStoreMainPage(ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$1;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getStoreTopNewUpdate(ILjava/lang/String;Ljava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "displayGroup"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "displayGroup"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$2;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getTrackDetail(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "trackId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "trackId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$4;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getTrackDownloadUrl(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 8
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "bitrate"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bitrate"
        .end annotation
    .end param
    .param p3, "codec"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "codec"
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p5, "trackList"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackList"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/DownloadTackList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    .local p4, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$40;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$40;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getTrackPlayDevicePermission(ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$53;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$53;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getVoucher(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "channelid"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/VoucherList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 673
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$14;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public init()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->create(Landroid/content/Context;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 457
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->httpUrl:Ljava/lang/String;

    .line 462
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->createSecure(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->secureService:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    .line 464
    return-void

    .line 460
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->httpUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public modSong(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 10
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "bitrate"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bitrate"
        .end annotation
    .end param
    .param p4, "codec"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "codec"
        .end annotation
    .end param
    .param p5, "preTrackId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "preTrackId"
        .end annotation
    .end param
    .param p6, "curTrackId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "curTrackId"
        .end annotation
    .end param
    .param p7, "nextTrackId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "nextTrackId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/TrackListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1145
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$SignInFunc;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$SignInFunc;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v9

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$47;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$47;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v9, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public redeemVoucher(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 13
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "channelId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .param p4, "voucherId"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "voucherId"
        .end annotation
    .end param
    .param p5, "voucherCode"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "voucherCode"
        .end annotation
    .end param
    .param p6, "productId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "productId"
        .end annotation
    .end param
    .param p7, "pricingTypeCode"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "pricingTypeCode"
        .end annotation
    .end param
    .param p8, "cuTypeCode"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "cuTypeCode"
        .end annotation
    .end param
    .param p9, "mcc"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "mcc"
        .end annotation
    .end param
    .param p10, "mnc"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "mnc"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v12

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public registerVoucher(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 7
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "channelId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .param p4, "voucherCode"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "voucherCode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$15;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$15;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public reorderPlaylistTracks(Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/playlist/ReorderPlaylistTrackRequest;)Lrx/Observable;
    .locals 7
    .param p1, "playlistId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "playlistId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "reorderPlaylistTrackRequest"    # Lcom/samsung/android/app/music/common/model/playlist/ReorderPlaylistTrackRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/music/common/model/playlist/ReorderPlaylistTrackRequest;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$33;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$33;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/playlist/ReorderPlaylistTrackRequest;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public subscriptionDeduction(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 8
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "channelId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .param p3, "orderId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orderId"
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p5, "trackList"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackList"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SubscriptionDeductionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1012
    .local p4, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$38;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$38;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public updatePlaylists(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "udpPlaylist"    # Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 878
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$29;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$29;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public updatePurchasedTrack(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 9
    .param p1, "trackId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "TrackId"
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "orderId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orderId"
        .end annotation
    .end param
    .param p5, "localTrackExt"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "localTrackExt"
        .end annotation
    .end param
    .param p6, "localTrackExt320k"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "localTrackExt320k"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$8;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$8;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public updateSubscription(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 9
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "channelid"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelId"
        .end annotation
    .end param
    .param p4, "orderId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orderId"
        .end annotation
    .end param
    .param p5, "productId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "productId"
        .end annotation
    .end param
    .param p6, "statusType"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "statusType"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$12;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$12;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public verifyTracks(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lrx/Observable;
    .locals 8
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "bitrate"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bitrate"
        .end annotation
    .end param
    .param p3, "codec"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "codec"
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p5, "trackList"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "trackList"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 997
    .local p4, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$37;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$37;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
