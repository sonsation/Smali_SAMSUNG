.class public final Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;
.super Ljava/lang/Object;
.source "TimeBasedLogger.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# instance fields
.field private final mObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mObservers:Ljava/util/Set;

    .line 27
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mObservers:Ljava/util/Set;

    new-instance v1, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mObservers:Ljava/util/Set;

    new-instance v1, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mObservers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 58
    .local v0, "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 60
    .end local v0    # "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mObservers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 36
    .local v0, "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    .line 38
    .end local v0    # "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mObservers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 43
    .local v0, "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 45
    .end local v0    # "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mObservers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 51
    .local v0, "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 53
    .end local v0    # "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mObservers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;

    .line 65
    .local v0, "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;->release()V

    goto :goto_0

    .line 67
    .end local v0    # "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/TimeBasedLogger;->mObservers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 68
    return-void
.end method
