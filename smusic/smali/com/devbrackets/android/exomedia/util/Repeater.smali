.class public Lcom/devbrackets/android/exomedia/util/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;,
        Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;
    }
.end annotation


# instance fields
.field private delayedHandler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private listener:Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;

.field private pollRunnable:Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;

.field private repeatDelay:I

.field private volatile repeaterRunning:Z

.field private useHandlerThread:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>(Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "processOnStartingThread"    # Z

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->repeaterRunning:Z

    .line 33
    const/16 v0, 0x21

    iput v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->repeatDelay:I

    .line 37
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->useHandlerThread:Z

    .line 40
    new-instance v0, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;-><init>(Lcom/devbrackets/android/exomedia/util/Repeater;Lcom/devbrackets/android/exomedia/util/Repeater$1;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->pollRunnable:Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->delayedHandler:Landroid/os/Handler;

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->useHandlerThread:Z

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/devbrackets/android/exomedia/util/Repeater;)Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/Repeater;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->listener:Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/devbrackets/android/exomedia/util/Repeater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/Repeater;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->repeaterRunning:Z

    return v0
.end method

.method static synthetic access$300(Lcom/devbrackets/android/exomedia/util/Repeater;)Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/Repeater;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->pollRunnable:Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/devbrackets/android/exomedia/util/Repeater;)I
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/Repeater;

    .prologue
    .line 28
    iget v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->repeatDelay:I

    return v0
.end method

.method static synthetic access$500(Lcom/devbrackets/android/exomedia/util/Repeater;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/util/Repeater;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->delayedHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public setRepeatListener(Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->listener:Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;

    .line 127
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->repeaterRunning:Z

    if-nez v0, :cond_1

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->repeaterRunning:Z

    .line 90
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->useHandlerThread:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoMedia_Repeater_HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    .line 92
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->delayedHandler:Landroid/os/Handler;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->pollRunnable:Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;->performPoll()V

    .line 98
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->repeaterRunning:Z

    .line 109
    return-void
.end method
