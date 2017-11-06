.class public Lcom/devbrackets/android/exomedia/util/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;,
        Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;
    }
.end annotation


# instance fields
.field private currentTime:J

.field private delayedHandler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private volatile isRunning:Z

.field private listener:Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;

.field private startTime:J

.field private storedTime:J

.field private tickDelay:I

.field private tickRunnable:Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

.field private useHandlerThread:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>(Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "processOnStartingThread"    # Z

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning:Z

    .line 33
    const/16 v0, 0x21

    iput v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickDelay:I

    .line 37
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->useHandlerThread:Z

    .line 40
    new-instance v0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;-><init>(Lcom/devbrackets/android/exomedia/util/StopWatch;Lcom/devbrackets/android/exomedia/util/StopWatch$1;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickRunnable:Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    .line 42
    iput-wide v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->startTime:J

    .line 43
    iput-wide v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    .line 44
    iput-wide v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    .line 54
    if-eqz p1, :cond_0

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->useHandlerThread:Z

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/devbrackets/android/exomedia/util/StopWatch;)J
    .locals 2
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/StopWatch;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/devbrackets/android/exomedia/util/StopWatch;J)J
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/StopWatch;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/devbrackets/android/exomedia/util/StopWatch;)J
    .locals 2
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/StopWatch;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->startTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/devbrackets/android/exomedia/util/StopWatch;)Z
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/StopWatch;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning:Z

    return v0
.end method

.method static synthetic access$400(Lcom/devbrackets/android/exomedia/util/StopWatch;)Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/StopWatch;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->listener:Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/devbrackets/android/exomedia/util/StopWatch;)J
    .locals 2
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/StopWatch;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/devbrackets/android/exomedia/util/StopWatch;)Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/StopWatch;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickRunnable:Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/devbrackets/android/exomedia/util/StopWatch;)I
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/StopWatch;

    .prologue
    .line 28
    iget v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickDelay:I

    return v0
.end method

.method static synthetic access$800(Lcom/devbrackets/android/exomedia/util/StopWatch;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/StopWatch;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getTimeInt()I
    .locals 6

    .prologue
    .line 172
    iget-wide v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    iget-wide v4, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    add-long v0, v2, v4

    .line 173
    .local v0, "time":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v2, v0

    :goto_0
    return v2

    :cond_0
    const v2, 0x7fffffff

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning:Z

    return v0
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 121
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning:Z

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    .line 123
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    goto :goto_0
.end method
