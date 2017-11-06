.class public final Lcom/samsung/android/app/music/service/drm/DrmServerManager;
.super Ljava/lang/Object;
.source "DrmServerManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFilePath:Ljava/lang/String;

.field private static final sInstance:Lcom/samsung/android/app/music/service/drm/DrmServerManager;


# instance fields
.field private volatile mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->sInstance:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static acquire(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-class v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v1

    .line 40
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->ensureServerInternal(Landroid/content/Context;)V

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->sInstance:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->acquireServer()V

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->sInstance:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createInternal(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->killServer()V

    .line 108
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    .line 112
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->TAG:Ljava/lang/String;

    const-string v3, "createInternal : Milk controller"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmController;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "controller":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "deviceKey":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-direct {v2, p1, p2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    .line 116
    return-void
.end method

.method private static ensureServerInternal(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->sInstance:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    .line 90
    .local v1, "m":Lcom/samsung/android/app/music/service/drm/DrmServerManager;
    iget-object v3, v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->createInternal(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    :cond_1
    iget-object v3, v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->getClientId()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "serverId":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "currentId":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->createInternal(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    :cond_2
    return-void
.end method

.method public static getClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string v0, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static killServer()V
    .locals 3

    .prologue
    .line 47
    const-class v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->sInstance:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->sInstance:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->killServer()V

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->sInstance:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    .line 52
    :cond_0
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static obtain(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v1

    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->ensureServerInternal(Landroid/content/Context;)V

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->sInstance:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->sInstance:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->acquireServer()V

    .line 34
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->sInstance:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 2
    .param p1, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .prologue
    .line 72
    const-class v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    .line 76
    :cond_0
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 63
    const-class v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v1

    .line 64
    :try_start_0
    sput-object p2, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->sFilePath:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->ensureServerInternal(Landroid/content/Context;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unacquire()V
    .locals 2

    .prologue
    .line 81
    const-class v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->unacquireServer()V

    .line 85
    :cond_0
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
