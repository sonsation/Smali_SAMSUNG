.class public Lcom/samsung/android/mateservice/common/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/samsung/android/mateservice/common/LoggerContract;
.implements Lcom/samsung/android/mateservice/common/Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mateservice/common/Logger$Node;
    }
.end annotation


# static fields
.field private static final TIME_DIFF:J = 0x5265c00L


# instance fields
.field private mLastTimeStamp:J

.field private final mMaxCount:I

.field private final mNodes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/mateservice/common/Logger$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "historyCount"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/mateservice/common/Logger;->mLastTimeStamp:J

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mateservice/common/Logger;->mNodes:Ljava/util/LinkedList;

    .line 19
    iput p1, p0, Lcom/samsung/android/mateservice/common/Logger;->mMaxCount:I

    .line 17
    return-void
.end method

.method private appendHistoryNode(Lcom/samsung/android/mateservice/common/Logger$Node;)V
    .locals 5
    .param p1, "node"    # Lcom/samsung/android/mateservice/common/Logger$Node;

    .prologue
    .line 23
    iget-object v3, p0, Lcom/samsung/android/mateservice/common/Logger;->mNodes:Ljava/util/LinkedList;

    monitor-enter v3

    .line 24
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 26
    .local v0, "current":J
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mateservice/common/Logger;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/samsung/android/mateservice/common/Logger;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 34
    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/mateservice/common/Logger;->mLastTimeStamp:J

    .line 35
    iget-object v2, p0, Lcom/samsung/android/mateservice/common/Logger;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 22
    return-void

    .line 29
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/mateservice/common/Logger;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v4, p0, Lcom/samsung/android/mateservice/common/Logger;->mMaxCount:I

    if-lt v2, v4, :cond_0

    .line 30
    iget-object v2, p0, Lcom/samsung/android/mateservice/common/Logger;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 23
    .end local v0    # "current":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private isExpired(J)Z
    .locals 5
    .param p1, "current"    # J

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/samsung/android/mateservice/common/Logger;->mLastTimeStamp:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs append(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "timeStamp"    # J
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/android/mateservice/common/Logger;->mMaxCount:I

    if-nez v0, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    if-lez v0, :cond_1

    .line 58
    invoke-static {p3, p4}, Lcom/samsung/android/mateservice/util/UtilLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 61
    :cond_1
    new-instance v0, Lcom/samsung/android/mateservice/common/Logger$Node;

    invoke-direct {v0, p3, p1, p2}, Lcom/samsung/android/mateservice/common/Logger$Node;-><init>(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/samsung/android/mateservice/common/Logger;->appendHistoryNode(Lcom/samsung/android/mateservice/common/Logger$Node;)V

    .line 52
    return-void
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/mateservice/common/Logger;->mMaxCount:I

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 45
    invoke-static {p1, p2}, Lcom/samsung/android/mateservice/util/UtilLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 48
    :cond_1
    new-instance v0, Lcom/samsung/android/mateservice/common/Logger$Node;

    invoke-direct {v0, p1}, Lcom/samsung/android/mateservice/common/Logger$Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/mateservice/common/Logger;->appendHistoryNode(Lcom/samsung/android/mateservice/common/Logger$Node;)V

    .line 40
    return-void
.end method

.method public getDump(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 70
    const-string/jumbo v2, "\n---- history info.\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v3, p0, Lcom/samsung/android/mateservice/common/Logger;->mNodes:Ljava/util/LinkedList;

    monitor-enter v3

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mateservice/common/Logger;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 74
    iget-object v2, p0, Lcom/samsung/android/mateservice/common/Logger;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mateservice/common/Logger$Node;

    .line 75
    .local v0, "cur":Lcom/samsung/android/mateservice/common/Logger$Node;
    if-eqz v0, :cond_0

    .line 76
    iget-wide v4, v0, Lcom/samsung/android/mateservice/common/Logger$Node;->timeStamp:J

    invoke-static {v4, v5}, Lcom/samsung/android/mateservice/util/UtilLog;->getDateString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, v0, Lcom/samsung/android/mateservice/common/Logger$Node;->msg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 83
    .end local v0    # "cur":Lcom/samsung/android/mateservice/common/Logger$Node;
    :cond_1
    invoke-static {}, Lcom/samsung/android/mateservice/common/FwDependency;->isProductDev()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    monitor-exit v3

    .line 69
    return-void

    .line 84
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/mateservice/common/Logger;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 72
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
