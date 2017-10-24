.class public Lcom/samsung/android/share/executor/ExecutorCommandHandler;
.super Ljava/lang/Object;
.source "ExecutorCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/executor/ExecutorCommandHandler$1;
    }
.end annotation


# static fields
.field public static final EMES_REQUEST_CONTEXT:Ljava/lang/String; = "emes_request_context"

.field public static final EMES_REQUEST_PARAM_FILLING:Ljava/lang/String; = "emes_request_param_filling"

.field public static final EMES_STATE:Ljava/lang/String; = "emes_state"

.field public static final ESEM_CONTEXT_RESULT:Ljava/lang/String; = "esem_context_result"

.field public static final ESEM_PARAM_FILLING_RESULT:Ljava/lang/String; = "esem_param_filling_result"

.field public static final ESEM_REQUEST_NLG:Ljava/lang/String; = "esem_request_nlg"

.field public static final ESEM_STATE_LOG:Ljava/lang/String; = "esem_state_log"

.field public static final ESEM_STATE_RESULT:Ljava/lang/String; = "esem_state_result"

.field public static final RESULT_FAILURE:Ljava/lang/String; = "failure"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "success"

.field private static final SEQ_NUM_RULE_CANCEL:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;


# instance fields
.field private ACTIION_EXECUTOR_MANAGER_COMMAND:Ljava/lang/String;

.field private BIXBY_COMMAND:Ljava/lang/String;

.field private mCmdObserver:Ljava/util/Observer;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppName:Ljava/lang/String;

.field private mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

