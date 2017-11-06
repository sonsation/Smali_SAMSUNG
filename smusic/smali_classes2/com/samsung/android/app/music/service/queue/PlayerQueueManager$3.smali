.class Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;
.super Ljava/lang/Object;
.source "PlayerQueueManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->onCustomEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 436
    const/4 v0, 0x0

    .local v0, "count":I
    move v1, v0

    .line 437
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$300(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetworkOrConnecting(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 439
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    :cond_0
    move v0, v1

    .line 441
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    .line 442
    invoke-static {v3}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$300(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetworkOrConnecting(Landroid/content/Context;)Z

    move-result v3

    .line 441
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "isNetworkAvailable":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;->this$0:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->access$400(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    .end local v2    # "isNetworkAvailable":Ljava/lang/String;
    :goto_1
    return-void

    .line 444
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :catch_0
    move-exception v3

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1
.end method
