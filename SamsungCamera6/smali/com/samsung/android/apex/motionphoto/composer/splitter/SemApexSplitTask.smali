.class public Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;
.super Ljava/lang/Object;
.source "SemApexSplitTask.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mId:J

.field private mSplitCompleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSplitManager:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

.field private mSplitTimeStamps:[J

.field private mTempFilePath:Ljava/lang/String;

.field start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;[J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "make Task : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->start:J

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mId:J

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mSplitManager:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mSplitCompleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mTempFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mSplitTimeStamps:[J

    return-void
.end method


# virtual methods
.method public declared-synchronized checkSplitComplete()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mSplitTimeStamps:[J

    array-length v3, v3

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mSplitCompleteCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-gt v3, v4, :cond_1

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : all worker job complete, remove tempfile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getTempFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/apex/motionphoto/common/SemApexUtils;->isValidFilePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->TAG:Ljava/lang/String;

    const-string v4, "fail to delete Temp File"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : total - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->start:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mSplitManager:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->handleTaskComplete(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->TAG:Ljava/lang/String;

    const-string v4, "temp file is not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mId:J

    return-wide v0
.end method

.method public getSplitTimestamp(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mSplitTimeStamps:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mTempFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public handleSplitState(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mSplitManager:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->handleMakeMotionPhotoFail(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->checkSplitComplete()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mSplitManager:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->handleMakeMotionPhotoSuccess(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->checkSplitComplete()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public releaseTask()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->mSplitManager:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    return-void
.end method
