.class Lcom/android/launcher3/executor/AppsTidyUpPagesPreviewViewStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsTidyUpPagesPreviewViewStateHandler.java"


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 0
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 28
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/launcher3/executor/StateExecutionCallback;

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsTidyUpPagesPreviewViewStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/proxy/LauncherProxy;->showAppsTidyUpPreview()I

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/executor/AppsTidyUpPagesPreviewViewStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    .line 40
    return-void
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 32
    const-string v0, "PARAM_CHECK_OK"

    return-object v0
.end method
