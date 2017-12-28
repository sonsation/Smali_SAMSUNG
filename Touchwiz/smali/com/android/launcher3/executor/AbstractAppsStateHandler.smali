.class abstract Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.super Lcom/android/launcher3/executor/AbstractStateHandler;
.source "AbstractAppsStateHandler.java"


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 0
    .param p1, "stateId"    # Lcom/android/launcher3/executor/ExecutorState;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    .line 7
    return-void
.end method


# virtual methods
.method public isAllowedInHomeOnlyMode()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method
