.class public final Lcom/samsung/android/app/music/service/streaming/v2/MediaProxyServerFactory;
.super Ljava/lang/Object;
.source "MediaProxyServerFactory.java"


# static fields
.field private static volatile sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainMediaProxyServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-object v4, Lcom/samsung/android/app/music/service/streaming/v2/MediaProxyServerFactory;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    if-nez v4, :cond_1

    .line 16
    const-class v5, Lcom/samsung/android/app/music/service/streaming/v2/MediaProxyServerFactory;

    monitor-enter v5

    .line 17
    :try_start_0
    sget-object v4, Lcom/samsung/android/app/music/service/streaming/v2/MediaProxyServerFactory;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    if-nez v4, :cond_0

    .line 18
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "basePath":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;

    move-result-object v1

    .line 21
    .local v1, "cache":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->setBasePath(Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;

    move-result-object v2

    .line 23
    .local v2, "fileChain":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;->setNext(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->obtain()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;->setNext(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    .line 25
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    move-result-object v3

    .line 26
    .local v3, "server":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->setFileChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;)V

    .line 27
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->start()V

    .line 28
    sput-object v3, Lcom/samsung/android/app/music/service/streaming/v2/MediaProxyServerFactory;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    .line 30
    .end local v0    # "basePath":Ljava/lang/String;
    .end local v1    # "cache":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;
    .end local v2    # "fileChain":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;
    .end local v3    # "server":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v4, Lcom/samsung/android/app/music/service/streaming/v2/MediaProxyServerFactory;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    return-object v4

    .line 30
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
