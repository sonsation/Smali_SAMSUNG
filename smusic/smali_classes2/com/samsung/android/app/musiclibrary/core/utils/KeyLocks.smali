.class public Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;
.super Ljava/lang/Object;
.source "KeyLocks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final AUTO_REMOVE_COUNTER:I = 0x40

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TKey;",
            "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final locksLock:Ljava/lang/Object;

.field private volatile mNextAutoRemove:I

.field private final mRequestDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "requestDuration"    # J

    .prologue
    .line 35
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;, "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks<TKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locksLock:Ljava/lang/Object;

    .line 33
    const/16 v0, 0x40

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mNextAutoRemove:I

    .line 36
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mRequestDuration:J

    .line 37
    return-void
.end method


# virtual methods
.method public lock(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;, "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks<TKey;>;"
    .local p1, "key":Ljava/lang/Object;, "TKey;"
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mRequestDuration:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->lock(Ljava/lang/Object;J)V

    .line 64
    return-void
.end method

.method public lock(Ljava/lang/Object;J)V
    .locals 4
    .param p2, "requestDuration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;J)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;, "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks<TKey;>;"
    .local p1, "key":Ljava/lang/Object;, "TKey;"
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locksLock:Ljava/lang/Object;

    monitor-enter v3

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    .line 50
    .local v0, "holder":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    .end local v0    # "holder":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    invoke-direct {v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;-><init>(J)V

    .line 52
    .restart local v0    # "holder":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    .line 55
    .local v1, "wasTryLock":Z
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->access$000(Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;)V

    .line 56
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-nez v1, :cond_1

    .line 58
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 60
    :cond_1
    return-void

    .line 56
    .end local v0    # "holder":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    .end local v1    # "wasTryLock":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public tryLock(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;, "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks<TKey;>;"
    .local p1, "key":Ljava/lang/Object;, "TKey;"
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mRequestDuration:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->tryLock(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public tryLock(Ljava/lang/Object;J)Z
    .locals 4
    .param p2, "requestDuration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;J)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;, "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks<TKey;>;"
    .local p1, "key":Ljava/lang/Object;, "TKey;"
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locksLock:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    .line 77
    .local v0, "holder":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    .end local v0    # "holder":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    invoke-direct {v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;-><init>(J)V

    .line 79
    .restart local v0    # "holder":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    .line 82
    .local v1, "res":Z
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->access$000(Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;)V

    .line 83
    monitor-exit v3

    .line 87
    return v1

    .line 83
    .end local v0    # "holder":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    .end local v1    # "res":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;, "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks<TKey;>;"
    .local p1, "key":Ljava/lang/Object;, "TKey;"
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locksLock:Ljava/lang/Object;

    monitor-enter v7

    .line 100
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    .line 101
    .local v1, "holder":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    iget-object v6, v1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->access$000(Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;)V

    .line 103
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mNextAutoRemove:I

    add-int/lit8 v8, v6, -0x1

    iput v8, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mNextAutoRemove:I

    if-gtz v6, :cond_3

    .line 107
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 108
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TKey;Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;>;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 109
    .local v4, "now":J
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    .local v0, "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TKey;Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    .line 112
    .local v3, "value":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->expired(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    iget-object v6, v3, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Lock for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is still locked after: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 116
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->getRequestDuration()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", check lock / unlock balance or increase timeout"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    .end local v0    # "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TKey;Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;>;"
    .end local v1    # "holder":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TKey;Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;>;>;"
    .end local v3    # "value":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    .end local v4    # "now":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 122
    .restart local v0    # "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TKey;Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;>;"
    .restart local v1    # "holder":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TKey;Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;>;>;"
    .restart local v3    # "value":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    .restart local v4    # "now":J
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 130
    .end local v0    # "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TKey;Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;>;"
    .end local v3    # "value":Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    :cond_2
    const/16 v6, 0x40

    iput v6, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mNextAutoRemove:I

    .line 132
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TKey;Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;>;>;"
    .end local v4    # "now":J
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    return-void
.end method
