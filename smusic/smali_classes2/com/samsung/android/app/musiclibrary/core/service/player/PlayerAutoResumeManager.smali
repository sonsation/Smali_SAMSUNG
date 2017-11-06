.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;
.super Ljava/lang/Object;
.source "PlayerAutoResumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$OnPlayerErrorHandleListener;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SV-AutoResume"


# instance fields
.field private mAudioFocusLossTransientTime:J

.field private final mErrorHandler:Landroid/os/Handler;

.field private mErrorTime:J

.field private mIsErrorNeedToAutoPlay:Z

.field private mNeedToAutoPlay:Z

.field private mOnPlayerErrorHandleListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$OnPlayerErrorHandleListener;

.field private mSeekPosition:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mAudioFocusLossTransientTime:J

    .line 39
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorTime:J

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mSeekPosition:J

    .line 43
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mIsErrorNeedToAutoPlay:Z

    .line 45
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mNeedToAutoPlay:Z

    .line 145
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mAudioFocusLossTransientTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$OnPlayerErrorHandleListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mOnPlayerErrorHandleListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$OnPlayerErrorHandleListener;

    return-object v0
.end method

.method private handlePlayerError(IIZ)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .param p3, "delay"    # Z

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 96
    if-eqz p3, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorHandler:Landroid/os/Handler;

    .line 98
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mAudioFocusLossTransientTime:J

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorTime:J

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mIsErrorNeedToAutoPlay:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mNeedToAutoPlay:Z

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    const-string v0, "SV-AutoResume"

    const-string v1, "clear() is finished"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPosition()J
    .locals 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mSeekPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHandlingPlayerError()Z
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mIsErrorNeedToAutoPlay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNeedToAutoPlay()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mIsErrorNeedToAutoPlay:Z

    if-nez v2, :cond_1

    .line 121
    const-string v1, "SV-AutoResume"

    const-string v2, "isNeedToAutoPlay() - it\'s not NETWORK_IS_NOT_AVAILABLE case. ignore this."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 125
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mNeedToAutoPlay:Z

    if-nez v2, :cond_2

    .line 126
    const-string v1, "SV-AutoResume"

    const-string v2, "isNeedToAutoPlay() - no need to auto play."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_2
    :try_start_2
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mAudioFocusLossTransientTime:J

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 131
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mAudioFocusLossTransientTime:J

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    .line 132
    goto :goto_0

    :cond_3
    move v0, v1

    .line 136
    goto :goto_0
.end method

.method public declared-synchronized resetPosition()V
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mSeekPosition:J

    .line 63
    const-string v0, "SV-AutoResume"

    const-string/jumbo v1, "resetPosition() is finished"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioFocusLossTransient(JZ)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "wasPlaying"    # Z

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mAudioFocusLossTransientTime:J

    .line 106
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 108
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mNeedToAutoPlay:Z

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    const-string v0, "SV-AutoResume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAudioFocusLossTransient() time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wasPlaying? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mNeedToAutoPlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnPlayerErrorHandleListener(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$OnPlayerErrorHandleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$OnPlayerErrorHandleListener;

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mOnPlayerErrorHandleListener:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager$OnPlayerErrorHandleListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPlayerError(IIJJZ)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .param p3, "time"    # J
    .param p5, "seekPosition"    # J
    .param p7, "wasPlaying"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    monitor-enter p0

    const/16 v2, -0x2bc

    if-ne p1, v2, :cond_0

    const/16 v2, -0xd

    if-ne p2, v2, :cond_0

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mIsErrorNeedToAutoPlay:Z

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mIsErrorNeedToAutoPlay:Z

    if-nez v0, :cond_1

    .line 75
    const-string v0, "SV-AutoResume"

    const-string/jumbo v1, "setPlayerError() - it\'s not NETWORK_IS_NOT_AVAILABLE case. ignore this."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->handlePlayerError(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    move v0, v1

    .line 72
    goto :goto_0

    .line 80
    :cond_1
    :try_start_1
    iput-wide p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mSeekPosition:J

    .line 81
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorTime:J

    .line 82
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mAudioFocusLossTransientTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 84
    iput-boolean p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mNeedToAutoPlay:Z

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->handlePlayerError(IIZ)V

    .line 90
    :goto_2
    const-string v0, "SV-AutoResume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlayerError() what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seekPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wasPlaying? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mNeedToAutoPlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->mErrorHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
