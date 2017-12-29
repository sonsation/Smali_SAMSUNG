.class Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;
.super Ljava/util/TimerTask;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallDurationTask"
.end annotation


# instance fields
.field private prevSecond:B

.field final synthetic this$0:Lcom/android/server/cover/NfcLedCoverController;


# direct methods
.method private constructor <init>(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1371
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    .line 1370
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cover/NfcLedCoverController;Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/cover/NfcLedCoverController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1378
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-get1(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1380
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-get0(Lcom/android/server/cover/NfcLedCoverController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1381
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-wrap0(Lcom/android/server/cover/NfcLedCoverController;)[B

    move-result-object v0

    .line 1382
    .local v0, "data":[B
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    iget-byte v2, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    if-eq v1, v2, :cond_1

    .line 1383
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/android/server/cover/NfcLedCoverController;->-wrap9(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    .line 1384
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-get2(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1385
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    .line 1391
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-wrap1(Lcom/android/server/cover/NfcLedCoverController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    .end local v0    # "data":[B
    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-get1(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1374
    return-void

    .line 1394
    :catchall_0
    move-exception v1

    .line 1395
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->-get1(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1394
    throw v1
.end method
