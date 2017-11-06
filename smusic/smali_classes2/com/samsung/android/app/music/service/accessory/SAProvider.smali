.class public Lcom/samsung/android/app/music/service/accessory/SAProvider;
.super Lcom/samsung/android/sdk/accessory/SAAgent;
.source "SAProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;,
        Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;,
        Lcom/samsung/android/app/music/service/accessory/SAProvider$AccessoryProviderBinder;
    }
.end annotation


# static fields
.field private static final ACCESS_TOKEN_REQUEST_ID:I = 0x3039

.field private static final LOG_TAG:Ljava/lang/String; = "SAP"

.field private static final RETRY_MAX_ATTEMPTS:I = 0x5

.field private static final RETRY_WAIT_FACTOR:I = 0x2

.field private static final mConnectionsMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static sConnRetryAttempts:I

.field private static sConnectingPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field private static final sRetryHandler:Landroid/os/Handler;

.field private static sWaitTime:I


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mISaService:Lcom/msc/sa/aidl/ISAService;

.field private final mLoginConnection:Landroid/content/ServiceConnection;

.field private mRegCode:Ljava/lang/String;

.field private mSACallback:Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;

.field private final mSAPBinder:Landroid/os/IBinder;

.field private mServiceConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sRetryHandler:Landroid/os/Handler;

    .line 51
    const/16 v0, 0x7d0

    sput v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sWaitTime:I

    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnRetryAttempts:I

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnectingPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mConnectionsMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "SAP"

    const-class v1, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/SAProvider$AccessoryProviderBinder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider$AccessoryProviderBinder;-><init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mSAPBinder:Landroid/os/IBinder;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mServiceConnected:Z

    .line 399
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;-><init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mLoginConnection:Landroid/content/ServiceConnection;

    .line 77
    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnectingPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/accessory/SAProvider;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;
    .param p1, "x1"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->requestServiceConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/service/accessory/SAProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->unregisterDataConnection(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/service/accessory/SAProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->renewAccessToken()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mConnectionsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Lcom/msc/sa/aidl/ISAService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/service/accessory/SAProvider;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;
    .param p1, "x1"    # Lcom/msc/sa/aidl/ISAService;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mSACallback:Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/service/accessory/SAProvider;Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;)Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;
    .param p1, "x1"    # Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mSACallback:Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mRegCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/service/accessory/SAProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mRegCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/service/accessory/SAProvider;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->requestAccessToken(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$802(Lcom/samsung/android/app/music/service/accessory/SAProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$902(Lcom/samsung/android/app/music/service/accessory/SAProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mAccessToken:Ljava/lang/String;

    return-object p1
.end method

.method private establishConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)Z
    .locals 4
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .prologue
    const/4 v1, 0x0

    .line 230
    if-eqz p1, :cond_0

    .line 231
    :try_start_0
    const-string v2, "SAP"

    const-string v3, "establishConnection() Making peer connection"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v2, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sRetryHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->resetRetryLogic()V

    .line 234
    sget v2, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnRetryAttempts:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnRetryAttempts:I

    .line 235
    sput-object p1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnectingPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 236
    sget-object v2, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnectingPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->requestServiceConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    const/4 v1, 0x1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->exitIndication()V

    goto :goto_0
.end method

