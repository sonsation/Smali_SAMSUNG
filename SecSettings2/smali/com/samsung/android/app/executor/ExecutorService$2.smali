.class Lcom/samsung/android/app/executor/ExecutorService$2;
.super Lcom/samsung/android/app/executor/IExecutorService$Stub;
.source "ExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/executor/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/executor/ExecutorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/executor/ExecutorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/executor/ExecutorService;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorService$2;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    invoke-direct {p0}, Lcom/samsung/android/app/executor/IExecutorService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCommand(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonCommandFromEm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExecutorService sendCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService$2;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    invoke-static {v0}, Lcom/samsung/android/app/executor/ExecutorService;->access$300(Lcom/samsung/android/app/executor/ExecutorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService$2;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    invoke-static {v0}, Lcom/samsung/android/app/executor/ExecutorService;->access$400(Lcom/samsung/android/app/executor/ExecutorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;

    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorService$2;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;-><init>(Lcom/samsung/android/app/executor/ExecutorService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void

    .line 205
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unauthorized access detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public setCallback(Lcom/samsung/android/app/executor/IExecutorServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/app/executor/IExecutorServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ExecutorService setCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService$2;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    invoke-static {v0}, Lcom/samsung/android/app/executor/ExecutorService;->access$300(Lcom/samsung/android/app/executor/ExecutorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService$2;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    invoke-static {v0, p1}, Lcom/samsung/android/app/executor/ExecutorService;->access$102(Lcom/samsung/android/app/executor/ExecutorService;Lcom/samsung/android/app/executor/IExecutorServiceCallback;)Lcom/samsung/android/app/executor/IExecutorServiceCallback;

    .line 219
    return-void

    .line 215
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unauthorized access detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method
