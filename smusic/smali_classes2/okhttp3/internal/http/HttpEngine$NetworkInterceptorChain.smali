.class Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lokhttp3/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkInterceptorChain"
.end annotation


# instance fields
.field private calls:I

.field private final index:I

.field private final request:Lokhttp3/Request;

.field final synthetic this$0:Lokhttp3/internal/http/HttpEngine;


# direct methods
.method constructor <init>(Lokhttp3/internal/http/HttpEngine;ILokhttp3/Request;)V
    .locals 0
    .param p1, "this$0"    # Lokhttp3/internal/http/HttpEngine;
    .param p2, "index"    # I
    .param p3, "request"    # Lokhttp3/Request;

    .prologue
    .line 643
    iput-object p1, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput p2, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    .line 645
    iput-object p3, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lokhttp3/Request;

    .line 646
    return-void
.end method


# virtual methods
.method public connection()Lokhttp3/Connection;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    iget-object v0, v0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->connection()Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 14
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 657
    iget v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    .line 659
    iget v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    if-lez v9, :cond_2

    .line 660
    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    iget-object v9, v9, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    .line 661
    .local v2, "caller":Lokhttp3/Interceptor;
    invoke-virtual {p0}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->connection()Lokhttp3/Connection;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    .line 664
    .local v0, "address":Lokhttp3/Address;
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 665
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/HttpUrl;->port()I

    move-result v9

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/HttpUrl;->port()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 666
    :cond_0
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must retain the same host and port"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 671
    :cond_1
    iget v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-le v9, v11, :cond_2

    .line 672
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must call proceed() exactly once"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 677
    .end local v0    # "address":Lokhttp3/Address;
    .end local v2    # "caller":Lokhttp3/Interceptor;
    :cond_2
    iget v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    iget-object v10, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    iget-object v10, v10, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 679
    new-instance v3, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;

    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    iget v10, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v3, v9, v10, p1}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lokhttp3/internal/http/HttpEngine;ILokhttp3/Request;)V

    .line 680
    .local v3, "chain":Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;
    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    iget-object v9, v9, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/Interceptor;

    .line 681
    .local v6, "interceptor":Lokhttp3/Interceptor;
    invoke-interface {v6, v3}, Lokhttp3/Interceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v5

    .line 684
    .local v5, "interceptedResponse":Lokhttp3/Response;
    iget v9, v3, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-eq v9, v11, :cond_3

    .line 685
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must call proceed() exactly once"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 688
    :cond_3
    if-nez v5, :cond_8

    .line 689
    new-instance v9, Ljava/lang/NullPointerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 696
    .end local v3    # "chain":Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;
    .end local v5    # "interceptedResponse":Lokhttp3/Response;
    .end local v6    # "interceptor":Lokhttp3/Interceptor;
    :cond_4
    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    invoke-static {v9}, Lokhttp3/internal/http/HttpEngine;->access$000(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/internal/http/HttpStream;

    move-result-object v9

    invoke-interface {v9, p1}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 699
    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    invoke-static {v9, p1}, Lokhttp3/internal/http/HttpEngine;->access$102(Lokhttp3/internal/http/HttpEngine;Lokhttp3/Request;)Lokhttp3/Request;

    .line 701
    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v9, p1}, Lokhttp3/internal/http/HttpEngine;->permitsRequestBody(Lokhttp3/Request;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 702
    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    invoke-static {v9}, Lokhttp3/internal/http/HttpEngine;->access$000(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/internal/http/HttpStream;

    move-result-object v9

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-interface {v9, p1, v10, v11}, Lokhttp3/internal/http/HttpStream;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v7

    .line 703
    .local v7, "requestBodyOut":Lokio/Sink;
    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    .line 704
    .local v1, "bufferedRequestBody":Lokio/BufferedSink;
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v9

    invoke-virtual {v9, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 705
    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    .line 708
    .end local v1    # "bufferedRequestBody":Lokio/BufferedSink;
    .end local v7    # "requestBodyOut":Lokio/Sink;
    :cond_5
    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lokhttp3/internal/http/HttpEngine;

    invoke-static {v9}, Lokhttp3/internal/http/HttpEngine;->access$200(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/Response;

    move-result-object v8

    .line 710
    .local v8, "response":Lokhttp3/Response;
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v4

    .line 711
    .local v4, "code":I
    const/16 v9, 0xcc

    if-eq v4, v9, :cond_6

    const/16 v9, 0xcd

    if-ne v4, v9, :cond_7

    :cond_6
    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_7

    .line 712
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " had non-zero Content-Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 713
    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    move-object v5, v8

    .line 716
    .end local v4    # "code":I
    .end local v8    # "response":Lokhttp3/Response;
    :cond_8
    return-object v5
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lokhttp3/Request;

    return-object v0
.end method
