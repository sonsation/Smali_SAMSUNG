.class Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;
.super Landroid/os/Handler;
.source "PreExecutionTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskHandler"
.end annotation


# instance fields
.field private final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;)V
    .locals 1
    .param p1, "preExecutionTaskManager"    # Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;
    .param p2, "x1"    # Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$1;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;-><init>(Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 124
    iget-object v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    .line 125
    .local v0, "manager":Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    .line 127
    .local v1, "task":Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;
    invoke-static {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->access$100(Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-interface {v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;->performTask()V

    .line 133
    .end local v1    # "task":Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v1    # "task":Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;
    :cond_1
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->access$202(Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;)Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    goto :goto_0
.end method
