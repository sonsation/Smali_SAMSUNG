.class Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;
.super Ljava/lang/Object;
.source "SingletonServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onServiceConnected() connected"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$002(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 177
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    monitor-enter v2

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$200(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    iget-object v3, v3, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onServiceConnected() already unbinded!"

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->release()V

    .line 182
    monitor-exit v2

    .line 193
    :goto_0
    return-void

    .line 184
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->handleServiceConnected(Landroid/os/IBinder;)V

    .line 188
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$100(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 189
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$100(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    .line 190
    .local v0, "listener":Landroid/content/ServiceConnection;
    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_1

    .line 192
    .end local v0    # "listener":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 184
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 192
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onServiceDisconnected() disconnected. try to rebinding"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$002(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$100(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->access$100(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    .line 163
    .local v0, "listener":Landroid/content/ServiceConnection;
    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 165
    .end local v0    # "listener":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->handleServiceDisconnected()V

    .line 168
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->this$0:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->rebindService(Landroid/content/ServiceConnection;)Z

    .line 169
    return-void
.end method
