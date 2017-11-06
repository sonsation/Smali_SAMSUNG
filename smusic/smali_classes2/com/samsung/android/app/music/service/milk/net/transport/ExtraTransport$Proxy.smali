.class public Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;
.super Ljava/lang/Object;
.source "ExtraTransport.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field private static httpUrl:Ljava/lang/String;

.field private static volatile proxy:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

.field private static secureService:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->secureService:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    if-nez v0, :cond_1

    .line 110
    const-class v1, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->proxy:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
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
    .line 185
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->init()Lrx/Observable;

    move-result-object v13

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;

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

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 202
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$5;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$5;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->httpUrl:Ljava/lang/String;

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
    .line 135
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->init()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$1;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;ILjava/util/Map;Ljava/lang/String;)V

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
    .line 150
    .local p6, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->init()Lrx/Observable;

    move-result-object v9

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$2;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

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
    .line 128
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->create(Landroid/content/Context;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->httpUrl:Ljava/lang/String;

    .line 106
    :goto_0
    return-void

    .line 102
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

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->httpUrl:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

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

    .line 104
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->createSecure(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->secureService:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    goto :goto_0
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
    .line 218
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$6;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$6;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 165
    .local p2, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->init()Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;-><init>(Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
