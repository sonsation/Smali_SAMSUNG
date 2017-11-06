.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$ApplicationInterceptorChain;,
        Lokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field engine:Lokhttp3/internal/http/HttpEngine;

.field private executed:Z

.field originalRequest:Lokhttp3/Request;


# direct methods
.method protected constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V
    .locals 0
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "originalRequest"    # Lokhttp3/Request;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 43
    iput-object p2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    .line 44
    return-void
.end method

.method static synthetic access$100(Lokhttp3/RealCall;Z)Lokhttp3/Response;
    .locals 1
    .param p0, "x0"    # Lokhttp3/RealCall;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lokhttp3/RealCall;->getResponseWithInterceptorChain(Z)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lokhttp3/RealCall;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lokhttp3/RealCall;

    .prologue
    .line 30
    invoke-direct {p0}, Lokhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lokhttp3/RealCall;

    .prologue
    .line 30
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private getResponseWithInterceptorChain(Z)Lokhttp3/Response;
    .locals 3
    .param p1, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lokhttp3/RealCall$ApplicationInterceptorChain;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-direct {v0, p0, v1, v2, p1}, Lokhttp3/RealCall$ApplicationInterceptorChain;-><init>(Lokhttp3/RealCall;ILokhttp3/Request;Z)V

    .line 160
    .local v0, "chain":Lokhttp3/Interceptor$Chain;
    iget-object v1, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    return-object v1
.end method

.method private toLoggableString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    iget-boolean v2, p0, Lokhttp3/RealCall;->canceled:Z

    if-eqz v2, :cond_0

    const-string v1, "canceled call"

    .line 154
    .local v1, "string":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    const-string v3, "/..."

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 155
    .local v0, "redactedUrl":Lokhttp3/HttpUrl;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 153
    .end local v0    # "redactedUrl":Lokhttp3/HttpUrl;
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    const-string v1, "call"

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/RealCall;->canceled:Z

    .line 83
    iget-object v0, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0}, Lokhttp3/internal/http/HttpEngine;->cancel()V

    .line 84
    :cond_0
    return-void
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .locals 1
    .param p1, "responseCallback"    # Lokhttp3/Callback;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/RealCall;->enqueue(Lokhttp3/Callback;Z)V

    .line 71
    return-void
.end method

.method enqueue(Lokhttp3/Callback;Z)V
    .locals 3
    .param p1, "responseCallback"    # Lokhttp3/Callback;
    .param p2, "forWebSocket"    # Z

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 76
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    .line 77
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/RealCall$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;ZLokhttp3/RealCall$1;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->enqueue(Lokhttp3/RealCall$AsyncCall;)V

    .line 79
    return-void
.end method

.method public execute()Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/RealCall;->executed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already Executed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lokhttp3/RealCall;->executed:Z

    .line 54
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->executed(Lokhttp3/RealCall;)V

    .line 57
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lokhttp3/RealCall;->getResponseWithInterceptorChain(Z)Lokhttp3/Response;

    move-result-object v0

    .line 58
    .local v0, "result":Lokhttp3/Response;
    if-nez v0, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    .end local v0    # "result":Lokhttp3/Response;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/Call;)V

    throw v1

    .restart local v0    # "result":Lokhttp3/Response;
    :cond_1
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/Call;)V

    return-object v0
.end method

