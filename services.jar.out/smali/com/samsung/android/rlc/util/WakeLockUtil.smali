.class public Lcom/samsung/android/rlc/util/WakeLockUtil;
.super Ljava/lang/Object;
.source "WakeLockUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PCWCLIENTTRACE_WakeLockUtil"

.field private static final WAKELOCK_TIMEOUT:I = 0xea60

.field private static final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final mLock:Ljava/lang/Object;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mLock:Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireWakeLock(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 20
    sget-object v1, Lcom/samsung/android/rlc/util/WakeLockUtil;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 31
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 32
    sget-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const-string/jumbo v2, "PCWCLIENTTRACE_WakeLockUtil"

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[WAKELOCK] pcw wakelock acquired : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    return-void

    :cond_0
    :try_start_2
    const-string/jumbo v0, "power"

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string/jumbo v3, "pcw wakelock"

    .line 24
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    sget-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v0, "PCWCLIENTTRACE_WakeLockUtil"

    const-string/jumbo v2, "[WAKELOCK] pcw wakelock created"

    .line 27
    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 37
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static releaseWakeLock()V
    .locals 5

    .prologue
    .line 43
    sget-object v1, Lcom/samsung/android/rlc/util/WakeLockUtil;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v0, "PCWCLIENTTRACE_WakeLockUtil"

    const-string/jumbo v2, "[WAKELOCK] pcw wakelock set null"

    .line 57
    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    return-void

    .line 46
    :cond_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 48
    sget-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 49
    if-eqz v0, :cond_2

    :goto_1
    const-string/jumbo v2, "PCWCLIENTTRACE_WakeLockUtil"

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[WAKELOCK] pcw wakelock released : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 62
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    const/4 v2, 0x0

    .line 50
    :try_start_4
    sput-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v2, "PCWCLIENTTRACE_WakeLockUtil"

    const-string/jumbo v3, "[WAKELOCK] pcw wakelock set null"

    .line 51
    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
