.class public Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;
.super Ljava/lang/Thread;
.source "ProLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/ProLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShutterProgressThread"
.end annotation


# instance fields
.field private mIsStop:Z

.field private mSleepTimeMillis:J

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/ProLite;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/ProLite;J)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->this$0:Lcom/sec/android/app/camera/shootingmode/ProLite;

    const-string v0, "ShutterProgressThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->mSleepTimeMillis:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->mIsStop:Z

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->setPriority(I)V

    iput-wide p2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->mSleepTimeMillis:J

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->isStopThread()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->setSleepTimeMillis(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->stopThread()V

    return-void
.end method

.method private getSleepTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->mSleepTimeMillis:J

    return-wide v0
.end method

.method private isStopThread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->mIsStop:Z

    return v0
.end method

.method private setSleepTimeMillis(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->mSleepTimeMillis:J

    return-void
.end method

.method private stopThread()V
    .locals 4

    const-string v1, "ProLite"

    const-string v2, "stopThread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->mIsStop:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ProLite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopThread : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->this$0:Lcom/sec/android/app/camera/shootingmode/ProLite;

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->mSleepTimeMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;->runShutterProgress(J)V

    return-void
.end method
