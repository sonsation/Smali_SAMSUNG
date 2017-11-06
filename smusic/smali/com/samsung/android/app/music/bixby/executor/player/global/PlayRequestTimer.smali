.class public final Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;
.super Ljava/lang/Object;
.source "PlayRequestTimer.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WAITING_TIME:J = 0x1f40L


# instance fields
.field private mFuture:Ljava/util/concurrent/Future;

.field private mOnTimeOutCallback:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;)V
    .locals 1
    .param p1, "onTimeOutCallback"    # Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->mOnTimeOutCallback:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    .line 26
    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->mFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->mFuture:Ljava/util/concurrent/Future;

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->cancel()V

    .line 51
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->mOnTimeOutCallback:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->mOnTimeOutCallback:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;->onTimeOut()V

    .line 33
    :cond_0
    return-void
.end method

.method public setTime()V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->cancel()V

    .line 37
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setTime"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1f40

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->mFuture:Ljava/util/concurrent/Future;

    .line 39
    return-void
.end method
