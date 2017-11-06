.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;
.super Ljava/lang/Object;
.source "ServiceHandlerThread.java"


# static fields
.field private static volatile sHandler:Landroid/os/Handler;

.field private static final sHandlerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->sHandlerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTimer(Ljava/lang/String;ILjava/lang/Runnable;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "delay"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 21
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-object v0
.end method

.method private static ensureHandler()V
    .locals 4

    .prologue
    .line 41
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 52
    .local v0, "thread":Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 44
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->sHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 45
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 46
    monitor-exit v2

    goto :goto_0

    .line 51
    .restart local v0    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    .restart local v0    # "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->sHandler:Landroid/os/Handler;

    .line 51
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static finishThread()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->sHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 34
    monitor-exit v1

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 36
    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 37
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->postDelayed(Ljava/lang/Runnable;I)V

    .line 26
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;I)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # I

    .prologue
    .line 16
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->ensureHandler()V

    .line 17
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->sHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    return-void
.end method