.method private exitIndication()V
    .locals 4

    .prologue
    .line 283
    const-string v2, "SAP"

    const-string v3, "exitIndication()"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 286
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "msgId"

    const-string v3, "exit-ind"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->send(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "SAP"

    const-string v3, "exitIndication() JSONException"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private registerDataConnection(Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;)V
    .locals 4
    .param p1, "connection"    # Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;

    .prologue
    .line 172
    sget-object v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mConnectionsMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 173
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mConnectionsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->getConnectionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "SAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerDataConnection() registered connection with Connection Id :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->getConnectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mConnectionsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private renewAccessToken()V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "expired_access_token"

    iget-object v2, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->requestAccessToken(Landroid/os/Bundle;)V

    .line 365
    return-void
.end method

.method private requestAccessToken(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 368
    const-string v3, "SAP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAccessToken() mServiceConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mServiceConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mServiceConnected:Z

    if-nez v3, :cond_1

    .line 370
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 371
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v3, "com.osp.app.signin"

    const-string v4, "com.msc.sa.service.RequestService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object v3, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mLoginConnection:Landroid/content/ServiceConnection;

    .line 376
    invoke-virtual {v3, v2, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mServiceConnected:Z

    .line 377
    const-string v3, "SAP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAccessToken() Samsung Account Service launch result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mServiceConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mRegCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 386
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "api_server_url"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "birthday"

    aput-object v4, v0, v3

    .line 389
    .local v0, "additional":[Ljava/lang/String;
    const-string v3, "additional"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 390
    iget-object v3, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mISaService:Lcom/msc/sa/aidl/ISAService;

    const/16 v4, 0x3039

    iget-object v5, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mRegCode:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p1}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    .end local v0    # "additional":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SAP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAccessToken() Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->accountResponse(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private resetRetryLogic()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnRetryAttempts:I

    .line 225
    const/16 v0, 0x7d0

    sput v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sWaitTime:I

    .line 226
    return-void
.end method

.method private retryLogic(I)V
    .locals 6
    .param p1, "result"    # I

    .prologue
    .line 197
    sget v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnRetryAttempts:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 198
    const-string v1, "SAP"

    const-string/jumbo v2, "retryLogic() Maximum connection attempts exhausted. Connection failed"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->resetRetryLogic()V

    .line 221
    :goto_0
    return-void

    .line 202
    :cond_0
    sget v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sWaitTime:I

    mul-int/lit8 v1, v1, 0x2

    sput v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sWaitTime:I

    .line 203
    const-string v1, "SAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retryLogic() Connection attempt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnRetryAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has failed error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Try again after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sWaitTime:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnRetryAttempts:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnRetryAttempts:I

    .line 209
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sRetryHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/app/music/service/accessory/SAProvider$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider$1;-><init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;)V

    sget v3, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sWaitTime:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const-string v1, "SAP"

    const-string/jumbo v2, "retryLogic() Connection failed by IllegalArgumentException"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->exitIndication()V

    goto :goto_0
.end method

.method private secureSend(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "printLog"    # Z

    .prologue
    .line 328
    if-eqz p2, :cond_0

    .line 329
    const-string v0, "SAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secureSend() msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->hasConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    const-string v0, "SAP"

    const-string/jumbo v1, "secureSend() no connections"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0

    .line 338
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/SAProvider$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/accessory/SAProvider$3;-><init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/accessory/SAProvider$3;->start()V

    .line 358
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private send(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "printLog"    # Z

    .prologue
    .line 294
    if-eqz p2, :cond_0

    .line 295
    const-string v0, "SAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send() msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->hasConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    const-string v0, "SAP"

    const-string/jumbo v1, "send() no connections"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    .line 304
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/SAProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/accessory/SAProvider$2;-><init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/accessory/SAProvider$2;->start()V

    .line 324
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private unregisterDataConnection(I)V
    .locals 5
    .param p1, "connectionId"    # I

    .prologue
    .line 181
    sget-object v2, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mConnectionsMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 182
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mConnectionsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    sget-object v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mConnectionsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;

    .line 184
    .local v0, "conn":Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;->close()V

    .line 187
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mConnectionsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnectingPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 190
    .end local v0    # "conn":Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;
    :cond_1
    const-string v1, "SAP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterConnectionChannel() unregistered connection for ConsumerId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mConnectionsMap:Ljava/util/HashMap;

    .line 192
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    monitor-exit v2

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public accountResponse(Z)V
    .locals 7
    .param p1, "isSucceed"    # Z

    .prologue
    .line 255
    const-string v5, "SAP"

    const-string v6, "accountResponse()"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 258
    .local v2, "json":Lorg/json/JSONObject;
    const/4 v5, 0x1

    if-ne p1, v5, :cond_4

    .line 259
    iget-object v5, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v4

    .line 260
    .local v4, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "email":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mAccessToken:Ljava/lang/String;

    .line 263
    .local v3, "token":Ljava/lang/String;
    const-string v5, "msgId"

    const-string v6, "account-rsp"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v5, "token"

    if-eqz v3, :cond_0

    .line 265
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v3, "dummy"

    .line 264
    .end local v3    # "token":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v5, "email"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v1, ""

    .end local v1    # "email":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    .end local v4    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->secureSend(Ljava/lang/String;Z)Z

    .line 276
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 268
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_4
    const-string v5, "msgId"

    const-string v6, "account-rsp"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string/jumbo v5, "token"

    const-string v6, "dummy"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v5, "email"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "SAP"

    const-string v6, "accountResponse() JSONException"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected hasConnection()Z
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mConnectionsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mSAPBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 87
    const-string v2, "SAP"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider;->mContext:Landroid/content/Context;

    .line 89
    invoke-super {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->onCreate()V

    .line 90
    new-instance v1, Lcom/samsung/android/sdk/accessory/SA;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessory/SA;-><init>()V

    .line 92
    .local v1, "mAccessory":Lcom/samsung/android/sdk/accessory/SA;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->stopSelf()V

    goto :goto_0

    .line 93
    .end local v0    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "SAP"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-super {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->onDestroy()V

    .line 105
    return-void
.end method

.method protected onError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 123
    const-string v0, "SAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method protected onFindPeerAgentResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 2
    .param p1, "peerAgent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "result"    # I

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    const-string v0, "SAP"

    const-string v1, "onFindPeerAgentResponse() Peer Agent Available"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->establishConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)Z

    .line 138
    :cond_0
    return-void
.end method

.method protected onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3
    .param p1, "agents"    # [Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "result"    # I

    .prologue
    .line 142
    const-string v0, "SAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFindPeerAgentsResponse() agent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz p2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->establishConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)Z

    goto :goto_0
.end method

.method protected onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 3
    .param p1, "agent"    # Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .param p2, "uThisConnection"    # Lcom/samsung/android/sdk/accessory/SASocket;
    .param p3, "result"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 157
    const-string v0, "SAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnectionResponse() result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 159
    sput-object p1, Lcom/samsung/android/app/music/service/accessory/SAProvider;->sConnectingPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 160
    check-cast p2, Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;

    .end local p2    # "uThisConnection":Lcom/samsung/android/sdk/accessory/SASocket;
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->registerDataConnection(Lcom/samsung/android/app/music/service/accessory/SAProvider$SAProviderDataConnection;)V

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->resetRetryLogic()V

    .line 169
    :goto_0
    return-void

    .line 162
    .restart local p2    # "uThisConnection":Lcom/samsung/android/sdk/accessory/SASocket;
    :cond_0
    const/16 v0, 0x407

    if-eq p3, v0, :cond_1

    const/16 v0, 0x406

    if-ne p3, v0, :cond_2

    .line 164
    :cond_1
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->retryLogic(I)V

    goto :goto_0

    .line 166
    :cond_2
    const-string v0, "SAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnectionResponse() Connection failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->exitIndication()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 118
    :goto_0
    return v1

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand() action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const/4 v1, 0x2

    goto :goto_0

    .line 118
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAAgent;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    goto :goto_0
.end method
