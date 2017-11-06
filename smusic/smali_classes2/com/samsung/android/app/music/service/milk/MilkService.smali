.class public Lcom/samsung/android/app/music/service/milk/MilkService;
.super Landroid/app/Service;
.source "MilkService.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkService"

.field private static final mServiceLocker:Ljava/lang/Object;


# instance fields
.field private mAppCount:Ljava/lang/Integer;

.field private mBinder:Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginManager:Lcom/samsung/android/app/music/service/milk/LoginManager;

.field private mReqId:Ljava/lang/Integer;

.field private mServiceCommandReceivers:[Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

.field private final mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private mSyncManager:Lcom/samsung/android/app/music/service/milk/SyncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/MilkService;->mServiceLocker:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mAppCount:Ljava/lang/Integer;

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mReqId:Ljava/lang/Integer;

    .line 239
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkService$1;-><init>(Lcom/samsung/android/app/music/service/milk/MilkService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 354
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkService$2;-><init>(Lcom/samsung/android/app/music/service/milk/MilkService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 365
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkService$3;-><init>(Lcom/samsung/android/app/music/service/milk/MilkService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mBinder:Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/MilkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/MilkService;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->startClient()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/SyncManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/MilkService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mSyncManager:Lcom/samsung/android/app/music/service/milk/SyncManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/MilkService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/MilkService;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getCookie()I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/samsung/android/app/music/service/milk/MilkService;->mServiceLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/milk/MilkService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/MilkService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/service/milk/MilkService;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/MilkService;
    .param p1, "x1"    # Landroid/os/RemoteCallbackList;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/LoginManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/MilkService;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mLoginManager:Lcom/samsung/android/app/music/service/milk/LoginManager;

    return-object v0
.end method

.method private ensureServiceCommandReceivers()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mServiceCommandReceivers:[Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mServiceCommandReceivers:[Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    .line 218
    :cond_0
    return-void
.end method

.method private getCookie()I
    .locals 3

    .prologue
    .line 225
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 226
    .local v0, "random":I
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mAppCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mAppCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 227
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mAppCount:Ljava/lang/Integer;

    .line 229
    :cond_0
    rem-int/lit16 v1, v0, 0x3e8

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mAppCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private initBroadcastReceiver()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "com.samsung.android.app.music.core.state.EXIT_MUSIC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    return-void
.end method

.method private isServerRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v0, "com.samsung.android.app.music.action.ACTION_REQ_RESET_DORMANCY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized startClient()V
    .locals 8

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    const-string v5, "MilkService"

    const-string/jumbo v6, "startClient() called"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    .line 255
    .local v0, "hasDataConnection":Z
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v5

    const-string v6, "mobile_data"

    const/4 v7, 0x0

    .line 256
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 257
    .local v3, "mobileDataAllow":Z
    const-string v5, "MilkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startClient hasDataConnection : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mobileDataAllow : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->isInitDone()Z

    move-result v1

    .line 262
    .local v1, "isInitDone":Z
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->isInitializing()Z

    move-result v2

    .line 263
    .local v2, "isInitializing":Z
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 264
    new-instance v4, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v7

    invoke-direct {v4, v5, v6, v7, p0}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 267
    .local v4, "worker":Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;
    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->doWork()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .end local v1    # "isInitDone":Z
    .end local v2    # "isInitializing":Z
    .end local v4    # "worker":Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 269
    .restart local v1    # "isInitDone":Z
    .restart local v2    # "isInitializing":Z
    :cond_1
    :try_start_1
    new-instance v4, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v7

    invoke-direct {v4, v5, v6, v7, p0}, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 272
    .local v4, "worker":Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;
    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;->doWork()V

    .line 273
    const-string v5, "MilkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startClient isInitDone - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isInitializing - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    .end local v0    # "hasDataConnection":Z
    .end local v1    # "isInitDone":Z
    .end local v2    # "isInitializing":Z
    .end local v3    # "mobileDataAllow":Z
    .end local v4    # "worker":Lcom/samsung/android/app/music/service/milk/worker/CheckCountryWorker;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mBinder:Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    return-object v0
.end method

.method public getNextReqId()I
    .locals 4

    .prologue
    .line 305
    const/4 v0, -0x1

    .line 306
    .local v0, "ret":I
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mReqId:Ljava/lang/Integer;

    monitor-enter v2

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    .line 308
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mReqId:Ljava/lang/Integer;

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mReqId:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mReqId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 311
    monitor-exit v2

    .line 312
    return v0

    .line 311
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized invokeBroadcast(IIIILandroid/content/Intent;)V
    .locals 9
    .param p1, "appId"    # I
    .param p2, "reqId"    # I
    .param p3, "reqType"    # I
    .param p4, "rspType"    # I
    .param p5, "object"    # Landroid/content/Intent;

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 320
    .local v1, "N":I
    const-string v6, "MilkService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invokeBroadCast() invokeBroadCast : N = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    const/4 v5, 0x0

    .line 322
    .local v5, "invoked_cnt":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 325
    if-ltz p1, :cond_1

    .line 326
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 327
    .local v3, "handle":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 328
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;

    .line 329
    invoke-interface {v6, p2, p3, p4, p5}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;->onServiceResult(IIILandroid/content/Intent;)V

    .line 330
    add-int/lit8 v5, v5, 0x1

    .line 322
    .end local v3    # "handle":Ljava/lang/Integer;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;

    .line 334
    invoke-interface {v6, p2, p3, p4, p5}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;->onServiceResult(IIILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 337
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 318
    .end local v1    # "N":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "index":I
    .end local v5    # "invoked_cnt":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 343
    .restart local v1    # "N":I
    .restart local v4    # "index":I
    .restart local v5    # "invoked_cnt":I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    :goto_2
    monitor-exit p0

    return-void

    .line 344
    :catch_1
    move-exception v2

    .line 345
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mBinder:Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 181
    const-string v0, "MilkService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 183
    sget-object v1, Lcom/samsung/android/app/music/service/milk/MilkService;->mServiceLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 185
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mLoginManager:Lcom/samsung/android/app/music/service/milk/LoginManager;

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mLoginManager:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->setMilkServiceInterface(Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/SyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mSyncManager:Lcom/samsung/android/app/music/service/milk/SyncManager;

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mSyncManager:Lcom/samsung/android/app/music/service/milk/SyncManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->setMilkServiceInterface(Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 190
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->initBroadcastReceiver()V

    .line 192
    return-void

    .line 185
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "MilkService"

    const-string v1, "onDestroy() called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mLoginManager:Lcom/samsung/android/app/music/service/milk/LoginManager;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mLoginManager:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->release()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mSyncManager:Lcom/samsung/android/app/music/service/milk/SyncManager;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mSyncManager:Lcom/samsung/android/app/music/service/milk/SyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->release()V

    .line 290
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->release()V

    .line 291
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    .line 196
    const-string v1, "MilkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand intent :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    if-nez p1, :cond_1

    .line 207
    :cond_0
    return v4

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->isServerRequest(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    const-string v1, "com.samsung.android.app.music.action.EXTRA_NEXT_REQ_ID"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getNextReqId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->ensureServiceCommandReceivers()V

    .line 204
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->mServiceCommandReceivers:[Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 205
    .local v0, "r":Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;->onStartCommand(Landroid/content/Intent;)Z

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 295
    const-string v0, "MilkService"

    const-string v1, "onTaskRemoved() called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->clearProperties()V

    .line 297
    return-void
.end method
