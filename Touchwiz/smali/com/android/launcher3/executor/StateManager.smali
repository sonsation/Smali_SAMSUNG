.class public Lcom/android/launcher3/executor/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/executor/StateManager$TopViewListener;
    }
.end annotation


# static fields
.field public static DEBUG_MODE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mCurrentState:Ljava/lang/String;

.field private mStateHandlerFactory:Lcom/android/launcher3/executor/StateHandlerFactory;

.field private mTopViewListener:Lcom/android/launcher3/executor/StateManager$TopViewListener;

.field private mTopViewState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/launcher3/executor/StateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/executor/StateManager;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/executor/StateManager;->DEBUG_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v2, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v2}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/StateManager;->mTopViewState:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/executor/StateManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 46
    new-instance v2, Lcom/android/launcher3/executor/StateManager$TopViewListener;

    invoke-direct {v2, p0}, Lcom/android/launcher3/executor/StateManager$TopViewListener;-><init>(Lcom/android/launcher3/executor/StateManager;)V

    iput-object v2, p0, Lcom/android/launcher3/executor/StateManager;->mTopViewListener:Lcom/android/launcher3/executor/StateManager$TopViewListener;

    .line 53
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/executor/StateManager;->mCurrentState:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/launcher3/executor/StateManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/executor/StateManager$1;-><init>(Lcom/android/launcher3/executor/StateManager;)V

    .line 84
    .local v0, "internalStateListener":Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
    new-instance v1, Lcom/android/launcher3/executor/StateManager$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/executor/StateManager$2;-><init>(Lcom/android/launcher3/executor/StateManager;)V

    .line 99
    .local v1, "startStateListener":Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;
    iget-object v2, p0, Lcom/android/launcher3/executor/StateManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    .line 100
    iget-object v2, p0, Lcom/android/launcher3/executor/StateManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    .line 102
    new-instance v2, Lcom/android/launcher3/executor/StateHandlerFactory;

    invoke-direct {v2}, Lcom/android/launcher3/executor/StateHandlerFactory;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/executor/StateManager;->mStateHandlerFactory:Lcom/android/launcher3/executor/StateHandlerFactory;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/executor/StateManager;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/executor/StateManager;
    .param p1, "x1"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/StateManager;->onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/launcher3/executor/StateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/executor/StateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/executor/StateManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager;->mTopViewState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/executor/StateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/executor/StateManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/launcher3/executor/StateManager;->mTopViewState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/executor/StateManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/executor/StateManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method private onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 11
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 106
    sget-object v7, Lcom/android/launcher3/executor/StateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStateReceived() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/StateManager;->mCurrentState:Ljava/lang/String;

    .line 110
    iget-object v7, p0, Lcom/android/launcher3/executor/StateManager;->mStateHandlerFactory:Lcom/android/launcher3/executor/StateHandlerFactory;

    iget-object v8, p0, Lcom/android/launcher3/executor/StateManager;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/executor/StateHandlerFactory;->createHandler(Ljava/lang/String;)Lcom/android/launcher3/executor/StateHandler;

    move-result-object v6

    .line 112
    .local v6, "stateHandler":Lcom/android/launcher3/executor/StateHandler;
    if-nez v6, :cond_0

    .line 114
    sget-object v7, Lcom/android/launcher3/executor/StateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not supported ExecutorState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v7, p0, Lcom/android/launcher3/executor/StateManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 180
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v5

    .line 121
    .local v5, "proxy":Lcom/android/launcher3/proxy/LauncherProxy;
    invoke-virtual {v5}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 122
    invoke-interface {v6}, Lcom/android/launcher3/executor/StateHandler;->isAllowedInHomeOnlyMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 124
    sget-object v7, Lcom/android/launcher3/executor/StateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not allowed ExecutorState in HomeOnlyMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v8, "NLG_PRECONDITION"

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "Home"

    const-string v9, "HomeAndAppsScreenAlreadySet"

    const-string v10, "no"

    .line 127
    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    .line 129
    .local v1, "nlgInfo":Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    iget-object v7, p0, Lcom/android/launcher3/executor/StateManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v7, v1, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 130
    iget-object v7, p0, Lcom/android/launcher3/executor/StateManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 135
    .end local v1    # "nlgInfo":Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    :cond_1
    invoke-interface {v6, p1}, Lcom/android/launcher3/executor/StateHandler;->parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "paramCheckResult":Ljava/lang/String;
    const-string v7, "PARAM_CHECK_OK"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 137
    new-instance v7, Lcom/android/launcher3/executor/StateManager$3;

    invoke-direct {v7, p0, v6, p1}, Lcom/android/launcher3/executor/StateManager$3;-><init>(Lcom/android/launcher3/executor/StateManager;Lcom/android/launcher3/executor/StateHandler;Lcom/samsung/android/sdk/bixby/data/State;)V

    invoke-interface {v6, v7}, Lcom/android/launcher3/executor/StateHandler;->execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V

    goto :goto_0

    .line 157
    :cond_2
    sget-object v7, Lcom/android/launcher3/executor/StateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parseParameters : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v4

    .line 160
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    if-eqz v4, :cond_3

    .line 161
    sget-object v7, Lcom/android/launcher3/executor/StateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parameters size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    .line 163
    .local v0, "keyCnt":I
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    .local v2, "pKey":Ljava/lang/String;
    sget-object v8, Lcom/android/launcher3/executor/StateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Key_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 166
    goto :goto_1

    .line 169
    .end local v0    # "keyCnt":I
    .end local v2    # "pKey":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Lcom/android/launcher3/executor/StateHandler;->getNlgRequestInfo()Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    .line 170
    .restart local v1    # "nlgInfo":Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    if-eqz v1, :cond_4

    .line 171
    iget-object v7, p0, Lcom/android/launcher3/executor/StateManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v7, v1, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 172
    sget-object v7, Lcom/android/launcher3/executor/StateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Param error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    sget-boolean v7, Lcom/android/launcher3/executor/StateManager;->DEBUG_MODE:Z

    if-eqz v7, :cond_5

    .line 175
    iget-object v7, p0, Lcom/android/launcher3/executor/StateManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 177
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/executor/StateManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getTopViewListener()Lcom/android/launcher3/executor/StateManager$TopViewListener;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager;->mTopViewListener:Lcom/android/launcher3/executor/StateManager$TopViewListener;

    return-object v0
.end method

.method public isRuleRunning()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher3/executor/StateManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v0

    return v0
.end method
