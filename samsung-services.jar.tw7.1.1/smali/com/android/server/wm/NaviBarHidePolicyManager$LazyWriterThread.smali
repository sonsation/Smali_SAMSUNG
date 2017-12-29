.class Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;
.super Ljava/lang/Thread;
.source "NaviBarHidePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NaviBarHidePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/NaviBarHidePolicyManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/NaviBarHidePolicyManager;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    .line 396
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 395
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 401
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 403
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    monitor-enter v2

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-static {v1}, Lcom/android/server/wm/NaviBarHidePolicyManager;->-wrap0(Lcom/android/server/wm/NaviBarHidePolicyManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-virtual {v1}, Lcom/android/server/wm/NaviBarHidePolicyManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 407
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method
