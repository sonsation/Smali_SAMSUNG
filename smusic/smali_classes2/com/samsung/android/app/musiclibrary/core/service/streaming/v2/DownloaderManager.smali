.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;
.super Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;
.source "DownloaderManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "DownloaderManager> "

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;


# instance fields
.field private final mDownloaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private download(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .locals 5
    .param p1, "r"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .prologue
    .line 42
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    monitor-enter v3

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;

    .line 44
    .local v1, "running":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;
    if-nez v1, :cond_0

    .line 45
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V

    .line 46
    .local v0, "d":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] requested"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->printInfoLog(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->getDownloadFile()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v2

    monitor-exit v3

    .line 52
    .end local v0    # "d":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;
    :goto_0
    return-object v2

    .line 51
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] requested to already running"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->printLog(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->getDownloadFile()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 54
    .end local v1    # "running":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static obtain()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static printErrorLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloaderManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloaderManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloaderManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method


# virtual methods
.method public getFileRequestIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRunningCount()I
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V
    .locals 3
    .param p1, "r"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->mDownloaderMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] removed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->printInfoLog(Ljava/lang/String;)V

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .locals 3
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->download(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v0

    .line 37
    .local v0, "file":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] find! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->printInfoLog(Ljava/lang/String;)V

    .line 38
    return-object v0
.end method
