.class public Lcom/dawin/http/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xbb8

    sput v0, Lcom/dawin/http/c;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[Dawin Library for Android/Linux] "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " SDK Version : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.0.6 | Date : 20170816"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dawin/http/c;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "[Dawin Library for Android/Linux]"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Lorg/apache/http/HttpResponse;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mCurrentRequest"    # I

    .prologue
    const/4 v6, 0x0

    .local v6, "response":Lorg/apache/http/HttpResponse;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "%%%%%%%%%%%%%%%%%%%%%%%%% User agent!! "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/dawin/http/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    move-object v5, p0

    .local v5, "requestUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "REQUEST URL with saved UID : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .local v2, "httpClient":Lorg/apache/http/impl/client/AbstractHttpClient;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v7, "UTF-8"

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    sget-object v8, Lcom/dawin/http/c;->a:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    sget v7, Lcom/dawin/http/c;->b:I

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v7, Lcom/dawin/http/c;->b:I

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v7, 0x6a4

    if-ne p3, v7, :cond_1

    :try_start_1
    const-string v7, "Referer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://sdk.dawin.tv/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/dawin/a/b;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    invoke-static {p2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {p2}, Lcom/dawin/util/CommonUtils;->e(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;

    move-result-object v0

    .local v0, "cookieStore":Lorg/apache/http/client/CookieStore;
    if-eqz v0, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Request setCookieStore : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    :cond_2
    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v7

    invoke-static {p2, v7}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Lorg/apache/http/client/CookieStore;)Z

    invoke-static {p2}, Lcom/dawin/util/CommonUtils;->f(Landroid/content/Context;)V

    .end local v0    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v2    # "httpClient":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local v3    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    return-object v6

    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/AbstractHttpClient;
    .restart local v3    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "httpClient":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local v3    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(I)V
    .locals 0
    .param p0, "mTime"    # I

    .prologue
    sput p0, Lcom/dawin/http/c;->b:I

    return-void
.end method
