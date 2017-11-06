.class final Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;
.super Ljava/lang/Object;
.source "CurrentMediaTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "CurrentMediaTask: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"


# instance fields
.field private final mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private mIsCancel:Z

.field private final mLock:Ljava/lang/Object;

.field private final mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;)V
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .param p2, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mLock:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;

    .line 33
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 6

    .prologue
    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    if-nez v0, :cond_0

    .line 42
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentMediaTask: Cancel to get playing id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 43
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->cancel()V

    .line 47
    :cond_0
    monitor-exit v1

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isRunning()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 52
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 53
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    if-eqz v1, :cond_0

    .line 54
    monitor-exit v2

    .line 67
    :goto_0
    return-void

    .line 56
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    const-string v1, "SV-PlayerMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentMediaTask: Trying to prepare playing id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 58
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 60
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "SV-PlayerMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentMediaTask: Playing uri Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 62
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    if-nez v1, :cond_1

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mIsCancel:Z

    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask;->mDataSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-interface {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 66
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 56
    .end local v0    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
