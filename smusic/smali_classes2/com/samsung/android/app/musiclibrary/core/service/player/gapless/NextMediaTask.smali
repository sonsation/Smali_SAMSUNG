.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;
.super Ljava/lang/Object;
.source "NextMediaTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "NextTask: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"


# instance fields
.field private final mAudioSession:I

.field private final mContext:Landroid/content/Context;

.field private final mData:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field private mIsCancel:Z

.field private mIsPrepared:Z

.field private final mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

.field private final mMediaLock:Ljava/lang/Object;

.field private mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;ILcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .param p3, "audioSessionId"    # I
    .param p4, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mMediaLock:Ljava/lang/Object;

    .line 37
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    .line 39
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsPrepared:Z

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mContext:Landroid/content/Context;

    .line 50
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mAudioSession:I

    .line 51
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mData:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 52
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    .line 54
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mMediaLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method private releaseNextMediaPlayer()V
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mMediaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->reset()V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->release()V

    .line 109
    const-string/jumbo v0, "releaseNextMediaPlayer"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printLog(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mMediaLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 7
    .param p1, "next"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 121
    const-wide/16 v0, 0x0

    .line 125
    .local v0, "base":J
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 126
    .local v2, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->reset()V

    .line 127
    const/4 v4, 0x2

    invoke-interface {v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 133
    .local v3, "uri":Landroid/net/Uri;
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    if-eqz v4, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    if-nez v3, :cond_2

    .line 143
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    if-eqz v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    invoke-interface {v4, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V

    goto :goto_0

    .line 147
    :cond_2
    const-string v4, "error"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    invoke-interface {v4, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 158
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mAudioSession:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->setAudioSessionId(I)V

    .line 159
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 176
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->setDataSource(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Landroid/net/Uri;)V

    .line 184
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    if-nez v4, :cond_0

    .line 190
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->prepareAsync()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 90
    const-string v1, "cancel called"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printLog(Ljava/lang/String;)V

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mMediaLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mMediaLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 95
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->releaseNextMediaPlayer()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :goto_0
    return-void

    .line 95
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during cancel. Ignore all case of exception. Don\'t handle it. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mData:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->setNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 69
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mMediaLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsPrepared:Z

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mMediaLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in nextUri. Ignore all case of exception. Don\'t handle it. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printLog(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->releaseNextMediaPlayer()V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "Task end"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->printInfoLog(Ljava/lang/String;)V

    .line 87
    return-void

    .line 73
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mMediaLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 75
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mIsCancel:Z

    if-nez v1, :cond_1

    .line 76
    const-string v1, "SV-PlayerMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NextTask: NextMediaTask result  mNextMedia "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    invoke-interface {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;->onResult(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->mNextMedia:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .line 80
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method
