.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;
.super Ljava/lang/Object;
.source "DiskUtils.java"


# static fields
.field public static final DIRECTORY_NAME_ALBUMS:Ljava/lang/String; = "albums"

.field public static final DIRECTORY_NAME_REMOTE_ALBUMS:Ljava/lang/String; = "remote-albums"

.field public static final DIRECTORY_NAME_TEMP_NETWORK_LOADER_PATH:Ljava/lang/String; = "-network-temp"

.field private static volatile sCacheDir:Ljava/io/File;

.field private static final sCacheDirLock:Ljava/lang/Object;

.field private static final sCacheLock:Ljava/lang/Object;

.field private static final sCachePathes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sExternalCacheDir:Ljava/io/File;

.field private static final sExternalCacheDirLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCachePathes:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCacheLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCacheDirLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sExternalCacheDirLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCacheDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCacheDir:Ljava/io/File;

    .line 65
    :goto_0
    return-object v0

    .line 60
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCacheDirLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCacheDir:Ljava/io/File;

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCacheDir:Ljava/io/File;

    .line 64
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCacheDir:Ljava/io/File;

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "directory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 37
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCachePathes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 39
    const-string v0, ""

    .line 40
    .local v0, "cachePath":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 41
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sCachePathes:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    .line 49
    return-object v1

    .line 42
    .restart local v0    # "cachePath":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    .end local v0    # "cachePath":Ljava/lang/String;
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sExternalCacheDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sExternalCacheDir:Ljava/io/File;

    .line 77
    :goto_0
    return-object v0

    .line 72
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sExternalCacheDirLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sExternalCacheDir:Ljava/io/File;

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sExternalCacheDir:Ljava/io/File;

    .line 76
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->sExternalCacheDir:Ljava/io/File;

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
