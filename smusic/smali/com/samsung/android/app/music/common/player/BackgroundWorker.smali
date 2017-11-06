.class public Lcom/samsung/android/app/music/common/player/BackgroundWorker;
.super Ljava/lang/Object;
.source "BackgroundWorker.java"


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "PlayerBackGroundWorker"


# instance fields
.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/BackgroundWorker;->start()V

    .line 22
    return-void
.end method

.method private start()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PlayerBackGroundWorker"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/BackgroundWorker;->mThread:Landroid/os/HandlerThread;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/BackgroundWorker;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/BackgroundWorker;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/BackgroundWorker;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 38
    return-void
.end method

.method public sleep(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 30
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/HandlerThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
