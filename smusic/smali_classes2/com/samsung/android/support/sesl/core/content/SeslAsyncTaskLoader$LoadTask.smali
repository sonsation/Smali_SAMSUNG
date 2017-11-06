.class final Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;
.super Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;
.source "SeslAsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mDone:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;

.field waiting:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;

    .prologue
    .line 46
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>.LoadTask;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>.LoadTask;"
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>.LoadTask;"
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "ex":Landroid/os/OperationCanceledException;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    throw v1

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>.LoadTask;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->dispatchOnCancelled(Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 96
    return-void

    .line 94
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>.LoadTask;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->dispatchOnLoadComplete(Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>.LoadTask;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->waiting:Z

    .line 103
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->executePendingTask()V

    .line 104
    return-void
.end method

.method public waitForLoader()V
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>.LoadTask;"
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method
