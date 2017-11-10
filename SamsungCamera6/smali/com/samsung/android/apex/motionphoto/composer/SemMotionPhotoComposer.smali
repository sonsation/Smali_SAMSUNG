.class public abstract Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
.super Ljava/lang/Object;
.source "SemMotionPhotoComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;,
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;,
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$ComposerHandler;,
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;,
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Factory;,
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mApiLevel:I

.field protected mClientId:Ljava/lang/String;

.field protected mCommandQueue:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mComposerHandler:Landroid/os/Handler;

.field protected mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mEnvironment:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;

.field protected mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

.field protected mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

.field protected mState:Lcom/samsung/android/apex/motionphoto/composer/State;

.field protected mToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;->None:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mEnvironment:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemMotionPhotoComposer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->INITIAL:Lcom/samsung/android/apex/motionphoto/composer/State;

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mContext:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$ComposerHandler;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$ComposerHandler;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mComposerHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore arleady released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->handleCommand(Lcom/samsung/android/apex/motionphoto/composer/State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method protected varargs checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p1, v3

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "should be in %s state, but current is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getApiLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mApiLevel:I

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSurface()Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public getToken()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mToken:I

    return v0
.end method

.method protected handleCommand(Lcom/samsung/android/apex/motionphoto/composer/State;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "handleCommand : ignore arleady released"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "can not handle command"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method handleError(IILandroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleError[%s]: what=%d, arg=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method handleInfo(IILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage[%s]: msg=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract isConnected()Z
.end method

.method public isLocal()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mEnvironment:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;->Local:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public varargs isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public isStopped()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "already released"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iput-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mContext:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mComposerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :cond_4
    iput-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mComposerHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method protected removeCommand(Lcom/samsung/android/apex/motionphoto/composer/State;I)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract setCallbackListener(Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;)V
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    return-void
.end method

.method public abstract setStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setStorePath(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract start(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract store()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
