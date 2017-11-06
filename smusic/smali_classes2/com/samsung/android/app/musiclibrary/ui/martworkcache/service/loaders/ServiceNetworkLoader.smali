.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;
.super Ljava/lang/Object;
.source "ServiceNetworkLoader.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sDefaultUrlConnectionFactory:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;

.field private static sInitialized:Z

.field private static final sThreadLocalBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final mFactory:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;

.field private volatile mTempCacheFolder:Ljava/io/File;

.field private final mTimeout:I

.field private final mUriRegexp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->sInitialized:Z

    .line 35
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->sThreadLocalBuffer:Ljava/lang/ThreadLocal;

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->sDefaultUrlConnectionFactory:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;

    .line 86
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "uriRegexp"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->sDefaultUrlConnectionFactory:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;-><init>(ILjava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;)V

    .line 59
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;)V
    .locals 0
    .param p1, "timeout"    # I
    .param p2, "uriRegexp"    # Ljava/lang/String;
    .param p3, "factory"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->mTimeout:I

    .line 63
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->mUriRegexp:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->mFactory:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;

    .line 65
    return-void
.end method

.method private getTempBuffer()[B
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->sThreadLocalBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method private static declared-synchronized initializeNetworkLoader(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-class v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 72
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->sInitialized:Z

    .line 73
    const-string v2, "-network-temp"

    .line 74
    invoke-static {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 75
    .local v1, "tempDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    .line 77
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    .end local v1    # "tempDir":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private loadToTempFile(Landroid/content/Context;ILjava/net/URLConnection;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # I
    .param p3, "conn"    # Ljava/net/URLConnection;
    .param p4, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->mTempCacheFolder:Ljava/io/File;

    if-nez v6, :cond_0

    .line 122
    const-string v6, "-network-temp"

    .line 123
    invoke-static {p1, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->mTempCacheFolder:Ljava/io/File;

    .line 125
    :cond_0
    const-string/jumbo v6, "tempBitmap"

    const-string v7, ""

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->mTempCacheFolder:Ljava/io/File;

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 129
    .local v5, "tempFile":Ljava/io/File;
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->getTempBuffer()[B

    move-result-object v0

    .line 131
    .local v0, "buffer":[B
    const/4 v6, -0x1

    if-eq p4, v6, :cond_1

    .line 132
    move v4, p4

    .line 136
    .local v4, "remainToLoad":I
    :goto_0
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 137
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v3, "outputStream":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 138
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 139
    .local v2, "length":I
    :goto_1
    if-lez v2, :cond_2

    .line 140
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 141
    sub-int/2addr v4, v2

    .line 146
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v2

    goto :goto_1

    .line 134
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "length":I
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .end local v4    # "remainToLoad":I
    :cond_1
    const v4, 0x7fffffff

    .restart local v4    # "remainToLoad":I
    goto :goto_0

    .line 148
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "length":I
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v7, :cond_6

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    if-eqz v8, :cond_9

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 151
    :cond_4
    :goto_3
    const/4 v6, -0x1

    if-eq p4, v6, :cond_b

    if-eqz v4, :cond_b

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 156
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->Empty:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    .line 158
    :goto_4
    return-object v6

    .line 148
    :catch_0
    move-exception v6

    :try_start_4
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 136
    .end local v2    # "length":I
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_5
    if-eqz v1, :cond_5

    if-eqz v7, :cond_a

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_6
    throw v6

    .line 148
    .restart local v2    # "length":I
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 149
    .end local v2    # "length":I
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v7, v8

    goto :goto_5

    .line 137
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 148
    :catchall_2
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_7
    if-eqz v3, :cond_7

    if-eqz v7, :cond_8

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_7
    :goto_8
    :try_start_a
    throw v6

    :catch_3
    move-exception v9

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_8

    .line 149
    .restart local v2    # "length":I
    :catch_4
    move-exception v6

    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .end local v2    # "length":I
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_6

    .line 158
    .restart local v2    # "length":I
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_b
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->open(Ljava/io/File;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v6

    goto :goto_4

    .line 148
    .end local v2    # "length":I
    :catchall_3
    move-exception v6

    goto :goto_7
.end method


# virtual methods
.method public getMaxRequestDuration(Landroid/net/Uri;)J
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 172
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->mTimeout:I

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    return-wide v0
.end method

.method public isDiskCached(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiResolution(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public isRemote(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public loadArtwork(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 92
    if-nez p2, :cond_0

    .line 97
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->Empty:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    .line 116
    :goto_0
    return-object v3

    .line 100
    :cond_0
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->sInitialized:Z

    if-nez v3, :cond_1

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->initializeNetworkLoader(Landroid/content/Context;)V

    .line 105
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->mFactory:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;

    invoke-interface {v3, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;->getUrlConnection(Landroid/net/Uri;)Ljava/net/URLConnection;

    move-result-object v0

    .line 107
    .local v0, "conn":Ljava/net/URLConnection;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 108
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->mTimeout:I

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 109
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->mTimeout:I

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 110
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 111
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    .line 112
    .local v2, "restContentLength":I
    invoke-direct {p0, p1, p3, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->loadToTempFile(Landroid/content/Context;ILjava/net/URLConnection;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 113
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v2    # "restContentLength":I
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->TAG:Ljava/lang/String;

    const-string v4, "loadNetworkBitmap: "

    invoke-static {v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->Empty:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    goto :goto_0
.end method

.method public uriRegexp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->mUriRegexp:Ljava/lang/String;

    return-object v0
.end method
