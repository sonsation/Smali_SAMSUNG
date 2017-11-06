.class public Lcom/samsung/android/app/music/service/milk/net/RetryPolicyInterceptor;
.super Ljava/lang/Object;
.source "RetryPolicyInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final RETRY_COUNT:I = 0x2

.field private static final RETYR_DELAY:[I

.field private static final TAG:Ljava/lang/String; = "RetryPolicyInterceptor"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/RetryPolicyInterceptor;->RETYR_DELAY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d0
        0xbb8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 9
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 26
    .local v1, "request":Lokhttp3/Request;
    const/4 v2, 0x0

    .line 27
    .local v2, "response":Lokhttp3/Response;
    const/4 v3, 0x0

    .line 28
    .local v3, "responseOK":Z
    const/4 v4, 0x0

    .line 30
    .local v4, "tryCount":I
    :goto_0
    if-nez v3, :cond_2

    const/4 v5, 0x2

    if-gt v4, v5, :cond_2

    .line 32
    :try_start_0
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    .line 35
    const-string v5, "RetryPolicyInterceptor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intercept Retry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " responseOk : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-nez v3, :cond_0

    sget-object v5, Lcom/samsung/android/app/music/service/milk/net/RetryPolicyInterceptor;->RETYR_DELAY:[I

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 41
    const-string v5, "RetryPolicyInterceptor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RetryPolicyInterceptor Request is not successful - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :try_start_1
    sget-object v5, Lcom/samsung/android/app/music/service/milk/net/RetryPolicyInterceptor;->RETYR_DELAY:[I

    aget v5, v5, v4

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 49
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 36
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-nez v3, :cond_1

    sget-object v6, Lcom/samsung/android/app/music/service/milk/net/RetryPolicyInterceptor;->RETYR_DELAY:[I

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 41
    const-string v6, "RetryPolicyInterceptor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RetryPolicyInterceptor Request is not successful - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :try_start_3
    sget-object v6, Lcom/samsung/android/app/music/service/milk/net/RetryPolicyInterceptor;->RETYR_DELAY:[I

    aget v6, v6, v4

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 48
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    throw v5

    .line 44
    :catch_2
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 51
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-nez v3, :cond_3

    .line 52
    new-instance v5, Ljava/net/ConnectException;

    const-string v6, "Not available network connection"

    invoke-direct {v5, v6}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 55
    :cond_3
    return-object v2
.end method