.method getResponse(Lokhttp3/Request;Z)Lokhttp3/Response;
    .locals 21
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v11

    .line 208
    .local v11, "body":Lokhttp3/RequestBody;
    if-eqz v11, :cond_1

    .line 209
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v19

    .line 211
    .local v19, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-virtual {v11}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v14

    .line 212
    .local v14, "contentType":Lokhttp3/MediaType;
    if-eqz v14, :cond_0

    .line 213
    const-string v2, "Content-Type"

    invoke-virtual {v14}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 216
    :cond_0
    invoke-virtual {v11}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v12

    .line 217
    .local v12, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_3

    .line 218
    const-string v2, "Content-Length"

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 219
    const-string v2, "Transfer-Encoding"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 225
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 229
    .end local v12    # "contentLength":J
    .end local v14    # "contentType":Lokhttp3/MediaType;
    .end local v19    # "requestBuilder":Lokhttp3/Request$Builder;
    :cond_1
    new-instance v2, Lokhttp3/internal/http/HttpEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lokhttp3/internal/http/HttpEngine;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    .line 231
    const/16 v17, 0x0

    .line 233
    .local v17, "followUpCount":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lokhttp3/RealCall;->canceled:Z

    if-eqz v2, :cond_4

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 235
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    .end local v17    # "followUpCount":I
    .restart local v12    # "contentLength":J
    .restart local v14    # "contentType":Lokhttp3/MediaType;
    .restart local v19    # "requestBuilder":Lokhttp3/Request$Builder;
    :cond_3
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 222
    const-string v2, "Content-Length"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 238
    .end local v12    # "contentLength":J
    .end local v14    # "contentType":Lokhttp3/MediaType;
    .end local v19    # "requestBuilder":Lokhttp3/Request$Builder;
    .restart local v17    # "followUpCount":I
    :cond_4
    const/16 v18, 0x1

    .line 240
    .local v18, "releaseConnection":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->sendRequest()V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Lokhttp3/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lokhttp3/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    const/16 v18, 0x0

    .line 269
    if-eqz v18, :cond_5

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v8

    .line 271
    .local v8, "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    .line 275
    .end local v8    # "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->getResponse()Lokhttp3/Response;

    move-result-object v10

    .line 276
    .local v10, "response":Lokhttp3/Response;
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->followUpRequest()Lokhttp3/Request;

    move-result-object v16

    .line 278
    .local v16, "followUp":Lokhttp3/Request;
    if-nez v16, :cond_a

    .line 279
    if-nez p2, :cond_6

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 282
    :cond_6
    return-object v10

    .line 243
    .end local v10    # "response":Lokhttp3/Response;
    .end local v16    # "followUp":Lokhttp3/Request;
    :catch_0
    move-exception v15

    .line 245
    .local v15, "e":Lokhttp3/internal/http/RequestException;
    :try_start_1
    invoke-virtual {v15}, Lokhttp3/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    .end local v15    # "e":Lokhttp3/internal/http/RequestException;
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_7

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v3}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v8

    .line 271
    .restart local v8    # "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    .line 272
    .end local v8    # "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    :cond_7
    throw v2

    .line 246
    :catch_1
    move-exception v15

    .line 248
    .local v15, "e":Lokhttp3/internal/http/RouteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v15}, Lokhttp3/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lokio/Sink;)Lokhttp3/internal/http/HttpEngine;

    move-result-object v20

    .line 249
    .local v20, "retryEngine":Lokhttp3/internal/http/HttpEngine;
    if-eqz v20, :cond_8

    .line 250
    const/16 v18, 0x0

    .line 251
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    if-eqz v18, :cond_2

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v8

    .line 271
    .restart local v8    # "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    goto/16 :goto_1

    .line 255
    .end local v8    # "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    :cond_8
    :try_start_3
    invoke-virtual {v15}, Lokhttp3/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 256
    .end local v15    # "e":Lokhttp3/internal/http/RouteException;
    .end local v20    # "retryEngine":Lokhttp3/internal/http/HttpEngine;
    :catch_2
    move-exception v15

    .line 258
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lokhttp3/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lokio/Sink;)Lokhttp3/internal/http/HttpEngine;

    move-result-object v20

    .line 259
    .restart local v20    # "retryEngine":Lokhttp3/internal/http/HttpEngine;
    if-eqz v20, :cond_9

    .line 260
    const/16 v18, 0x0

    .line 261
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    if-eqz v18, :cond_2

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v8

    .line 271
    .restart local v8    # "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    goto/16 :goto_1

    .line 266
    .end local v8    # "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    :cond_9
    :try_start_4
    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    .end local v15    # "e":Ljava/io/IOException;
    .end local v20    # "retryEngine":Lokhttp3/internal/http/HttpEngine;
    .restart local v10    # "response":Lokhttp3/Response;
    .restart local v16    # "followUp":Lokhttp3/Request;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v8

    .line 287
    .restart local v8    # "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    add-int/lit8 v17, v17, 0x1

    const/16 v2, 0x14

    move/from16 v0, v17

    if-le v0, v2, :cond_b

    .line 288
    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    .line 289
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual/range {v16 .. v16}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/internal/http/HttpEngine;->sameConnection(Lokhttp3/HttpUrl;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 293
    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    .line 294
    const/4 v8, 0x0

    .line 297
    :cond_c
    move-object/from16 p1, v16

    .line 298
    new-instance v2, Lokhttp3/internal/http/HttpEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lokhttp3/internal/http/HttpEngine;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    goto/16 :goto_1
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method
