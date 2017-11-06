.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "MaintainableQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ArtWork"

.field private static final MIN_DELAY_BETWEEN_MAINTENANCE:I = 0x2710

.field private static final QUEUE_MIN_MAINTENANCE_SIZE:I = 0x80


# instance fields
.field private mNextQueueMaintenanceTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    return-void
.end method

.method private doMaintenance()V
    .locals 6

    .prologue
    .line 66
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "ArtWork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queue maintenance, size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    .line 73
    .local v1, "req":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->requestStillNecessary()Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 75
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 76
    const-string v2, "ArtWork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop no longer necessary request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 80
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    .end local v1    # "req":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    :catch_0
    move-exception v2

    .line 82
    :cond_2
    :goto_1
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 83
    const-string v2, "ArtWork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queue maintenance finished, size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->mNextQueueMaintenanceTime:J

    .line 86
    return-void

    .line 80
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private needMaintenance()Z
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->size()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->mNextQueueMaintenanceTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public poll()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->needMaintenance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->doMaintenance()V

    .line 62
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->needMaintenance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->doMaintenance()V

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->poll()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->poll(JLjava/util/concurrent/TimeUnit;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    move-result-object v0

    return-object v0
.end method
