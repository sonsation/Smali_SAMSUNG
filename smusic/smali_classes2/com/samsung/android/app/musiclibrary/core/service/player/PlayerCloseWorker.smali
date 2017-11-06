.class final Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;
.super Ljava/lang/Object;
.source "PlayerCloseWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "CloseWorker: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"


# instance fields
.field private mIsReleased:Z

.field private final mPlayers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mPlayers:Ljava/util/Set;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    return-void
.end method

.method private getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 3

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mPlayers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaPlayer;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 93
    .local v1, "mp":Landroid/media/MediaPlayer;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 94
    monitor-exit p0

    .line 97
    .end local v1    # "mp":Landroid/media/MediaPlayer;
    :goto_0
    return-object v1

    .line 96
    :cond_0
    monitor-exit p0

    .line 97
    const/4 v1, 0x0

    goto :goto_0

    .line 96
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaPlayer;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloseWorker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloseWorker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method private release(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doWork player released "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseRemainPlayer()V
    .locals 1

    .prologue
    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 124
    .local v0, "mp":Landroid/media/MediaPlayer;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->release(Landroid/media/MediaPlayer;)V

    .line 125
    if-nez v0, :cond_0

    .line 126
    return-void
.end method

.method private waitWork()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    .line 78
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mPlayers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    if-nez v1, :cond_0

    .line 79
    const-string/jumbo v1, "waitWork"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 85
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method addWork(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "m"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 46
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addWork "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 52
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 53
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "addWork but worker is already released"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->release(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 69
    :cond_2
    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mPlayers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 72
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 59
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method isReleased()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    return v0
.end method

.method release()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "release"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 110
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 111
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->mIsReleased:Z

    if-nez v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->waitWork()V

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 114
    .local v0, "mp":Landroid/media/MediaPlayer;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->release(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 116
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->releaseRemainPlayer()V

    .line 117
    const-string/jumbo v1, "work finished"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->printInfoLog(Ljava/lang/String;)V

    .line 118
    return-void
.end method
