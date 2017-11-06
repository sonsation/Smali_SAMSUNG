.class public Lcom/samsung/android/sdk/ppmt/network/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/network/NetworkManager$GzipJsonUtf8VolleyRequest;,
        Lcom/samsung/android/sdk/ppmt/network/NetworkManager$JsonUtf8VolleyRequest;,
        Lcom/samsung/android/sdk/ppmt/network/NetworkManager$StringUtf8VolleyRequest;,
        Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->requestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method public static downloadResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileDest"    # Ljava/lang/String;
    .param p4, "timeoutSec"    # I

    .prologue
    const/4 v10, 0x0

    .line 204
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-gez p4, :cond_1

    .line 205
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    const-string v2, "download resource fail. invalid params"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/16 v2, 0x3f0

    invoke-direct {v1, v10, v2}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZI)V

    .line 222
    :goto_0
    return-object v1

    .line 209
    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resource download starts. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v4

    .line 212
    .local v4, "future":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<Ljava/io/File;>;"
    new-instance v0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 213
    .local v0, "request":Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;
    invoke-virtual {v0, v10}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 214
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    int-to-long v2, p4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    long-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v10, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 215
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v7

    .line 216
    .local v7, "requestQueue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v7, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 218
    int-to-long v2, p4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resource download success"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v6

    .line 222
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->handleVolleyException(Ljava/lang/Exception;)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    sget-object v0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->requestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 200
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->requestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method private static handleVolleyException(Ljava/lang/Exception;)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    .locals 7
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    const/16 v5, 0x44c

    const/4 v6, 0x0

    .line 278
    instance-of v2, p0, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_0

    .line 279
    sget-object v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "request fail. interruption occurs"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/16 v3, 0x3f6

    invoke-direct {v2, v6, v3}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZI)V

    .line 313
    :goto_0
    return-object v2

    .line 281
    :cond_0
    instance-of v2, p0, Ljava/util/concurrent/TimeoutException;

    instance-of v3, p0, Lcom/android/volley/TimeoutError;

    or-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 282
    sget-object v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "request fail. timeout"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/16 v3, 0x3eb

    invoke-direct {v2, v6, v3}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZI)V

    goto :goto_0

    .line 284
    :cond_1
    instance-of v2, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v2, :cond_9

    .line 285
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/volley/AuthFailureError;

    if-eqz v2, :cond_2

    .line 286
    sget-object v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "request fail. auth fail error"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/16 v3, 0x3f3

    invoke-direct {v2, v6, v3}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZI)V

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/volley/NoConnectionError;

    if-eqz v2, :cond_3

    .line 289
    sget-object v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "request fail. no network connection"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/16 v3, 0x3ea

    invoke-direct {v2, v6, v3}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZI)V

    goto :goto_0

    .line 291
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/volley/NetworkError;

    if-eqz v2, :cond_4

    .line 292
    sget-object v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "request fail. network error"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/16 v3, 0x3f2

    invoke-direct {v2, v6, v3}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZI)V

    goto :goto_0

    .line 294
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/volley/ParseError;

    if-eqz v2, :cond_5

    .line 295
    sget-object v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "request fail. invalid server response"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/16 v3, 0x3f7

    invoke-direct {v2, v6, v3}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZI)V

    goto :goto_0

    .line 297
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/volley/ServerError;

    if-eqz v2, :cond_7

    .line 298
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/android/volley/ServerError;

    iget-object v0, v2, Lcom/android/volley/ServerError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 299
    .local v0, "networkResponse":Lcom/android/volley/NetworkResponse;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request fail. error - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v1, ""

    .line 301
    .local v1, "serverMessage":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v2, :cond_6

    .line 302
    new-instance v1, Ljava/lang/String;

    .end local v1    # "serverMessage":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 303
    .restart local v1    # "serverMessage":Ljava/lang/String;
    :cond_6
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    iget v3, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". server message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 304
    .end local v0    # "networkResponse":Lcom/android/volley/NetworkResponse;
    .end local v1    # "serverMessage":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$CDNVolleyRequest$DiscFullError;

    if-eqz v2, :cond_8

    .line 305
    sget-object v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "request fail. not enough memory"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/16 v3, 0x3ec

    invoke-direct {v2, v6, v3}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZI)V

    goto/16 :goto_0

    .line 308
    :cond_8
    sget-object v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request fail. unknown error - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v5, v3}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_9
    sget-object v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request fail. unknown error - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v5, v3}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static request(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkRequest"    # Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;
    .param p2, "timeoutSec"    # I

    .prologue
    .line 227
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 228
    :cond_0
    sget-object v3, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "request fail. invalid params"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v3, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/4 v4, 0x0

    const/16 v7, 0x3f0

    invoke-direct {v3, v4, v7}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZI)V

    .line 273
    :goto_0
    return-object v3

    .line 232
    :cond_1
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    .line 234
    .local v6, "future":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;->getServerUrl()Ljava/lang/String;

    move-result-object v17

    .line 235
    .local v17, "serverUrl":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v13

    .line 236
    .local v13, "body":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request. url : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", body:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;

    if-eqz v3, :cond_3

    .line 240
    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->isGzipEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->compress(Ljava/lang/String;)[B

    move-result-object v5

    .line 242
    .local v5, "gzipBody":[B
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$GzipJsonUtf8VolleyRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;->getRequestMethod()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;->getServerUrl()Ljava/lang/String;

    move-result-object v4

    move-object v7, v6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$GzipJsonUtf8VolleyRequest;-><init>(ILjava/lang/String;[BLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 262
    .end local v5    # "gzipBody":[B
    .local v2, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<Ljava/lang/String;>;"
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 263
    new-instance v3, Lcom/android/volley/DefaultRetryPolicy;

    move/from16 v0, p2

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    long-to-int v4, v8

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v7, v8}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v2, v3}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 264
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v15

    .line 265
    .local v15, "requestQueue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v15, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 266
    move/from16 v0, p2

    int-to-long v8, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v3}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 267
    .local v16, "result":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request success. "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v3, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/4 v4, 0x1

    const/16 v7, 0xc8

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v7, v0}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 269
    .end local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<Ljava/lang/String;>;"
    .end local v13    # "body":Ljava/lang/String;
    .end local v15    # "requestQueue":Lcom/android/volley/RequestQueue;
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "serverUrl":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 270
    .local v14, "e":Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
    sget-object v3, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "request fail. invalid request body"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v3, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    const/4 v4, 0x0

    const/16 v7, 0x3f0

    invoke-direct {v3, v4, v7}, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;-><init>(ZI)V

    goto/16 :goto_0

    .line 248
    .end local v14    # "e":Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
    .restart local v13    # "body":Ljava/lang/String;
    .restart local v17    # "serverUrl":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$JsonUtf8VolleyRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;->getRequestMethod()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;->getServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v10

    move-object v7, v2

    move-object v11, v6

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$JsonUtf8VolleyRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .restart local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<Ljava/lang/String;>;"
    goto :goto_1

    .line 255
    .end local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<Ljava/lang/String;>;"
    :cond_3
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$StringUtf8VolleyRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;->getRequestMethod()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;->getServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v10

    move-object v7, v2

    move-object v11, v6

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$StringUtf8VolleyRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 272
    .end local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<Ljava/lang/String;>;"
    .end local v13    # "body":Ljava/lang/String;
    .end local v17    # "serverUrl":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 273
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {v14}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->handleVolleyException(Ljava/lang/Exception;)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v3

    goto/16 :goto_0
.end method
