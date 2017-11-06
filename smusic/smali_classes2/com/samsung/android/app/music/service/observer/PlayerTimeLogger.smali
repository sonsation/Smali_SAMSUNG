.class public abstract Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;
.super Ljava/lang/Object;
.source "PlayerTimeLogger.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;,
        Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;,
        Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnMediaChangeTimeEventObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String; = "PlayerTimeLogger"

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field private final mContainerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFutureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private mInit:Z

.field private final mObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnMediaChangeTimeEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "s"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mContainerMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mFutureMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mObservers:Ljava/util/Map;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mInit:Z

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    return-void
.end method

.method private addTime(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;)V
    .locals 5
    .param p1, "millisecond"    # J
    .param p3, "container"    # Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;

    .prologue
    .line 163
    invoke-virtual {p3}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v1, "SMUSIC-SV-MediaCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerTimeLogger addTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p3, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 168
    .local v0, "f":Ljava/util/concurrent/Future;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mFutureMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private calculateScheduleTime(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;J)J
    .locals 4
    .param p1, "musicPlaybackState"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .param p2, "targetTime"    # J

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    .line 173
    .local v0, "duration":J
    cmp-long v2, v0, p2

    if-gtz v2, :cond_0

    .line 175
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x2

    div-long p2, v0, v2

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v2

    sub-long v2, p2, v2

    long-to-float v2, v2

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlaySpeed()F

    move-result v3

    div-float/2addr v2, v3

    float-to-long v2, v2

    return-wide v2
.end method

.method private cancel()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mFutureMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 188
    .local v0, "f":Ljava/util/concurrent/Future;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 190
    .end local v0    # "f":Ljava/util/concurrent/Future;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mFutureMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 191
    return-void
.end method

.method private clearContainer()V
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mContainerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;

    .line 145
    .local v0, "container":Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->clear()V

    goto :goto_0

    .line 147
    .end local v0    # "container":Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mContainerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 148
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mInit:Z

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->cancel()V

    .line 184
    return-void
.end method

.method private notifyExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mObservers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 242
    .local v0, "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 244
    .end local v0    # "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    :cond_0
    return-void
.end method

.method private notifyMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mObservers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 223
    .local v0, "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    .line 225
    .end local v0    # "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    :cond_0
    return-void
.end method

.method private notifyPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 228
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mObservers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 229
    .local v0, "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 231
    .end local v0    # "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    :cond_0
    return-void
.end method

.method private notifyQueue(Ljava/util/List;Landroid/os/Bundle;)V
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
    .line 235
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mObservers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 236
    .local v0, "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 238
    .end local v0    # "o":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    :cond_0
    return-void
.end method

.method private setTime(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 8
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->cancel()V

    .line 152
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mInit:Z

    if-nez v1, :cond_1

    .line 160
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mContainerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 156
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 157
    .local v4, "time":J
    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->calculateScheduleTime(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;J)J

    move-result-wide v2

    .line 158
    .local v2, "target":J
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mContainerMap:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->addTime(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;)V

    goto :goto_0
.end method


# virtual methods
.method protected final addTimeEvent(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "l"    # Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mContainerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;

    .line 81
    .local v1, "r":Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;
    if-nez v1, :cond_0

    .line 82
    new-instance v0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;-><init>(Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$1;)V

    .line 83
    .local v0, "container":Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->addTimeListener(Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mContainerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v0    # "container":Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {v1, p3}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->addTimeListener(Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    goto :goto_0
.end method

.method protected final addTimeMediaObserver(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnMediaChangeTimeEventObserver;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "l"    # Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnMediaChangeTimeEventObserver;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mObservers:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->addTimeEvent(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    .line 69
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->notifyExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    const-string v0, "com.samsung.android.app.music.core.state.QUEUE_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->cancel()V

    .line 134
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 5
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->clearContainer()V

    .line 94
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mObservers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 95
    .local v0, "time":J
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mObservers:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->addTimeEvent(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    goto :goto_0

    .line 97
    .end local v0    # "time":J
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->notifyMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 98
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->cancel()V

    .line 100
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mInit:Z

    .line 104
    :goto_1
    return-void

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->init()V

    goto :goto_1
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->notifyPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->mInit:Z

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->cancel()V

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->setTime(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->cancel()V

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
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
    .line 124
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->notifyQueue(Ljava/util/List;Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public release()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->cancel()V

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->clearContainer()V

    .line 141
    return-void
.end method
