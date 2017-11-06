.class Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;
.super Ljava/lang/Object;
.source "SeslMessageThreadUtil.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;->getMainThreadProxy(Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;)Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final ADD_TILE:I = 0x2

.field static final REMOVE_TILE:I = 0x3

.field static final UPDATE_ITEM_COUNT:I = 0x1


# instance fields
.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMainThreadRunnable:Ljava/lang/Runnable;

.field final mQueue:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;

.field final synthetic val$callback:Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;

    .prologue
    .line 31
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;->this$0:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;->val$callback:Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$MainThreadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;->mQueue:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1$1;-><init>(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private sendMessage(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V
    .locals 2
    .param p1, "msg"    # Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;

    .prologue
    .line 55
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;->mQueue:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;->sendMessage(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method


# virtual methods
.method public addTile(ILcom/samsung/android/support/sesl/component/util/SeslTileList$Tile;)V
    .locals 1
    .param p1, "generation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/support/sesl/component/util/SeslTileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;"
    .local p2, "tile":Lcom/samsung/android/support/sesl/component/util/SeslTileList$Tile;, "Lcom/samsung/android/support/sesl/component/util/SeslTileList$Tile<TT;>;"
    const/4 v0, 0x2

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;->sendMessage(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V

    .line 47
    return-void
.end method

.method public removeTile(II)V
    .locals 1
    .param p1, "generation"    # I
    .param p2, "position"    # I

    .prologue
    .line 51
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;"
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;->sendMessage(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V

    .line 52
    return-void
.end method

.method public updateItemCount(II)V
    .locals 1
    .param p1, "generation"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;"
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$1;->sendMessage(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;)V

    .line 42
    return-void
.end method