.field private mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCurrentAppName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mContext:Landroid/content/Context;

    .line 49
    const-string/jumbo v0, "com.samsung.android.intelligence.executormanager.ACTION_COMMAND"

    .line 48
    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->ACTIION_EXECUTOR_MANAGER_COMMAND:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "bixby_command"

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->BIXBY_COMMAND:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$1;-><init>(Lcom/samsung/android/share/executor/ExecutorCommandHandler;)V

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCmdObserver:Ljava/util/Observer;

    .line 60
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/share/executor/IExecutorCommandListener;)Lcom/samsung/android/share/executor/ExecutorCommandHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/share/executor/IExecutorCommandListener;

    .prologue
    const-class v1, Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    .line 69
    :cond_0
    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-virtual {v0, p0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->setContext(Landroid/content/Context;)V

    .line 70
    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->setCurrentAppName(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-virtual {v0, p2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->setListener(Lcom/samsung/android/share/executor/IExecutorCommandListener;)V

    .line 73
    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->registerCommandObserver()V

    .line 75
    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createLogStateData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "stateIds"    # Ljava/lang/String;

    .prologue
    .line 435
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 436
    const-string/jumbo v2, "\"appName\":\""

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 436
    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCurrentAppName:Ljava/lang/String;

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 436
    const-string/jumbo v2, "\","

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 437
    const-string/jumbo v2, "\"logType\":\""

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 437
    const-string/jumbo v2, "\","

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 438
    const-string/jumbo v2, "\"stateIds\":\""

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 438
    const-string/jumbo v2, "\""

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/share/executor/ExecutorCommandHandler;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    return-object v0
.end method

.method private getStateInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v4, "statesBuilder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    if-eqz v5, :cond_2

    .line 258
    iget-object v5, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    invoke-interface {v5}, Lcom/samsung/android/share/executor/IExecutorCommandListener;->onScreenStatesRequested()Lcom/samsung/android/share/executor/data/ScreenStateInfo;

    move-result-object v0

    .line 259
    .local v0, "ssi":Lcom/samsung/android/share/executor/data/ScreenStateInfo;
    invoke-virtual {v0}, Lcom/samsung/android/share/executor/data/ScreenStateInfo;->getStates()Ljava/util/HashSet;

    move-result-object v3

    .line 261
    .local v3, "stateIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 262
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "stateId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    .local v1, "stateId":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 265
    .end local v1    # "stateId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 270
    .end local v0    # "ssi":Lcom/samsung/android/share/executor/data/ScreenStateInfo;
    .end local v2    # "stateId$iterator":Ljava/util/Iterator;
    .end local v3    # "stateIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 268
    :cond_2
    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private handleContextCommand(Lcom/samsung/android/share/executor/Command;)V
    .locals 0
    .param p1, "cmd"    # Lcom/samsung/android/share/executor/Command;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendContextCommandResponse()V

    .line 164
    return-void
.end method

.method private handleParamFillingCommand(Lcom/samsung/android/share/executor/Command;)V
    .locals 6
    .param p1, "cmd"    # Lcom/samsung/android/share/executor/Command;

    .prologue
    .line 144
    iget-object v4, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    if-nez v4, :cond_0

    .line 145
    sget-object v4, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Command Listener is not set"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 150
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/Command;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "jsonContent":Lorg/json/JSONObject;
    const-string/jumbo v4, "slotFillingResult"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "strFillingResult":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/share/executor/ParamFillingReader;->read(Ljava/lang/String;)Lcom/samsung/android/share/executor/data/ParamFilling;

    move-result-object v2

    .line 153
    .local v2, "pf":Lcom/samsung/android/share/executor/data/ParamFilling;
    iget-object v4, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    invoke-interface {v4, v2}, Lcom/samsung/android/share/executor/IExecutorCommandListener;->onParamFillingReceived(Lcom/samsung/android/share/executor/data/ParamFilling;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    const-string/jumbo v4, "success"

    invoke-direct {p0, v4}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendParamFillingCommandResponse(Ljava/lang/String;)V

    .line 143
    .end local v1    # "jsonContent":Lorg/json/JSONObject;
    .end local v2    # "pf":Lcom/samsung/android/share/executor/data/ParamFilling;
    .end local v3    # "strFillingResult":Ljava/lang/String;
    :goto_0
    return-void

    .line 156
    .restart local v1    # "jsonContent":Lorg/json/JSONObject;
    .restart local v2    # "pf":Lcom/samsung/android/share/executor/data/ParamFilling;
    .restart local v3    # "strFillingResult":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "failure"

    invoke-direct {p0, v4}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendParamFillingCommandResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v1    # "jsonContent":Lorg/json/JSONObject;
    .end local v2    # "pf":Lcom/samsung/android/share/executor/data/ParamFilling;
    .end local v3    # "strFillingResult":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    const-string/jumbo v4, "failure"

    invoke-direct {p0, v4}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendParamFillingCommandResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleStateCommand(Lcom/samsung/android/share/executor/Command;)V
    .locals 5
    .param p1, "cmd"    # Lcom/samsung/android/share/executor/Command;

    .prologue
    .line 170
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/Command;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/share/executor/StateReader;->read(Ljava/lang/String;)Lcom/samsung/android/share/executor/data/State;

    move-result-object v2

    .line 173
    .local v2, "state":Lcom/samsung/android/share/executor/data/State;
    invoke-virtual {v2}, Lcom/samsung/android/share/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 174
    iget-object v3, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/share/executor/IExecutorCommandListener;->onRuleCanceled(Ljava/lang/String;)V

    .line 168
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "state":Lcom/samsung/android/share/executor/data/State;
    :goto_0
    return-void

    .line 176
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    .restart local v2    # "state":Lcom/samsung/android/share/executor/data/State;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    invoke-interface {v3, v2}, Lcom/samsung/android/share/executor/IExecutorCommandListener;->onStateReceived(Lcom/samsung/android/share/executor/data/State;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "state":Lcom/samsung/android/share/executor/data/State;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    const-string/jumbo v3, "failure"

    invoke-virtual {p0, v3}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendStateCommandResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "stateIds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 417
    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Log value cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 420
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->createLogStateData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "logState":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/Command;-><init>()V

    .line 423
    .local v0, "cmd":Lcom/samsung/android/share/executor/Command;
    const-string/jumbo v3, "1.0"

    invoke-virtual {v0, v3}, Lcom/samsung/android/share/executor/Command;->setVersion(Ljava/lang/String;)V

    .line 424
    const-string/jumbo v3, "1"

    invoke-virtual {v0, v3}, Lcom/samsung/android/share/executor/Command;->setRequestId(Ljava/lang/String;)V

    .line 425
    const-string/jumbo v3, "esem_state_log"

    invoke-virtual {v0, v3}, Lcom/samsung/android/share/executor/Command;->setCommand(Ljava/lang/String;)V

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/Command;->setContent(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V

    .line 410
    return-void
.end method

.method private registerCommandObserver()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/samsung/android/share/executor/CommandObserver;->getInstance()Lcom/samsung/android/share/executor/CommandObserver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 80
    invoke-static {}, Lcom/samsung/android/share/executor/CommandObserver;->getInstance()Lcom/samsung/android/share/executor/CommandObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCmdObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 78
    return-void
.end method

.method public static requestStateCommand(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 444
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.intelligence.executormanager"

    .line 445
    const-string/jumbo v3, "com.samsung.android.intelligence.executormanager.ExecutorManagerChooserReceiver"

    .line 444
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 448
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 449
    const-string/jumbo v2, "command"

    const-string/jumbo v3, "state_request"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 443
    return-void
.end method

.method private sendContextCommandResponse()V
    .locals 8

    .prologue
    .line 274
    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getCommand()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "emes_request_context"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 282
    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    if-eqz v6, :cond_1

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    invoke-interface {v6}, Lcom/samsung/android/share/executor/IExecutorCommandListener;->onScreenStatesRequested()Lcom/samsung/android/share/executor/data/ScreenStateInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/data/ScreenStateInfo;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "states":Ljava/lang/String;
    const-string/jumbo v6, "{ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",\"appName\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCurrentAppName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 286
    const-string/jumbo v7, "\","

    .line 285
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 286
    const-string/jumbo v7, "\"appVersion\":\""

    .line 285
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 286
    const-string/jumbo v7, "None"

    .line 285
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 286
    const-string/jumbo v7, "\" }"

    .line 285
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "deviceContext":Ljava/lang/String;
    const-string/jumbo v3, "success"

    .line 289
    .local v3, "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{\"result\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 290
    const-string/jumbo v7, "\","

    .line 289
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 291
    const-string/jumbo v7, "\"deviceContext\":"

    .line 289
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 292
    const-string/jumbo v7, "}"

    .line 289
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .end local v2    # "deviceContext":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "states":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/Command;-><init>()V

    .line 302
    .local v0, "cmd":Lcom/samsung/android/share/executor/Command;
    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/share/executor/Command;->setVersion(Ljava/lang/String;)V

    .line 303
    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/share/executor/Command;->setRequestId(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v6, "esem_context_result"

    invoke-virtual {v0, v6}, Lcom/samsung/android/share/executor/Command;->setCommand(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/Command;->setContent(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V

    .line 273
    return-void

    .line 275
    .end local v0    # "cmd":Lcom/samsung/android/share/executor/Command;
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "No Received Command."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .line 294
    :cond_1
    sget-object v6, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Executor Commnad Listener is not set."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string/jumbo v3, "failure"

    .line 296
    .restart local v3    # "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{\"result\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 297
    const-string/jumbo v7, "\","

    .line 296
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 298
    const-string/jumbo v7, "}"

    .line 296
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "content":Ljava/lang/String;
    goto :goto_0
.end method

.method private sendNlgCommand(Ljava/lang/String;)V
    .locals 4
    .param p1, "nlg"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/Command;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "emes_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    new-instance v0, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/Command;-><init>()V

    .line 318
    .local v0, "cmd":Lcom/samsung/android/share/executor/Command;
    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/Command;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setVersion(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/Command;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setRequestId(Ljava/lang/String;)V

    .line 320
    const-string/jumbo v2, "esem_request_nlg"

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setCommand(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/Command;->setContent(Ljava/lang/String;)V

    .line 325
    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V

    .line 311
    return-void

    .line 313
    .end local v0    # "cmd":Lcom/samsung/android/share/executor/Command;
    .end local v1    # "content":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No Received State Command."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method private sendParamFillingCommandResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/Command;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "emes_request_param_filling"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    new-instance v0, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/Command;-><init>()V

    .line 367
    .local v0, "cmd":Lcom/samsung/android/share/executor/Command;
    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/Command;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setVersion(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/Command;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setRequestId(Ljava/lang/String;)V

    .line 369
    const-string/jumbo v2, "esem_param_filling_result"

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setCommand(Ljava/lang/String;)V

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"result\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/Command;->setContent(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V

    .line 360
    return-void

    .line 362
    .end local v0    # "cmd":Lcom/samsung/android/share/executor/Command;
    .end local v1    # "content":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No Received Parameter Filling Command."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method private sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V
    .locals 4
    .param p1, "cmd"    # Lcom/samsung/android/share/executor/Command;

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v0, "resIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->ACTIION_EXECUTOR_MANAGER_COMMAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->BIXBY_COMMAND:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/Command;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    sget-object v1, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send response to EM via Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/Command;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 378
    return-void
.end method

.method private static toBcp47Language(Ljava/util/Locale;)Ljava/lang/String;
    .locals 8
    .param p0, "loc"    # Ljava/util/Locale;

    .prologue
    const/16 v7, 0x2d

    .line 199
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 204
    :cond_0
    const/16 v0, 0x2d

    .line 205
    .local v0, "SEP":C
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "region":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "variant":Ljava/lang/String;
    const-string/jumbo v5, "no"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "NO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "NY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    const-string/jumbo v2, "nn"

    .line 213
    const-string/jumbo v3, "NO"

    .line 214
    const-string/jumbo v4, ""

    .line 217
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "\\p{Alpha}{2,8}"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 220
    const-string/jumbo v5, "iw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 221
    const-string/jumbo v2, "he"

    .line 229
    :cond_2
    :goto_0
    const-string/jumbo v5, "\\p{Alpha}{2}|\\p{Digit}{3}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 230
    const-string/jumbo v3, ""

    .line 234
    :cond_3
    const-string/jumbo v5, "\\p{Alnum}{5,8}|\\p{Digit}\\p{Alnum}{3}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 235
    const-string/jumbo v4, ""

    .line 238
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "bcp47Tag":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 240
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 243
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 218
    .end local v1    # "bcp47Tag":Ljava/lang/StringBuilder;
    :cond_7
    const-string/jumbo v2, "und"

    goto :goto_0

    .line 222
    :cond_8
    const-string/jumbo v5, "in"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 223
    const-string/jumbo v2, "id"

    goto :goto_0

    .line 224
    :cond_9
    const-string/jumbo v5, "ji"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    const-string/jumbo v2, "yi"

    goto :goto_0
.end method


# virtual methods
.method public clearListener()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    .line 107
    return-void
.end method

.method public getCurrentAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCurrentAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/samsung/android/share/executor/IExecutorCommandListener;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    return-object v0
.end method

.method public handleCommand(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    iget-object v3, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->BIXBY_COMMAND:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "jsonCommand":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    new-instance v0, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v0, v2}, Lcom/samsung/android/share/executor/Command;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "cmd":Lcom/samsung/android/share/executor/Command;
    invoke-virtual {v0}, Lcom/samsung/android/share/executor/Command;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "cmdStr":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 126
    sget-object v3, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid Command:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 130
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    .line 132
    const-string/jumbo v3, "emes_state"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->handleStateCommand(Lcom/samsung/android/share/executor/Command;)V

    .line 115
    :goto_0
    return-void

    .line 134
    :cond_2
    const-string/jumbo v3, "emes_request_context"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->handleContextCommand(Lcom/samsung/android/share/executor/Command;)V

    goto :goto_0

    .line 136
    :cond_3
    const-string/jumbo v3, "emes_request_param_filling"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->handleParamFillingCommand(Lcom/samsung/android/share/executor/Command;)V

    goto :goto_0

    .line 139
    :cond_4
    sget-object v3, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported Command"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logEnterState(Ljava/lang/String;)V
    .locals 1
    .param p1, "stateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 395
    const-string/jumbo v0, "state_enter"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->logState(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public logExitState(Ljava/lang/String;)V
    .locals 1
    .param p1, "stateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 405
    const-string/jumbo v0, "state_exit"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->logState(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public requestNlg(Ljava/lang/String;Lcom/samsung/android/share/executor/data/NlgRequestInfo;)V
    .locals 7
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "nri"    # Lcom/samsung/android/share/executor/data/NlgRequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 187
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "NlgRequestInfo cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->toBcp47Language(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "deviceLocale":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\"currentStateIds\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->getStateInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "stateInfo":Ljava/lang/String;
    const-string/jumbo v3, "\"language\":\"%s\",\"requestedAppName\":\"%s\",%s,%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 193
    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {p2}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 192
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "ret":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendNlgCommand(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public sendStateCommandResponse(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getCommand()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "emes_state"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 335
    new-instance v0, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/Command;-><init>()V

    .line 336
    .local v0, "cmd":Lcom/samsung/android/share/executor/Command;
    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/share/executor/Command;->setVersion(Ljava/lang/String;)V

    .line 337
    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/share/executor/Command;->setRequestId(Ljava/lang/String;)V

    .line 338
    const-string/jumbo v6, "esem_state_result"

    invoke-virtual {v0, v6}, Lcom/samsung/android/share/executor/Command;->setCommand(Ljava/lang/String;)V

    .line 340
    const/4 v3, 0x0

    .line 341
    .local v3, "recvContent":Lorg/json/JSONObject;
    const-string/jumbo v5, ""

    .line 343
    .local v5, "recvState":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v3    # "recvContent":Lorg/json/JSONObject;
    .local v4, "recvContent":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v6, "state"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v3, v4

    .line 351
    .end local v4    # "recvContent":Lorg/json/JSONObject;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{\"result\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 352
    const-string/jumbo v7, "\","

    .line 351
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 353
    const-string/jumbo v7, "\"state\":"

    .line 351
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 354
    const-string/jumbo v7, "}"

    .line 351
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/Command;->setContent(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V

    .line 329
    return-void

    .line 331
    .end local v0    # "cmd":Lcom/samsung/android/share/executor/Command;
    .end local v1    # "content":Ljava/lang/String;
    .end local v5    # "recvState":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "No Received State Command."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 346
    .restart local v0    # "cmd":Lcom/samsung/android/share/executor/Command;
    .restart local v3    # "recvContent":Lorg/json/JSONObject;
    .restart local v5    # "recvState":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 347
    .end local v3    # "recvContent":Lorg/json/JSONObject;
    .local v2, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 346
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v4    # "recvContent":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Lorg/json/JSONException;
    move-object v3, v4

    .end local v4    # "recvContent":Lorg/json/JSONObject;
    .local v3, "recvContent":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public setCurrentAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentAppName"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCurrentAppName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setListener(Lcom/samsung/android/share/executor/IExecutorCommandListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/share/executor/IExecutorCommandListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    .line 103
    return-void
.end method
