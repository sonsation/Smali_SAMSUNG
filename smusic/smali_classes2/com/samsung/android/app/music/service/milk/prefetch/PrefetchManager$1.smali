.class Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$1;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->doPrefetchChunkData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

.field final synthetic val$chunkUrls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$1;->this$0:Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$1;->val$chunkUrls:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 484
    const/4 v3, 0x0

    .line 485
    .local v3, "i":I
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$1;->val$chunkUrls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    .local v0, "chunkUrl":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 488
    .local v1, "connection":Ljava/net/URLConnection;
    new-instance v5, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchChunkDataCallback;

    invoke-direct {v5}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchChunkDataCallback;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$1;->this$0:Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    iget-object v6, v6, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    .line 489
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchChunkDataCallback;->handleHttpResponse(Landroid/content/Context;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v1    # "connection":Ljava/net/URLConnection;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 495
    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$1;->this$0:Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$1;->val$chunkUrls:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->savePrefetchUrls(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 490
    :catch_0
    move-exception v2

    .line 491
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doPrefetchChunkData >> Error! Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 492
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 491
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 499
    .end local v0    # "chunkUrl":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
