.class Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;
.super Landroid/os/Handler;
.source "StopServiceHandler.java"


# static fields
.field private static final LIFE_CYCLE_TAG:Ljava/lang/String; = "LifeCycle: "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final STOP_EXPLICIT:I = 0x7530

.field private static final STOP_IDLE:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private final mServiceWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mServiceWeakReference:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method

.method private requestEmptyMessageDelayed(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 45
    const-string v0, "SMUSIC-SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeCycle: StopServiceMessageHandler requestMessageDelayed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->clearRequest()V

    .line 48
    const/4 v0, 0x0

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 49
    return-void
.end method


# virtual methods
.method clearRequest()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mServiceWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .line 58
    .local v0, "s":Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->delayedStopService()V

    goto :goto_0
.end method

.method requestStopService()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestEmptyMessageDelayed(I)V

    .line 38
    return-void
.end method

.method requestStopServiceInIdle()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x1d4c0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestEmptyMessageDelayed(I)V

    .line 42
    return-void
.end method
