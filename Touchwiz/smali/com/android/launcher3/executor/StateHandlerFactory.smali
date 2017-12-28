.class Lcom/android/launcher3/executor/StateHandlerFactory;
.super Ljava/lang/Object;
.source "StateHandlerFactory.java"


# static fields
.field private static mStateIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/executor/ExecutorState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/launcher3/executor/StateHandlerFactory;->mStateIdMap:Ljava/util/Map;

    .line 28
    invoke-static {}, Lcom/android/launcher3/executor/ExecutorState;->values()[Lcom/android/launcher3/executor/ExecutorState;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    .local v0, "state":Lcom/android/launcher3/executor/ExecutorState;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 29
    sget-object v4, Lcom/android/launcher3/executor/StateHandlerFactory;->mStateIdMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method createHandler(Ljava/lang/String;)Lcom/android/launcher3/executor/StateHandler;
    .locals 3
    .param p1, "stateId"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v2, Lcom/android/launcher3/executor/StateHandlerFactory;->mStateIdMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/executor/ExecutorState;

    .line 39
    .local v0, "state":Lcom/android/launcher3/executor/ExecutorState;
    const/4 v1, 0x0

    .line 40
    .local v1, "stateHandler":Lcom/android/launcher3/executor/StateHandler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/executor/ExecutorState;->getCreator()Lcom/android/launcher3/executor/StateHandlerCreator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/android/launcher3/executor/ExecutorState;->getCreator()Lcom/android/launcher3/executor/StateHandlerCreator;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher3/executor/StateHandlerCreator;->create()Lcom/android/launcher3/executor/StateHandler;

    move-result-object v1

    .line 43
    :cond_0
    return-object v1
.end method
