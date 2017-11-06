.class Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;
.super Landroid/os/Handler;
.source "SingletonServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 200
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    monitor-enter v2

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() unbindService handler. connections - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    .line 203
    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$200(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$210(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I

    .line 206
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$200(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$202(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;I)I

    .line 208
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$002(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 209
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->handleUnbindService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    iget-object v3, v3, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() unbound. connections - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$200(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    monitor-exit v2

    .line 219
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
