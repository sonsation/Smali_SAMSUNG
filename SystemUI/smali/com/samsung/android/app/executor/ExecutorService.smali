.class public Lcom/samsung/android/app/executor/ExecutorService;
.super Landroid/app/Service;
.source "ExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mBinder:Lcom/samsung/android/app/executor/IExecutorService$Stub;

.field private mCallbackToEm:Lcom/samsung/android/app/executor/IExecutorServiceCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

.field mResponseFromMediator:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

.field private mStateCommandJsonFromEm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/executor/ExecutorService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_0024"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/samsung/android/app/executor/ExecutorService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/executor/ExecutorService$1;-><init>(Lcom/samsung/android/app/executor/ExecutorService;)V

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mResponseFromMediator:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    .line 164
    new-instance v0, Lcom/samsung/android/app/executor/ExecutorService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/executor/ExecutorService$2;-><init>(Lcom/samsung/android/app/executor/ExecutorService;)V

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mBinder:Lcom/samsung/android/app/executor/IExecutorService$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/executor/ExecutorService;)Lcom/samsung/android/app/executor/IExecutorServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mCallbackToEm:Lcom/samsung/android/app/executor/IExecutorServiceCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/executor/ExecutorService;Lcom/samsung/android/app/executor/IExecutorServiceCallback;)Lcom/samsung/android/app/executor/IExecutorServiceCallback;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;
    .param p1, "x1"    # Lcom/samsung/android/app/executor/IExecutorServiceCallback;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorService;->mCallbackToEm:Lcom/samsung/android/app/executor/IExecutorServiceCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/executor/ExecutorService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorService;->handleResponseCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/executor/ExecutorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/executor/ExecutorService;->checkSenderIdentity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/executor/ExecutorService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/executor/ExecutorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorService;->mStateCommandJsonFromEm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/executor/ExecutorService;)Lcom/samsung/android/app/executor/ExecutorMediator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    return-object v0
.end method

.method private checkSenderIdentity()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method private handleResponseCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "jsonResponse":Ljava/lang/String;
    const-string/jumbo v1, "nlg"

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "app_context"

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "param_filling"

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "state_log"

    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "client_control"

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "state_command_result"

    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 83
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported Command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "jsonResponse":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 71
    .restart local v0    # "jsonResponse":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeNlgCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0

    .line 73
    .local v0, "jsonResponse":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeAppContextResultCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0

    .line 75
    .local v0, "jsonResponse":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeParamFillResultCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0

    .line 77
    .local v0, "jsonResponse":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeStateLogCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0

    .line 79
    .local v0, "jsonResponse":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeClientControlCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0

    .line 81
    .local v0, "jsonResponse":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeStateResultCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0
.end method

.method private makeAppContextResultCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\"1.0\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\"esem_context_result\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"content\":{"

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "jsonResponse":Ljava/lang/String;
    return-object v0
.end method

.method private makeClientControlCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\"1.0\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\"esem_client_control\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"content\":{"

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "jsonResponse":Ljava/lang/String;
    return-object v0
.end method

.method private makeNlgCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\"1.0\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\"esem_request_nlg\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"content\":{"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "jsonResponse":Ljava/lang/String;
    return-object v0
.end method

.method private makeParamFillResultCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\"1.0\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\"esem_param_filling_result\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\"content\":{\"result\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}}"

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "jsonResponse":Ljava/lang/String;
    return-object v0
.end method

.method private makeStateLogCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\"1.0\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\"esem_state_log\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"content\":{"

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "jsonResponse":Ljava/lang/String;
    return-object v0
.end method

.method private makeStateResultCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/samsung/android/app/executor/ExecutorService;->mStateCommandJsonFromEm:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, "jsonObjSrc":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .local v1, "jsonObjRes":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .local v2, "jsonObjResContent":Lorg/json/JSONObject;
    const-string/jumbo v6, "version"

    const-string/jumbo v7, "version"

    .line 142
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "command"

    const-string/jumbo v7, "esem_state_result"

    .line 143
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "requestId"

    const-string/jumbo v7, "requestId"

    .line 144
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "result"

    .line 146
    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "content"

    .line 148
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .local v4, "jsonObjSrcContent":Lorg/json/JSONObject;
    const-string/jumbo v6, "state"

    const-string/jumbo v7, "state"

    .line 149
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "content"

    .line 151
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 159
    .end local v1    # "jsonObjRes":Lorg/json/JSONObject;
    .end local v2    # "jsonObjResContent":Lorg/json/JSONObject;
    .end local v3    # "jsonObjSrc":Lorg/json/JSONObject;
    .end local v4    # "jsonObjSrcContent":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 158
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v5, 0x0

    .line 157
    .local v5, "jsonRes":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mBinder:Lcom/samsung/android/app/executor/IExecutorService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExecutorService onCreate package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/executor/ExecutorService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorMediator;->getInstance()Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorService;->mResponseFromMediator:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setResponseCallback(Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/executor/ExecutorService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 193
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExecutorService onDestroy package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/executor/ExecutorService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setRuleRunning(Z)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setResponseCallback(Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;)V

    .line 196
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 197
    return-void
.end method
