.class Lcom/samsung/android/sdk/bixby/BixbyApi$1;
.super Ljava/lang/Object;
.source "BixbyApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;->handleStates(Lcom/samsung/android/sdk/bixby/data/State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field final synthetic val$state:Lcom/samsung/android/sdk/bixby/data/State;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/bixby/BixbyApi;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sdk/bixby/BixbyApi;

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->val$state:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1373
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$100(Lcom/samsung/android/sdk/bixby/BixbyApi;)Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1374
    const/16 v0, 0x12c

    .line 1375
    .local v0, "interval":I
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$200(Lcom/samsung/android/sdk/bixby/BixbyApi;)I

    move-result v1

    const/16 v2, 0x21

    if-le v1, v2, :cond_0

    .line 1376
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendState: Failed to call onStateReceived()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$302(Lcom/samsung/android/sdk/bixby/BixbyApi;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1388
    .end local v0    # "interval":I
    :goto_0
    return-void

    .line 1380
    .restart local v0    # "interval":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1381
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$208(Lcom/samsung/android/sdk/bixby/BixbyApi;)I

    .line 1382
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendState: Interim Listener is not set. Waiting for it."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1384
    .end local v0    # "interval":I
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendState: Call onStateReceived() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->val$state:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$100(Lcom/samsung/android/sdk/bixby/BixbyApi;)Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->val$state:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V

    .line 1386
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$302(Lcom/samsung/android/sdk/bixby/BixbyApi;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
