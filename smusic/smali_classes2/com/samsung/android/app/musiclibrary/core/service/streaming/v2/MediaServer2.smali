.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
.super Ljava/lang/Object;
.source "MediaServer2.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_PATH:Z = false

.field private static final LOCAL_HOST:Ljava/lang/String; = "http://localhost:"

.field public static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final PORT_END:I = 0xabe0

.field private static final PORT_START:I = 0xab90

.field private static final SMUSIC_MEDIA_SERVER:Ljava/lang/String; = "smusic_media_server"

.field private static final STREAMING:Ljava/lang/String; = "streaming"

.field public static final SUPPORT_SERVER_V2:Z = true

.field private static volatile sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

.field private mIsCancel:Z

.field private mIsRunning:Z

.field private final mServerSocket:Ljava/net/ServerSocket;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mIsCancel:Z

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mIsRunning:Z

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mContext:Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->bind()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mServerSocket:Ljava/net/ServerSocket;

    .line 104
    return-void
.end method

.method private bind()Ljava/net/ServerSocket;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 107
    const v3, 0xab90

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->createSocket(I)Ljava/net/ServerSocket;

    move-result-object v1

    .line 108
    .local v1, "socket":Ljava/net/ServerSocket;
    if-nez v1, :cond_1

    move-object v1, v2

    .line 124
    .end local v1    # "socket":Ljava/net/ServerSocket;
    :cond_0
    :goto_0
    return-object v1

    .line 111
    .restart local v1    # "socket":Ljava/net/ServerSocket;
    :cond_1
    invoke-virtual {v1}, Ljava/net/ServerSocket;->isBound()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    if-nez v0, :cond_1

    .line 85
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createSocket(I)Ljava/net/ServerSocket;
    .locals 4
    .param p1, "port"    # I

    .prologue
    .line 129
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, p1}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-object v2

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->printErrorLog(Ljava/lang/String;)V

    .line 132
    add-int/lit8 p1, p1, 0x1

    move v0, p1

    .line 133
    .local v0, "change":I
    const v2, 0xabe0

    if-ge v2, v0, :cond_0

    .line 134
    const-string v2, "fail to create server socket."

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->printErrorLog(Ljava/lang/String;)V

    .line 135
    const/4 v2, 0x0

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->createSocket(I)Ljava/net/ServerSocket;

    move-result-object v2

    goto :goto_0
.end method

.method public static getBasePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "streaming"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 232
    if-nez p0, :cond_1

    .line 233
    const/4 v1, 0x0

    .line 240
    :cond_0
    :goto_0
    return-object v1

    .line 235
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "path":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 237
    .local v0, "index":I
    if-nez v0, :cond_0

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPathUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 244
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static isLocalContent(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 223
    if-nez p0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v1

    .line 226
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "scheme":Ljava/lang/String;
    const-string v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "dcf"

    .line 228
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isRunning()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mIsRunning:Z

    return v0
.end method

.method private static obtainInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call createInstance method first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    return-object v0
.end method

.method public static obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->obtainInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    .local v1, "server":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    :goto_0
    return-object v1

    .line 68
    .end local v1    # "server":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    move-result-object v1

    .restart local v1    # "server":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    goto :goto_0
.end method

.method private printErrorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "SMUSIC-SV-PlayerServer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, "SMUSIC-SV-PlayerServer"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method private throwIfFileChainIsAbsent()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please make sure setFileChain() was called before"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mIsCancel:Z

    .line 156
    return-void
.end method

.method public requestUri(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;I)Landroid/net/Uri;
    .locals 5
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p2, "priority"    # I

    .prologue
    .line 199
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v3, :cond_1

    .line 200
    const-string v3, "Socket server is null!. Please check socket server."

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->printErrorLog(Ljava/lang/String;)V

    .line 201
    const/4 v2, 0x0

    .line 212
    :cond_0
    :goto_0
    return-object v2

    .line 203
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->throwIfFileChainIsAbsent()V

    .line 204
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    move-result-object v1

    .line 205
    .local v1, "fm":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->putPlayingItem(ILjava/lang/String;)V

    .line 206
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v0

    .line 207
    .local v0, "file":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getPlayingUri()Landroid/net/Uri;

    move-result-object v2

    .line 208
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->isLocalContent(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://localhost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 165
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mIsCancel:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->throwIfFileChainIsAbsent()V

    .line 167
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 168
    .local v1, "socket":Ljava/net/Socket;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;-><init>(Ljava/net/Socket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    .end local v1    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mIsRunning:Z

    .line 182
    return-void

    .line 174
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 177
    :catch_1
    move-exception v0

    .line 178
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 177
    :catch_2
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 173
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 174
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 179
    :cond_2
    :goto_2
    throw v2

    .line 177
    :catch_3
    move-exception v0

    .line 178
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public setFileChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;)V
    .locals 1
    .param p1, "fileChain"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    .line 151
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->setFileChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;)V

    .line 152
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->mIsRunning:Z

    .line 77
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->sMediaServer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    .local v0, "t":Ljava/lang/Thread;
    const-string/jumbo v1, "smusic_media_server"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method
