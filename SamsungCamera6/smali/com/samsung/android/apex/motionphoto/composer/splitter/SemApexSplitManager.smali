.class public Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;
.super Ljava/lang/Object;
.source "SemApexSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;,
        Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$WorkerComparator;,
        Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;,
        Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field static ERROR:Z = false

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MAXIMUM_POOL_SIZE:I = 0x8

.field private static NUMBER_OF_CORES:I = 0x0

.field public static final TAG:Ljava/lang/String;

.field static final TASK_COMPLETE:I = 0x6

.field private static currentTime:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static priority:I

.field private static sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

.field private static sTimeOutSec:I


# instance fields
.field private final mFilePathQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

.field private final mSplitThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mSplitWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

.field private mStateCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;

.field private final mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->ERROR:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->NUMBER_OF_CORES:I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->currentTime:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    const/16 v0, 0xa

    sput v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sTimeOutSec:I

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;-><init>()V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0x14

    new-instance v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$WorkerComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$WorkerComparator;-><init>(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$1;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const/16 v3, 0x8

    const-wide/16 v4, 0x1

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    return-void
.end method

.method public static clearError()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->ERROR:Z

    return-void
.end method

.method public static clearFilePathQueue(Landroid/app/Application;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear queue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v3, v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v1, v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager;->removeSefFileType(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v1, v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    return-void
.end method

.method private static convertTimestamps(Ljava/util/List;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;",
            ">;)[J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [J

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getTimestamp()J

    move-result-wide v4

    aput-wide v4, v3, v2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getTimestamp()J

    move-result-wide v6

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getTimestamp()J

    move-result-wide v4

    sub-long v0, v6, v4

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, v3, v4

    sub-long/2addr v4, v0

    aput-wide v4, v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method private static getDuration(Ljava/lang/String;)J
    .locals 8

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v0

    return-wide v6

    :catch_0
    move-exception v3

    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v6, "duration is not number"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    return-object v0
.end method

.method private static isTempFileValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nextId()Ljava/lang/Long;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->currentTime:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->currentTime:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public static queueFilePath(JLjava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->ERROR:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v2, "already error state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v1, v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->NUMBER_OF_CORES:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    :goto_1
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v1, v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    new-instance v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v2, "fail to offer filePathQueue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v1, v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    goto :goto_1
.end method

.method public static startSplit(Ljava/lang/String;Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->nextId()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "startSplit : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "data list is null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->convertTimestamps(Ljava/util/List;)[J

    move-result-object v10

    if-nez v10, :cond_2

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "startSplit : error state remove temp file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "fail to delete Temp File"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v11, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    move-object/from16 v0, p0

    invoke-direct {v11, v8, v9, v0, v10}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;-><init>(JLjava/lang/String;[J)V

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v15, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_a

    if-nez v5, :cond_4

    :try_start_0
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "poll path queue"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    move-object/from16 v17, v0

    int-to-long v0, v15

    move-wide/from16 v18, v0

    sget-object v20, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v17 .. v20}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;

    move-object v5, v0

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "end poll : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v5, :cond_5

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "error : polling filepath failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    invoke-virtual {v11}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->checkSplitComplete()V

    add-int/lit8 v6, v6, 0x1

    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "use previous file path"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_1
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dequeue filepath : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getId()J

    move-result-wide v18

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getId()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-lez v17, :cond_6

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "passing filepath"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->handleMakeMotionPhotoFail(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getId()J

    move-result-wide v18

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getId()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-gez v17, :cond_7

    sget-object v18, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "skip cuz no file path matched with id: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getId()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->checkSplitComplete()V

    add-int/lit8 v6, v6, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ne v6, v0, :cond_3

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/concurrent/BlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/apex/motionphoto/common/SemApexUtils;->isValidFilePath(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "cancel case"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->handleMakeMotionPhotoFail(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->checkSplitComplete()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_8
    sget-boolean v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->ERROR:Z

    if-eqz v17, :cond_9

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "error case"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->handleMakeMotionPhotoFail(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->checkSplitComplete()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_9
    new-instance v16, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;

    sget v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->priority:I

    add-int/lit8 v18, v17, 0x1

    sput v18, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->priority:I

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v11, v6, v2}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;-><init>(ILcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;ILjava/lang/String;)V

    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_a
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "end startSplit : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public debugInfo()V
    .locals 8

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remain task : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remain filepath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getFilePathQueueCount()I
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v0

    return v0
.end method

.method public handleMakeMotionPhotoFail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;->onMakeFail(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMakeMotionPhotoSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;->onMakeSuccess(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleTaskComplete(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mStateCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mStateCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;->taskComplete(J)V

    :cond_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task Complete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->releaseTask()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->removeTask(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;)V

    return-void
.end method

.method removeTask(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setServiceCallback(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

    return-void
.end method

.method public setStateCallback(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mStateCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;

    return-void
.end method
