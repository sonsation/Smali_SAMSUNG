.class public final Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;
.super Ljava/lang/Object;
.source "MediaSessionUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaBrowser"

.field private static final TAG:Ljava/lang/String; = "com.sec.android.app.music.session.PlayControl"

.field private static sInstance:Landroid/media/session/MediaSession;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static declared-synchronized getSessionInstance(Landroid/content/Context;)Landroid/media/session/MediaSession;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/media/session/MediaSession;

    const-string v2, "com.sec.android.app.music.session.PlayControl"

    invoke-direct {v0, p0, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;

    .line 31
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releasePlayer()V
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 40
    :goto_0
    monitor-exit v1

    return-void

    .line 38
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setQueue(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    monitor-exit v1

    return-void

    .line 46
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->sInstance:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    .line 47
    const-string v0, "SMUSIC-SV-MediaBrowser"

    const-string v2, "Set a now playing queue"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
