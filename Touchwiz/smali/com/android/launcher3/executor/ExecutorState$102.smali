.class final Lcom/android/launcher3/executor/ExecutorState$102;
.super Ljava/lang/Object;
.source "ExecutorState.java"

# interfaces
.implements Lcom/android/launcher3/executor/StateHandlerCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/executor/ExecutorState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/launcher3/executor/StateHandler;
    .locals 2

    .prologue
    .line 621
    new-instance v0, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;

    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SINGLE_APP_UNLOCK:Lcom/android/launcher3/executor/ExecutorState;

    invoke-direct {v0, v1}, Lcom/android/launcher3/executor/HomeSingleAppUnlockStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    return-object v0
.end method
