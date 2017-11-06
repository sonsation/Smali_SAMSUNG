.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;
.super Ljava/lang/Object;
.source "SyncServiceArtworkLoader.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$SyncServiceArtworkLoaderHolder;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_TAG:Ljava/lang/String;

.field private static final SERVICE_CONNECTED:I = 0x2

.field private static final SERVICE_CONNECTING:I = 0x1

.field private static final SERVICE_DISCONNECTED:I = 0x0

.field private static final SERVICE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final mServiceUnbind:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

.field private static sContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static volatile sLoaderService:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

.field private static final sNoRetry:[J

.field private static final sRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sServiceConnection:Landroid/content/ServiceConnection;

.field private static final sServiceConnectionState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sServiceStateDebugName:[Ljava/lang/String;


# instance fields
.field private final mDiskSavingKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

.field private mRemoteDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

.field private final mRetries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;",
            "[J>;"
        }
    .end annotation
.end field

.field private mUriDispatcher:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtWork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->FULL_TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceConnectionState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SERVICE_DISCONNECTED"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "SERVICE_CONNECTING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SERVICE_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SERVICE_DISCONNECTING"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceStateDebugName:[Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    const-string v0, "Unbind service"

    const/16 v1, 0x3a98

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$1;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$1;-><init>()V

    .line 88
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->createTimer(Ljava/lang/String;ILjava/lang/Runnable;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mServiceUnbind:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    .line 111
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceConnection:Landroid/content/ServiceConnection;

    .line 131
    new-array v0, v3, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sNoRetry:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mRetries:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mDiskSavingKeys:Ljava/util/Set;

    .line 133
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 40
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getStateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceConnectionState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->doUnbindService()V

    return-void
.end method

.method static synthetic access$400()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mServiceUnbind:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->FULL_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    .prologue
    .line 40
    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sLoaderService:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    return-object p0
.end method

.method public static addToDiskCache(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->ensureConnection(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    move-result-object v1

    .line 154
    .local v1, "loader":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;
    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;->addToDiskCache(Landroid/net/Uri;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->FULL_TAG:Ljava/lang/String;

    const-string v3, "addToDiskCache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static clearDiskCache(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->ensureConnection(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    move-result-object v1

    .line 165
    .local v1, "loader":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;
    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;->clearDiskCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->FULL_TAG:Ljava/lang/String;

    const-string v3, "clearDiskCache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static doBindService()V
    .locals 4

    .prologue
    .line 511
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 514
    return-void
.end method

.method private doInit(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;)V
    .locals 4
    .param p1, "settings"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    .prologue
    const/4 v3, 0x0

    .line 210
    const-string v1, "ArtWork"

    const-string v2, "SyncServiceArtworkLoader initialization"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;-><init>()V

    .line 212
    .local v0, "defaultLoader":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mUriDispatcher:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    .line 213
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mRetries:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sNoRetry:[J

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->remoteDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "ArtWork"

    const-string v2, "SyncServiceArtworkLoader allocate remote disk cache"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->remoteDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mRemoteDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    .line 220
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->localDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    const-string v1, "ArtWork"

    const-string v2, "SyncServiceArtworkLoader allocate local disk cache"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->localDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mLocalDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    .line 226
    :goto_1
    return-void

    .line 218
    :cond_0
    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mRemoteDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    goto :goto_0

    .line 224
    :cond_1
    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mLocalDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    goto :goto_1
.end method

.method private static doUnbindService()V
    .locals 3

    .prologue
    .line 103
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->FULL_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 105
    return-void
.end method

.method private static ensureConnection(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0xa

    const/4 v6, 0x2

    .line 456
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->ensureContext(Landroid/content/Context;)V

    .line 457
    const/4 v1, -0x1

    .line 458
    .local v1, "lastIterationServiceConnectionState":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_3

    .line 459
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceConnectionState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 460
    .local v2, "serviceConnectionState":I
    if-eq v2, v6, :cond_0

    if-eq v1, v2, :cond_0

    .line 462
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->FULL_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ensureConnection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getStateName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 484
    :pswitch_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sLoaderService:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    return-object v3

    .line 467
    :pswitch_1
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceConnectionState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    .line 468
    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 469
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->FULL_TAG:Ljava/lang/String;

    const-string v4, "connecting to service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->isUiThread()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "This method can\'t be called from UI thread"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->doBindService()V

    .line 477
    :cond_2
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 486
    :goto_1
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceConnectionState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :pswitch_2
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 489
    .end local v2    # "serviceConnectionState":I
    :cond_3
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceConnectionState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 490
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceConnectionState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException;-><init>(II)V

    throw v3

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static ensureContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 495
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sContext:Landroid/content/Context;

    .line 498
    :cond_0
    return-void
.end method

.method private getDiskCache(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I

    .prologue
    .line 533
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->isRemoteUri(Landroid/net/Uri;)Z

    move-result v0

    .line 534
    .local v0, "isRemote":Z
    if-eqz v0, :cond_0

    .line 535
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mRemoteDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    .line 537
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mLocalDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$SyncServiceArtworkLoaderHolder;->sInstance:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    return-object v0
.end method

.method private getLoader(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mUriDispatcher:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->getLoader(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v0

    return-object v0
.end method

.method static getOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 522
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 523
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 524
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 525
    return-object v0
.end method

.method private static getStateName(I)Ljava/lang/String;
    .locals 3
    .param p0, "serviceConnectionState"    # I

    .prologue
    .line 502
    if-ltz p0, :cond_0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceStateDebugName:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 503
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sServiceStateDebugName:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 507
    .local v0, "stateName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 505
    .end local v0    # "stateName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "stateName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static init(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;)V
    .locals 1
    .param p0, "settings"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    .prologue
    .line 229
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->doInit(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;)V

    .line 230
    return-void
.end method

.method private static isUiThread()Z
    .locals 4

    .prologue
    .line 517
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadArtwork(Landroid/content/Context;Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "size"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 430
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->ensureConnection(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    move-result-object v1

    .line 431
    .local v1, "loader":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 433
    if-eqz v1, :cond_2

    .line 434
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;->loadArtwork(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v2

    .line 437
    .local v2, "result":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    if-nez v2, :cond_0

    .line 438
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->Empty:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    .line 449
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mServiceUnbind:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->schedule()V

    .line 452
    .end local v2    # "result":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    :cond_1
    :goto_0
    return-object v2

    .line 445
    :cond_2
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_3

    .line 449
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mServiceUnbind:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->schedule()V

    .line 452
    :cond_3
    :goto_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->Empty:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->FULL_TAG:Ljava/lang/String;

    const-string v4, "loadArtwork"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_3

    .line 449
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mServiceUnbind:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->schedule()V

    goto :goto_1

    .line 445
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->sRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_4

    .line 449
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mServiceUnbind:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->schedule()V

    :cond_4
    throw v3
.end method

.method private loadFromDiskCache(Landroid/content/Context;Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getDiskCache(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object v0

    .line 387
    .local v0, "diskCache":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;
    if-nez v0, :cond_0

    .line 388
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->Empty:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    .line 390
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->getExactOrBigger(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v1

    goto :goto_0
.end method

.method public static removeFromDiskCache(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I

    .prologue
    .line 174
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->ensureConnection(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    move-result-object v1

    .line 176
    .local v1, "loader":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;
    if-eqz v1, :cond_0

    .line 177
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;->removeFromDiskCache(Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->FULL_TAG:Ljava/lang/String;

    const-string/jumbo v3, "removeFromDiskCache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private scheduleDiskSaveRequestIfNecessary(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I
    .param p4, "res"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    .prologue
    .line 327
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->isDiskCacheUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getDiskCache(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 329
    .local v0, "cacheable":Z
    :goto_0
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_3

    .line 330
    :cond_0
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->deleteTempFile()V

    .line 357
    :cond_1
    :goto_1
    return-void

    .line 328
    .end local v0    # "cacheable":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    .restart local v0    # "cacheable":Z
    :cond_3
    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v1

    .line 346
    .local v1, "key":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mDiskSavingKeys:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 348
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;

    .line 349
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->getCurSize()I

    move-result v4

    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;ILjava/io/File;)V

    .line 348
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->sendRequest(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    goto :goto_1

    .line 351
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->sendRequest(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    goto :goto_1
.end method


# virtual methods
.method public getServiceArtworkLoadingResult(Landroid/content/Context;Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 362
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getLoader(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v0

    .line 363
    .local v0, "loader":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mRetries:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    .line 364
    .local v5, "retryPolicy":[J
    const/4 v3, 0x0

    .line 367
    .local v3, "retryIndex":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 369
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->loadArtwork(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v2

    .line 370
    .local v2, "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->hasImage()Z

    move-result v8

    if-nez v8, :cond_0

    array-length v8, v5

    if-lt v3, v8, :cond_1

    .line 381
    :cond_0
    return-object v2

    .line 373
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "retryIndex":I
    .local v4, "retryIndex":I
    aget-wide v6, v5, v3

    .line 379
    .local v6, "sleepTimeout":J
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    move v3, v4

    .line 380
    .end local v4    # "retryIndex":I
    .restart local v3    # "retryIndex":I
    goto :goto_0
.end method

.method public putToDiskCache(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 411
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mDiskSavingKeys:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 412
    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    iget v2, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getDiskCache(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object v0

    .line 413
    .local v0, "diskCache":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 414
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->put(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V

    .line 416
    :cond_0
    return-void
.end method

.method public putToDiskCache(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 403
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mDiskSavingKeys:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    iget v2, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getDiskCache(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object v0

    .line 405
    .local v0, "diskCache":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 406
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->put(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;)V

    .line 408
    :cond_0
    return-void
.end method

.method public registerArtworkLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V
    .locals 1
    .param p1, "serviceArtworkLoader"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    .param p2, "retryDelay"    # [J

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mUriDispatcher:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->registerLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mRetries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-void
.end method

.method serviceAddToDiskCache(Landroid/net/Uri;ILjava/io/File;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getDiskCache(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object v0

    .line 145
    .local v0, "diskCache":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;
    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->put(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;)V

    .line 149
    :cond_0
    return-void
.end method

.method public serviceClearDiskCache(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mRemoteDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mRemoteDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->clearCache(Landroid/content/Context;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mLocalDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->mLocalDiskCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->clearCache(Landroid/content/Context;)V

    .line 191
    :cond_1
    return-void
.end method

.method serviceLoadArtwork(Landroid/content/Context;Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I

    .prologue
    .line 304
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->loadFromDiskCache(Landroid/content/Context;Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v1

    .line 306
    .local v1, "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    if-nez v1, :cond_0

    .line 307
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->Empty:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    .line 322
    :goto_0
    return-object v2

    .line 309
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serviceLoadArtwork() uri = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], size = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] found in disk cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 312
    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getServiceArtworkLoadingResult(Landroid/content/Context;Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v1

    .line 315
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->scheduleDiskSaveRequestIfNecessary(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v1

    .line 322
    goto :goto_0

    .line 316
    .end local v1    # "res":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 318
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "serviceLoadArtwork"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    throw v0
.end method

.method public serviceRemoveFromDiskCache(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I

    .prologue
    .line 194
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getDiskCache(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object v0

    .line 195
    .local v0, "diskCache":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->removeFromDiskCache(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 198
    :cond_0
    return-void
.end method
