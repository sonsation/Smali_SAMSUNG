.class public Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;
.super Ljava/lang/Object;
.source "RadioTransport.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static httpUrl:Ljava/lang/String;

.field private static volatile proxy:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

.field private static secureService:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    const-class v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->mContext:Landroid/content/Context;

    .line 323
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->secureService:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    if-nez v0, :cond_1

    .line 312
    const-class v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    monitor-enter v1

    .line 313
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    .line 316
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    return-object v0

    .line 316
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addFavStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "stationIds"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stationList"
        .end annotation
    .end param
    .param p4, "adultYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "adultYn"
        .end annotation
    .end param
    .param p5, "explicit"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "explicit"
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
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$13;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$13;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public addSmartStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "stationId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stationId"
        .end annotation
    .end param
    .param p4, "adultYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "adultYn"
        .end annotation
    .end param
    .param p5, "explicit"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "explicit"
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
            "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 853
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 706
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$27;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$27;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/TrackPlayList;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public advertisement(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "stationType"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stationType"
        .end annotation
    .end param
    .param p4, "stationId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stationId"
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
            "Lcom/samsung/android/app/music/common/model/TrackListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$30;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$30;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public checkSubscriptionUser(ILjava/util/Map;)Lrx/Observable;
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
            "Lcom/samsung/android/app/music/common/model/purchase/CheckSubscriptionUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 839
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$35;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$35;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public createPersonalStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 14
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "adultYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "adultYn"
        .end annotation
    .end param
    .param p4, "explicit"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "explicit"
        .end annotation
    .end param
    .param p5, "providerType"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "providerType"
        .end annotation
    .end param
    .param p6, "seedType"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "seedType"
        .end annotation
    .end param
    .param p7, "artistId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "artistId"
        .end annotation
    .end param
    .param p8, "artistName"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "artistName"
        .end annotation
    .end param
    .param p9, "trackId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackId"
        .end annotation
    .end param
    .param p10, "trackTitle"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackTitle"
        .end annotation
    .end param
    .param p11, "deeplinkYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "deeplinkYn"
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v13

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$16;

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$16;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public createSmartStation(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "reqCreateSmartStation"    # Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p4, "adultYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "adultYn"
        .end annotation
    .end param
    .param p5, "explicit"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "explicit"
        .end annotation
    .end param
    .param p6, "testYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "testYn"
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
            "Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$33;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$33;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deleteReport(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;)Lrx/Observable;
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
    .param p3, "body"    # Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;
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
            "Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$9;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deviceRegister(ILjava/lang/String;Ljava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "uniqueMid"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uniqueMId"
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
            "Lcom/samsung/android/app/music/common/model/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$2;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAllFavoriteStations(ILjava/util/Map;I)Lrx/Observable;
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
    .param p3, "limit"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/FavoriteStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$11;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;I)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getAllPersonalStations(ILjava/util/Map;I)Lrx/Observable;
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
    .param p3, "limit"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/MyPersonalStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$17;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;I)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getBixbyRuleStations(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "tpoBixbyRuleID"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "rule"
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
            "Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$22;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$22;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getGenreSmartStation(ILjava/util/Map;)Lrx/Observable;
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
            "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 827
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$34;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$34;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->httpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonalStationInfo(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "stationId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stationId"
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
            "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$23;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$23;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getRadioHistory(ILjava/util/Map;Ljava/lang/String;I)Lrx/Observable;
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
    .param p4, "limit"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
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
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$19;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$19;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendStationInfo(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "tpoCode"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
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
            "Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$21;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$21;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getStationInfo(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "stationId"
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
            "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$20;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;Ljava/lang/String;ILjava/util/Map;)V

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
    .line 330
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->create(Landroid/content/Context;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 303
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init url - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
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

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->httpUrl:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

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

    .line 307
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->createSecure(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->secureService:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    .line 308
    return-void
.end method

.method public interruption(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "stationType"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stationType"
        .end annotation
    .end param
    .param p4, "stationId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stationId"
        .end annotation
    .end param
    .param p5, "bitrate"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bitrate"
        .end annotation
    .end param
    .param p6, "codec"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "codec"
        .end annotation
    .end param
    .param p7, "aiType"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "aiType"
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
    .line 745
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v9

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$29;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$29;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public loadSettings(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "settings"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "settings"
        .end annotation
    .end param
    .param p4, "channelId"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/UserSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$5;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$5;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public noticeList(ILjava/util/Map;)Lrx/Observable;
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
            "Lcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$7;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public prefetch(ILjava/util/Map;)Lrx/Observable;
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
            "Lcom/samsung/android/app/music/common/model/PrefetchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$10;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public removeFavStation(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "stationIds"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stationList"
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
    .line 524
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$14;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public removePersonalStation(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "stationIds"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stationList"
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
    .line 496
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$12;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public report(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;)Lrx/Observable;
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
    .param p3, "body"    # Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;
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
            "Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$8;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public saveSettings(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "genreList"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "genreList"
        .end annotation
    .end param
    .param p4, "explicit"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "explicit"
        .end annotation
    .end param
    .param p5, "myLocation"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "myLocation"
        .end annotation
    .end param
    .param p6, "pushNotification"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "pushNotification"
        .end annotation
    .end param
    .param p7, "autoRotateYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "autoRotateYn"
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
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v9

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$6;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$6;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public seedSearch(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "adultYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "adultYn"
        .end annotation
    .end param
    .param p4, "explicit"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "explicit"
        .end annotation
    .end param
    .param p5, "searchfilter"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "searchfilter"
        .end annotation
    .end param
    .param p6, "keyword"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$25;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$25;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public seedSearchAutoComplete(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
    .param p3, "adultYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "adultYn"
        .end annotation
    .end param
    .param p4, "explicit"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "explicit"
        .end annotation
    .end param
    .param p5, "searchfilter"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "searchfilter"
        .end annotation
    .end param
    .param p6, "keyword"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$24;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$24;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public serverErrLog(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/ErrorLogRequest;)Lrx/Observable;
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
    .param p3, "log"    # Lcom/samsung/android/app/music/common/model/ErrorLogRequest;
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
            "Lcom/samsung/android/app/music/common/model/ErrorLogRequest;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$32;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$32;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/ErrorLogRequest;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public signIn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;
    .locals 8
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "accessToken"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "accessToken"
        .end annotation
    .end param
    .param p3, "accountUrl"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "accountUrl"
        .end annotation
    .end param
    .param p4, "uniqueMid"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uniqueMId"
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    .local p5, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$4;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$4;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public songV3(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 16
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p3, "stationType"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stationType"
        .end annotation
    .end param
    .param p4, "stationId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stationId"
        .end annotation
    .end param
    .param p5, "trackId"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "trackId"
        .end annotation
    .end param
    .param p6, "bitrate"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bitrate"
        .end annotation
    .end param
    .param p7, "codec"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "codec"
        .end annotation
    .end param
    .param p8, "sequence"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "sequence"
        .end annotation
    .end param
    .param p9, "isFirstPlay"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "isFirstPlay"
        .end annotation
    .end param
    .param p10, "lastEvents"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "lastEvents"
        .end annotation
    .end param
    .param p11, "aiType"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "aiType"
        .end annotation
    .end param
    .param p12, "fineTune"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "fineTune"
        .end annotation
    .end param
    .param p13, "fineTuneBoost"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "fineTuneBoost"
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
            "Ljava/lang/String;",
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
    .line 781
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$SignInFunc;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$SignInFunc;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v15

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$31;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$31;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-virtual {v15, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public storeData(ILjava/util/Map;)Lrx/Observable;
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
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$1;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public syncDeviceMyStation(ILjava/util/Map;)Lrx/Observable;
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
    .line 583
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$18;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public updateFavStation(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;)Lrx/Observable;
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
    .param p3, "updateStationList"    # Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;
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
            "Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public updatePersonalStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/mystation/UpdateStationRequest;)Lrx/Observable;
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
    .param p3, "adultYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "adultYn"
        .end annotation
    .end param
    .param p4, "explicit"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "explicit"
        .end annotation
    .end param
    .param p5, "updateStationList"    # Lcom/samsung/android/app/music/common/model/mystation/UpdateStationRequest;
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
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/common/model/mystation/UpdateStationRequest;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$26;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$26;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/mystation/UpdateStationRequest;)V

    invoke-virtual {v7, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public updateUserInfo(ILjava/lang/String;Ljava/util/Map;Lcom/samsung/android/app/music/common/model/PushInfoArray;)Lrx/Observable;
    .locals 7
    .param p1, "id"    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2, "adultCertifyYn"    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "adultCertifyYn"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .param p4, "pushInfo"    # Lcom/samsung/android/app/music/common/model/PushInfoArray;
        .annotation runtime Lretrofit2/http/Body;
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
            "Lcom/samsung/android/app/music/common/model/PushInfoArray;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    .local p3, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$3;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/lang/String;Ljava/util/Map;Lcom/samsung/android/app/music/common/model/PushInfoArray;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public uploadErrorLog(ILjava/util/Map;Lokhttp3/MultipartBody$Part;Lokhttp3/RequestBody;)Lrx/Observable;
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
    .param p3, "part"    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p4, "body"    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "logFile"
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
            "Lokhttp3/MultipartBody$Part;",
            "Lokhttp3/RequestBody;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init()Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$28;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$28;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Lokhttp3/MultipartBody$Part;Lokhttp3/RequestBody;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
