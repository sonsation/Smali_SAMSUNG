.class Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;
.source "SeslAsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->sInstance:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;

    .line 163
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->sInstance:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->start()V

    .line 164
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 159
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 170
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 171
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->mRequestPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->sInstance:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;

    return-object v0
.end method


# virtual methods
.method public enqueue(Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to enqueue async inflate request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public obtainRequest()Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->mRequestPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;

    .line 200
    .local v0, "obj":Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;

    .end local v0    # "obj":Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;
    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;-><init>()V

    .line 203
    .restart local v0    # "obj":Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;
    :cond_0
    return-object v0
.end method

.method public releaseRequest(Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;)V
    .locals 2
    .param p1, "obj"    # Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;

    .prologue
    const/4 v1, 0x0

    .line 207
    iput-object v1, p1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->callback:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$OnInflateFinishedListener;

    .line 208
    iput-object v1, p1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->inflater:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;

    .line 209
    iput-object v1, p1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    .line 210
    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->resid:I

    .line 211
    iput-object v1, p1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->mRequestPool:Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslPools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 178
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .local v1, "request":Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;
    :try_start_1
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->inflater:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    iget v3, v1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v4, v1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_1
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->inflater:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 179
    .end local v1    # "request":Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v2, "SeslAsyncLayoutInflater"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .restart local v1    # "request":Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SeslAsyncLayoutInflater"

    const-string v3, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
