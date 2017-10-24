.class public Lcom/android/server/enterprise/auditlog/LogWritter;
.super Ljava/lang/Object;
.source "LogWritter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;,
        Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;
    }
.end annotation


# instance fields
.field private mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

.field private mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/CircularBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/IObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    return-object v0
.end method

.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 46
    new-instance v0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;-><init>(Lcom/android/server/enterprise/auditlog/LogWritter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    .line 47
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->start()V

    .line 44
    return-void
.end method


# virtual methods
.method createBubbleDirectory()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->createBubbleDir()V

    .line 125
    return-void
.end method

.method createBubbleFile()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getBufferLogSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 129
    return-void
.end method

.method deleteAllFiles()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteAllFiles()V

    .line 93
    return-void
.end method

.method getBufferLogSize()J
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getBufferLogSize()J

    move-result-wide v0

    return-wide v0
.end method

.method getCriticalLogSize()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getCriticalLogSize()I

    move-result v0

    return v0
.end method

.method getCurrentLogFileSize()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getCurrentLogFileSize()I

    move-result v0

    return v0
.end method

.method getDumpFilesList()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getDumpFilesList()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getMaximumLogSize()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getMaximumLogSize()I

    move-result v0

    return v0
.end method

.method setBootCompleted(Z)V
    .locals 1
    .param p1, "boot"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setBootCompleted(Z)V

    .line 109
    return-void
.end method

.method setBufferLogSize(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setBufferLogSize(J)V

    .line 117
    return-void
.end method

.method setCriticalLogSize(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setCriticalLogSize(I)V

    .line 73
    return-void
.end method

.method setIsDumping(ZZ)V
    .locals 1
    .param p1, "dumping"    # Z
    .param p2, "result"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setIsDumping(ZZ)V

    .line 105
    return-void
.end method

.method setLastTimestamp()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getDumpFilesList()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 136
    .local v0, "dumpFilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setLastTimestamp(Ljava/util/ArrayList;)V

    .line 133
    return-void
.end method

.method setMaximumLogSize(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setMaximumLogSize(I)V

    .line 81
    return-void
.end method

.method setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/android/server/enterprise/auditlog/IObserver;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    .line 101
    return-void
.end method

.method setTypeOfDump(Z)V
    .locals 1
    .param p1, "isFull"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setTypeOfDump(Z)V

    .line 113
    return-void
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->removeCallbacks()V

    .line 70
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->closeFile()V

    .line 68
    return-void
.end method

.method swapFiles(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 52
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "swap"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 55
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    return-void
.end method

.method write(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    if-eqz v2, :cond_0

    .line 60
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 61
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "log"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 64
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
