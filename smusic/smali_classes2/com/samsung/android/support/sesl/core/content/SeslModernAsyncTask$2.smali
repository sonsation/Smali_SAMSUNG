.class Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;
.super Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$WorkerRunnable;
.source "SeslModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    .prologue
    .line 130
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;"
    const/4 v3, 0x1

    .line 133
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->access$000(Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 138
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-object v0

    .line 140
    .end local v0    # "result":Ljava/lang/Object;, "TResult;"
    :catch_0
    move-exception v1

    .line 141
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->access$100(Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local v1    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2
.end method
