.class public Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;
.super Ljava/lang/Object;
.source "TransportInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAllowPathSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->mAllowPathSegments:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->mAllowPathSegments:Ljava/util/ArrayList;

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->mAllowPathSegments:Ljava/util/ArrayList;

    const-string/jumbo v1, "startClient"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->mAllowPathSegments:Ljava/util/ArrayList;

    const-string/jumbo v1, "signIn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->mAllowPathSegments:Ljava/util/ArrayList;

    const-string v1, "deviceRegister"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->mAllowPathSegments:Ljava/util/ArrayList;

    const-string/jumbo v1, "storeData"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private getLastPathSegment(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method protected checkDataConnection(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkMobileData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/net/ConnectException;

    invoke-direct {v0}, Ljava/net/ConnectException;-><init>()V

    throw v0

    .line 80
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->isUsingData(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Ljava/net/ConnectException;

    const-string v1, "Mobile data network error"

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 10
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 43
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v8

    .line 44
    .local v8, "request":Lokhttp3/Request;
    invoke-virtual {v8}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->getLastPathSegment(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, "lastPathSegment":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->mAllowPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->checkDataConnection(Landroid/content/Context;Z)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 47
    .local v6, "currentLocale":Ljava/util/Locale;
    invoke-virtual {v8}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "clientLangCode"

    .line 48
    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "appVersion"

    .line 49
    invoke-static {}, Lcom/samsung/android/app/music/common/util/AndroidUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "appType"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "clientRequestTime"

    .line 50
    invoke-static {}, Lcom/samsung/android/app/music/common/util/AES;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v8

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intercept request - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {p1, v8}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v9

    .line 53
    .local v9, "response":Lokhttp3/Response;
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intercept response - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    .line 55
    invoke-virtual {v9}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "serverErrLog"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v4, Lcom/samsung/android/app/music/common/model/ErrorLog;

    invoke-virtual {v9}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responseCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1, v5}, Lcom/samsung/android/app/music/common/model/ErrorLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v4, "log":Lcom/samsung/android/app/music/common/model/ErrorLog;
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/ServerErrLogWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/net/TransportInterceptor;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/ServerErrLogWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/common/model/ErrorLog;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/ServerErrLogWorker;->doWork()V

    .line 61
    .end local v4    # "log":Lcom/samsung/android/app/music/common/model/ErrorLog;
    :cond_0
    return-object v9

    .end local v6    # "currentLocale":Ljava/util/Locale;
    .end local v9    # "response":Lokhttp3/Response;
    :cond_1
    move v0, v3

    .line 45
    goto/16 :goto_0
.end method
