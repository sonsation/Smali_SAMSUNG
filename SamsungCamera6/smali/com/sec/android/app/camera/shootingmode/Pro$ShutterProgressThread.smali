.class public Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;
.super Ljava/lang/Thread;
.source "Pro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Pro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShutterProgressThread"
.end annotation


# instance fields
.field private mIsStop:Z

.field private mSleepTimeMillis:J

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Pro;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;J)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    const-string v0, "ShutterProgressThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mIsStop:Z

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->setPriority(I)V

    iput-wide p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isStopping()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->setSleepTimeMillis(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->stopThread()V

    return-void
.end method

.method private getSleepTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    return-wide v0
.end method

.method private isStopping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mIsStop:Z

    return v0
.end method

.method private setSleepTimeMillis(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    return-void
.end method

.method private stopThread()V
    .locals 2

    const-string v0, "Pro"

    const-string v1, "stopThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mIsStop:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->interrupt()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->runShutterProgress(J)V

    return-void
.end method
