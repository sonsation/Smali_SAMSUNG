.class public abstract Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.super Ljava/lang/Object;
.source "AbsCocktailBarStatePolicy.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
    }
.end annotation


# static fields
.field private static final IDLE_THREAD_LIFE_TIME_IN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailBarStateHandler:Landroid/os/Handler;

.field private mCocktailBarStateThread:Landroid/os/HandlerThread;

.field protected mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

.field private final mLock:Ljava/lang/Object;

.field private final mLockMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

.field protected mWindowType:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->quitHandlerThread()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 30
    const/4 v1, 0x2

    .line 29
    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .line 40
    return-void
.end method

.method private createHandlerThreadLocked()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CocktailBarVisibility"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    .line 54
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 48
    :cond_0
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private enqueueMessageLocked(Landroid/os/Message;JZ)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delay"    # J
    .param p4, "isReplaced"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->createHandlerThreadLocked()V

    .line 88
    if-eqz p4, :cond_0

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->removeQueuedMessageLocked(I)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    invoke-direct {p0, p2, p3}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->updateThreadExpireTimeLocked(J)V

    .line 86
    :cond_1
    return-void
.end method

.method private findModeLock(I)Landroid/util/SparseBooleanArray;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 238
    .local v0, "modeLock":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    .line 239
    new-instance v0, Landroid/util/SparseBooleanArray;

    .end local v0    # "modeLock":Landroid/util/SparseBooleanArray;
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 240
    .restart local v0    # "modeLock":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    :cond_0
    return-object v0
.end method

.method private hasQueuedMessageLocked(I)Z
    .locals 1
    .param p1, "messageWhat"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private quitHandlerThread()V
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeQueuedMessageLocked(I)V
    .locals 1
    .param p1, "messageWhat"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    :cond_0
    return-void
.end method

.method private updateThreadExpireTimeLocked(J)V
    .locals 4
    .param p1, "delay"    # J

    .prologue
    const/16 v1, 0x65

    .line 99
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    .line 101
    const-wide/16 v2, 0x1388

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 98
    return-void
.end method


# virtual methods
.method protected cancelHideTimer()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    const/16 v1, 0x64

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->removeQueuedMessageLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 289
    return-void

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected clearMessageChangeVisibility()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    const/16 v1, 0x34

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->removeQueuedMessageLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 275
    return-void

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected clearMessageUpdateStateFromSystemDelayed()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    const/4 v1, 0x5

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->removeQueuedMessageLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 254
    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    const-string v0, ""

    .line 227
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[LockState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CocktailBarWindowType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WindowType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    return-object v0
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    return-object v0
.end method

.method public getLockState()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    return v0
.end method

.method public getWindowType()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    return v0
.end method

.method public abstract handleChangeVisibility(I)V
.end method

.method public abstract handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
.end method

.method public abstract handleNotifyState(I)V
.end method

.method public abstract handleRefreshState()V
.end method

.method public abstract handleUpdateActivate(Z)V
.end method

.method public abstract handleUpdateCocktailBarWindowType(ILjava/lang/String;)V
.end method

.method public abstract handleUpdatePosition(I)V
.end method

.method public abstract handleUpdateState(ZZ)V
.end method

.method public abstract handleUpdateStateFromSystem(IZ)V
.end method

.method public abstract handleUpdateVisibility(I)V
.end method

.method protected hasMessageUpdateStateFromSystemDelayed()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    const/4 v1, 0x5

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->hasQueuedMessageLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public notifyStateToBinder(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 160
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x33

    iput v1, v0, Landroid/os/Message;->what:I

    .line 162
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 163
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 158
    return-void

    .line 159
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected refreshHideTimer(I)Z
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    const/16 v0, 0x64

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->hasQueuedMessageLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->cancelHideTimer()V

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->startHideTimer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public refreshState()V
    .locals 6

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x32

    iput v1, v0, Landroid/os/Message;->what:I

    .line 153
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 149
    return-void

    .line 150
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected sendMessageChangeVisibility(IJ)V
    .locals 4
    .param p1, "visibility"    # I
    .param p2, "delayMills"    # J

    .prologue
    .line 267
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 268
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 269
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x34

    iput v1, v0, Landroid/os/Message;->what:I

    .line 270
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 271
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 266
    return-void

    .line 267
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected sendMessageUpdateStateFromSystemDelayed(IJ)V
    .locals 4
    .param p1, "windowType"    # I
    .param p2, "delayMills"    # J

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 247
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 249
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 250
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 245
    return-void

    .line 246
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setLockState(IZ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "flagOn"    # Z

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->setLockState(IZI)V

    .line 178
    return-void
.end method

.method public setLockState(IZI)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "flagOn"    # Z
    .param p3, "id"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->findModeLock(I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 185
    .local v0, "modeLock":Landroid/util/SparseBooleanArray;
    if-eqz p2, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    or-int/2addr v2, p1

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 190
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 192
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    not-int v3, p1

    and-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    goto :goto_0
.end method

.method protected startHideTimer(I)V
    .locals 6
    .param p1, "duration"    # I

    .prologue
    .line 282
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 285
    int-to-long v4, p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 281
    return-void

    .line 282
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateActivate(Z)V
    .locals 6
    .param p1, "activate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 205
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 206
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 207
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0x31

    iput v3, v0, Landroid/os/Message;->what:I

    .line 208
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 209
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 204
    return-void

    .line 208
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 205
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateCocktailBarWindowType(ILjava/lang/String;)V
    .locals 6
    .param p1, "windowType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 216
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 218
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 219
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 214
    return-void

    .line 215
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updatePosition(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 131
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 132
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 133
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 128
    return-void

    .line 129
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateState(ZZ)V
    .locals 5
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 139
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 140
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 142
    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 143
    if-eqz p2, :cond_1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 144
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 138
    return-void

    :cond_0
    move v3, v2

    .line 142
    goto :goto_0

    :cond_1
    move v1, v2

    .line 143
    goto :goto_1

    .line 139
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public updateStateFromSystem(I)V
    .locals 6
    .param p1, "windowType"    # I

    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 120
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 122
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 123
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 118
    return-void

    .line 119
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 80
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 81
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 82
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 77
    return-void

    .line 78
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
