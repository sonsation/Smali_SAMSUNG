.class public abstract Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;
.super Ljava/lang/Object;
.source "SingletonServiceHelper.java"


# static fields
.field private static final UNBIND_DELAY:I = 0x1f4


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private volatile mConnectionCount:I

.field protected mServiceConnection:Landroid/content/ServiceConnection;

.field private final mStateListenerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mUnBindingHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mBinder:Landroid/os/IBinder;

    .line 153
    new-instance v0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;-><init>(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 196
    new-instance v0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;-><init>(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mUnBindingHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mStateListenerArray:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mStateListenerArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    .prologue
    .line 28
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    return p1
.end method

.method static synthetic access$210(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    .prologue
    .line 28
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    return v0
.end method


# virtual methods
.method public bindService(Landroid/content/ServiceConnection;)Z
    .locals 2
    .param p1, "listener"    # Landroid/content/ServiceConnection;

    .prologue
    .line 123
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->bindService(Landroid/content/ServiceConnection;ZZ)Z

    move-result v0

    return v0
.end method

.method protected bindService(Landroid/content/ServiceConnection;ZZ)Z
    .locals 6
    .param p1, "listener"    # Landroid/content/ServiceConnection;
    .param p2, "counting"    # Z
    .param p3, "force"    # Z

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "ret":Z
    if-eqz p2, :cond_1

    .line 64
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mStateListenerArray:Ljava/util/ArrayList;

    monitor-enter v3

    .line 65
    if-eqz p1, :cond_0

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mStateListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService() connections - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", binder - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", counting - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", force - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "binding":Z
    if-eqz p2, :cond_2

    .line 82
    iget v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    if-gtz v2, :cond_6

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService() count under zero("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). so try to binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    .line 86
    const/4 v0, 0x1

    .line 92
    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 93
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mBinder:Landroid/os/IBinder;

    if-nez v2, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bindService() binder is null. so force binding"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    .line 99
    :cond_3
    iget v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    if-lez v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1, v2, v3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 103
    :cond_4
    if-eqz v0, :cond_5

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 109
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    return v1

    .line 68
    .end local v0    # "binding":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 88
    .restart local v0    # "binding":Z
    :cond_6
    :try_start_3
    iget v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    goto :goto_0

    .line 109
    .end local v0    # "binding":Z
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected abstract getApplicationContext()Landroid/content/Context;
.end method

.method protected abstract getComponentName()Landroid/content/ComponentName;
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method protected abstract handleServiceConnected(Landroid/os/IBinder;)V
.end method

.method protected abstract handleServiceDisconnected()V
.end method

.method protected abstract handleUnbindService()V
.end method

.method public abstract isConnected()Z
.end method

.method public rebindService(Landroid/content/ServiceConnection;)Z
    .locals 2
    .param p1, "listener"    # Landroid/content/ServiceConnection;

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->bindService(Landroid/content/ServiceConnection;ZZ)Z

    move-result v0

    return v0
.end method

.method protected release()V
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mStateListenerArray:Ljava/util/ArrayList;

    monitor-enter v1

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "release() state listener cnt - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mStateListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mStateListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 4
    .param p1, "listener"    # Landroid/content/ServiceConnection;

    .prologue
    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindService() connections - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mConnectionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mStateListenerArray:Ljava/util/ArrayList;

    monitor-enter v1

    .line 136
    if-eqz p1, :cond_0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mStateListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->mUnBindingHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    return-void

    .line 133
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 139
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
