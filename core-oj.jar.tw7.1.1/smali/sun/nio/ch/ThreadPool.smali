.class public Lsun/nio/ch/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/ThreadPool$1;,
        Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_POOL_INITIAL_SIZE:Ljava/lang/String; = "java.nio.channels.DefaultThreadPool.initialSize"

.field private static final DEFAULT_THREAD_POOL_THREAD_FACTORY:Ljava/lang/String; = "java.nio.channels.DefaultThreadPool.threadFactory"

.field private static final defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final isFixed:Z

.field private final poolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lsun/nio/ch/ThreadPool$1;

    invoke-direct {v0}, Lsun/nio/ch/ThreadPool$1;-><init>()V

    sput-object v0, Lsun/nio/ch/ThreadPool;->defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;ZI)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "isFixed"    # Z
    .param p3, "poolSize"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lsun/nio/ch/ThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    .line 65
    iput-boolean p2, p0, Lsun/nio/ch/ThreadPool;->isFixed:Z

    .line 66
    iput p3, p0, Lsun/nio/ch/ThreadPool;->poolSize:I

    .line 62
    return-void
.end method

.method static create(ILjava/util/concurrent/ThreadFactory;)Lsun/nio/ch/ThreadPool;
    .locals 3
    .param p0, "nThreads"    # I
    .param p1, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 115
    if-gtz p0, :cond_0

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'nThreads\' must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 118
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lsun/nio/ch/ThreadPool;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p0}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v1
.end method

.method static createDefault()Lsun/nio/ch/ThreadPool;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-static {}, Lsun/nio/ch/ThreadPool;->getDefaultThreadPoolInitialSize()I

    move-result v0

    .line 98
    .local v0, "initialSize":I
    if-gez v0, :cond_0

    .line 99
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 101
    :cond_0
    invoke-static {}, Lsun/nio/ch/ThreadPool;->getDefaultThreadPoolThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 102
    .local v8, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    if-nez v8, :cond_1

    .line 103
    sget-object v8, Lsun/nio/ch/ThreadPool;->defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 106
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 107
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 108
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 106
    const v3, 0x7fffffff

    .line 107
    const-wide v4, 0x7fffffffffffffffL

    .line 106
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 110
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Lsun/nio/ch/ThreadPool;

    invoke-direct {v3, v1, v2, v0}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v3
.end method

.method static defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lsun/nio/ch/ThreadPool;->defaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method static getDefault()Lsun/nio/ch/ThreadPool;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;->defaultThreadPool:Lsun/nio/ch/ThreadPool;

    return-object v0
.end method

.method private static getDefaultThreadPoolInitialSize()I
    .locals 5

    .prologue
    .line 145
    new-instance v2, Lsun/security/action/GetPropertyAction;

    .line 146
    const-string v3, "java.nio.channels.DefaultThreadPool.initialSize"

    .line 145
    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "propValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "x":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value of property \'java.nio.channels.DefaultThreadPool.initialSize\' is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v1    # "x":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method private static getDefaultThreadPoolThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 159
    new-instance v5, Lsun/security/action/GetPropertyAction;

    .line 160
    const-string v6, "java.nio.channels.DefaultThreadPool.threadFactory"

    .line 159
    invoke-direct {v5, v6}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    .local v1, "propValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 164
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    .line 163
    invoke-static {v1, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 165
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 170
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 171
    .local v3, "x":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 168
    .end local v3    # "x":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v4

    .line 169
    .local v4, "x":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v4}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 166
    .end local v4    # "x":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 167
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 174
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-object v7
.end method

.method public static wrap(Ljava/util/concurrent/ExecutorService;I)Lsun/nio/ch/ThreadPool;
    .locals 3
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "initialSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 123
    if-nez p0, :cond_0

    .line 124
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "\'executor\' is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    instance-of v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_3

    move-object v1, p0

    .line 127
    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    .line 128
    .local v0, "max":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 129
    if-gez p1, :cond_2

    .line 130
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    .line 141
    .end local v0    # "max":I
    :cond_1
    :goto_0
    new-instance v1, Lsun/nio/ch/ThreadPool;

    invoke-direct {v1, p0, v2, p1}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v1

    .line 133
    .restart local v0    # "max":I
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 138
    .end local v0    # "max":I
    :cond_3
    if-gez p1, :cond_1

    .line 139
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method executor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lsun/nio/ch/ThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method isFixedThreadPool()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lsun/nio/ch/ThreadPool;->isFixed:Z

    return v0
.end method

.method poolSize()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lsun/nio/ch/ThreadPool;->poolSize:I

    return v0
.end method
