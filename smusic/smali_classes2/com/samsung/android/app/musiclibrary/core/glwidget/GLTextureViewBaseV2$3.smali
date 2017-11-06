.class Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;
.super Ljava/lang/Object;
.source "GLTextureViewBaseV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mLastActiveTime:J

.field private mLastRenderTime:J

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private waitNextFrameTime(ZZ)V
    .locals 10
    .param p1, "wasActive"    # Z
    .param p2, "wasRender"    # Z

    .prologue
    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 215
    .local v2, "now":J
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$700(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 217
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->mLastRenderTime:J

    const-wide/16 v8, 0xa

    add-long v0, v6, v8

    .line 218
    .local v0, "nextFrameTime":J
    sub-long v4, v0, v2

    .line 219
    .local v4, "sleepTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 224
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 228
    .end local v0    # "nextFrameTime":J
    .end local v4    # "sleepTime":J
    :cond_0
    if-eqz p2, :cond_1

    .line 229
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->mLastRenderTime:J

    .line 232
    :cond_1
    if-eqz p1, :cond_2

    .line 233
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->mLastActiveTime:J

    .line 237
    :cond_2
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->mLastActiveTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0xfa

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 239
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "goto sleep"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    iget-object v7, v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    monitor-enter v7

    .line 242
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    iget-object v6, v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :goto_0
    :try_start_1
    monitor-exit v7

    .line 248
    :cond_3
    return-void

    .line 246
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 243
    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 174
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "enter rendering cycle"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$500(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 176
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->receiveEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v2

    .line 177
    .local v2, "event":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    if-eqz v2, :cond_2

    .line 178
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v7, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleRenderingEvent(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V

    .line 180
    :cond_2
    const/4 v6, 0x0

    .line 181
    .local v6, "wasRender":Z
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$600(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 185
    const/4 v6, 0x1

    .line 187
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$700(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 188
    const-wide/16 v0, 0x11

    .line 190
    .local v0, "beforeNextFrame":J
    const-wide/16 v8, 0x11

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$800(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)J

    move-result-wide v10

    const-wide/16 v12, 0x8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x2

    div-long v4, v8, v10

    .line 191
    .local v4, "sleepTime":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_3

    const-wide/16 v8, 0xa

    cmp-long v7, v4, v8

    if-gez v7, :cond_3

    .line 192
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 196
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_4

    .line 197
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleRequestRender()V

    .line 204
    .end local v0    # "beforeNextFrame":J
    .end local v4    # "sleepTime":J
    :cond_4
    :goto_1
    if-nez v6, :cond_5

    if-eqz v2, :cond_7

    :cond_5
    const/4 v3, 0x1

    .line 206
    .local v3, "wasActive":Z
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->waitNextFrameTime(ZZ)V

    goto :goto_0

    .line 200
    .end local v3    # "wasActive":Z
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleRequestRender()V

    goto :goto_1

    .line 204
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 210
    .end local v2    # "event":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    .end local v6    # "wasRender":Z
    :cond_8
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "finish rendering cycle"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method
