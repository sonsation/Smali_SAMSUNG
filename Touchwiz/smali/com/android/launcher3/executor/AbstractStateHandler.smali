.class abstract Lcom/android/launcher3/executor/AbstractStateHandler;
.super Ljava/lang/Object;
.source "AbstractStateHandler.java"

# interfaces
.implements Lcom/android/launcher3/executor/StateHandler;


# instance fields
.field mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

.field mNlgTargetState:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mStateId:Lcom/android/launcher3/executor/ExecutorState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 0
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/launcher3/executor/AbstractStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    .line 37
    return-void
.end method


# virtual methods
.method final completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;
    .param p2, "ret"    # I

    .prologue
    .line 54
    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/executor/AbstractStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;II)V

    .line 55
    return-void
.end method

.method final completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;II)V
    .locals 4
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;
    .param p2, "ret"    # I
    .param p3, "delay"    # I

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 61
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/executor/AbstractStateHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler$1;-><init>(Lcom/android/launcher3/executor/AbstractStateHandler;Lcom/android/launcher3/executor/StateExecutionCallback;)V

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/launcher3/executor/StateExecutionCallback;->executionCompleted(Z)V

    goto :goto_0
.end method

.method final getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getNlgRequestInfo()Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher3/executor/AbstractStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    return-object v0
.end method

.method public isAllowedInHomeOnlyMode()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method
