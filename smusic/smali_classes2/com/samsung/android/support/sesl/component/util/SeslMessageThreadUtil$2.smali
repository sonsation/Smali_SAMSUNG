.class Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;
.super Ljava/lang/Object;
.source "SeslMessageThreadUtil.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;->getBackgroundProxy(Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;)Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final LOAD_TILE:I = 0x3

.field static final RECYCLE_TILE:I = 0x4

.field static final REFRESH:I = 0x1

.field static final UPDATE_RANGE:I = 0x2


# instance fields
.field private mBackgroundRunnable:Ljava/lang/Runnable;

.field mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mQueue:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;

.field final synthetic val$callback:Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;

    .prologue
    .line 87
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->this$0:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->val$callback:Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mQueue:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

    .line 89
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    new-instance v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;-><init>(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private maybeExecuteBackgroundRunnable()V
    .locals 3

    .prologue
    .line 130
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    :cond_0
    return-void
.end method

.method private sendMessage(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V
    .locals 1
    .param p1, "msg"    # Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;

    .prologue
    .line 120
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mQueue:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;->sendMessage(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 122
    return-void
.end method

.method private sendMessageAtFrontOfQueue(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V
    .locals 1
    .param p1, "msg"    # Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;

    .prologue
    .line 125
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mQueue:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;->sendMessageAtFrontOfQueue(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 127
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "scrollHint"    # I

    .prologue
    .line 111
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;"
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->sendMessage(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V

    .line 112
    return-void
.end method

.method public recycleTile(Lcom/samsung/android/support/sesl/component/util/SeslTileList$Tile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/util/SeslTileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;"
    .local p1, "tile":Lcom/samsung/android/support/sesl/component/util/SeslTileList$Tile;, "Lcom/samsung/android/support/sesl/component/util/SeslTileList$Tile<TT;>;"
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->sendMessage(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V

    .line 117
    return-void
.end method

.method public refresh(I)V
    .locals 2
    .param p1, "generation"    # I

    .prologue
    .line 99
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->sendMessageAtFrontOfQueue(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V

    .line 100
    return-void
.end method

.method public updateRange(IIIII)V
    .locals 7
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "extRangeStart"    # I
    .param p4, "extRangeEnd"    # I
    .param p5, "scrollHint"    # I

    .prologue
    .line 105
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;"
    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->sendMessageAtFrontOfQueue(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V

    .line 107
    return-void
.end method
