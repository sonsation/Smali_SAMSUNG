.class public Lcom/samsung/android/app/music/service/milk/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/SAConstant;
.implements Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;
    }
.end annotation


# static fields
.field public static final ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "com.samsung.android.app.music.action.USER_INFO_CHANGED"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "extra_user_id"

.field private static final LOG_TAG:Ljava/lang/String; = "LoginManager"

.field private static volatile mInstance:Lcom/samsung/android/app/music/service/milk/LoginManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLoginRequestMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

.field private mRegistrationCode:Ljava/lang/String;

.field private mSABroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSABundle:Lcom/samsung/android/app/music/service/milk/SABundle;

.field private mSACallback:Lcom/msc/sa/aidl/ISACallback$Stub;

.field private mSAService:Lcom/msc/sa/aidl/ISAService;

.field private mSAServiceConnection:Landroid/content/ServiceConnection;

.field private mSASubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject",
            "<",
            "Lcom/samsung/android/app/music/service/milk/SABundle;",
            ">;"
        }
    .end annotation
.end field

.field mSATokenTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

.field private mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mLoginRequestMap:Landroid/util/SparseArray;

    .line 330
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/LoginManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/LoginManager$3;-><init>(Lcom/samsung/android/app/music/service/milk/LoginManager;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;-><init>(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSATokenTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    .line 339
    new-instance v0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/LoginManager$4;-><init>(Lcom/samsung/android/app/music/service/milk/LoginManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSAServiceConnection:Landroid/content/ServiceConnection;

    .line 375
    new-instance v0, Lcom/samsung/android/app/music/service/milk/LoginManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/LoginManager$5;-><init>(Lcom/samsung/android/app/music/service/milk/LoginManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSACallback:Lcom/msc/sa/aidl/ISACallback$Stub;

    .line 419
    new-instance v0, Lcom/samsung/android/app/music/service/milk/LoginManager$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/LoginManager$6;-><init>(Lcom/samsung/android/app/music/service/milk/LoginManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->initialize()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/common/model/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/service/milk/LoginManager;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->notifySATokenReceiveError(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/service/milk/LoginManager;Lcom/samsung/android/app/music/common/model/UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/model/UserInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->setUserInfo(Lcom/samsung/android/app/music/common/model/UserInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/service/milk/LoginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->requestLoginInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/LoginManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mLoginRequestMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lrx/subjects/PublishSubject;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSASubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/msc/sa/aidl/ISAService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSAService:Lcom/msc/sa/aidl/ISAService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/service/milk/LoginManager;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;
    .param p1, "x1"    # Lcom/msc/sa/aidl/ISAService;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSAService:Lcom/msc/sa/aidl/ISAService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/milk/LoginManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/msc/sa/aidl/ISACallback$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSACallback:Lcom/msc/sa/aidl/ISACallback$Stub;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/music/service/milk/LoginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mRegistrationCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/service/milk/SABundle;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABundle:Lcom/samsung/android/app/music/service/milk/SABundle;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/music/service/milk/LoginManager;Lcom/samsung/android/app/music/service/milk/SABundle;)Lcom/samsung/android/app/music/service/milk/SABundle;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;
    .param p1, "x1"    # Lcom/samsung/android/app/music/service/milk/SABundle;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABundle:Lcom/samsung/android/app/music/service/milk/SABundle;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/service/milk/LoginManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindSAService()V
    .locals 5

    .prologue
    .line 122
    const-string v2, "LoginManager"

    const-string v3, "bindSAService is called"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.osp.app.signin"

    const-string v3, "com.msc.sa.service.RequestService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSAServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 127
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 130
    :cond_0
    return-void
.end method

.method private broadcastUserInfoChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v1, "extra_user_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 509
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    sget-object v0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mInstance:Lcom/samsung/android/app/music/service/milk/LoginManager;

    if-nez v0, :cond_1

    .line 98
    const-class v1, Lcom/samsung/android/app/music/service/milk/LoginManager;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mInstance:Lcom/samsung/android/app/music/service/milk/LoginManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mInstance:Lcom/samsung/android/app/music/service/milk/LoginManager;

    .line 102
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mInstance:Lcom/samsung/android/app/music/service/milk/LoginManager;

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSABundle(Z)Lrx/Observable;
    .locals 6
    .param p1, "renew"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/service/milk/SABundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    const-string v3, "LoginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSABundle renew : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABundle:Lcom/samsung/android/app/music/service/milk/SABundle;

    if-eqz v3, :cond_0

    .line 309
    const-string v3, "LoginManager"

    const-string v4, "getSABundle just return prev SABundle"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABundle:Lcom/samsung/android/app/music/service/milk/SABundle;

    invoke-static {v3}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v3

    .line 327
    :goto_0
    return-object v3

    .line 312
    :cond_0
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSASubject:Lrx/subjects/PublishSubject;

    .line 313
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v1, "data":Landroid/os/Bundle;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "api_server_url"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "birthday"

    aput-object v4, v0, v3

    .line 315
    .local v0, "additional":[Ljava/lang/String;
    const-string v3, "additional"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 316
    if-eqz p1, :cond_1

    .line 317
    const-string v4, "expired_access_token"

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABundle:Lcom/samsung/android/app/music/service/milk/SABundle;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABundle:Lcom/samsung/android/app/music/service/milk/SABundle;

    .line 318
    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/SABundle;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 317
    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSAService:Lcom/msc/sa/aidl/ISAService;

    const/16 v4, 0x3039

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v1}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    .line 322
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSATokenTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->setTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSASubject:Lrx/subjects/PublishSubject;

    goto :goto_0

    .line 318
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 324
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v2}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v3

    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 112
    const-string v1, "LoginManager"

    const-string v2, "initialize is called"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->bindSAService()V

    .line 118
    new-instance v1, Lcom/samsung/android/app/music/common/model/UserInfo;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/model/UserInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    .line 119
    return-void
.end method

.method private isAccountChanged(Lcom/samsung/android/app/music/common/model/UserInfo;)Z
    .locals 6
    .param p1, "userInfo"    # Lcom/samsung/android/app/music/common/model/UserInfo;

    .prologue
    const/4 v0, 0x0

    .line 491
    const/4 v2, 0x0

    .line 492
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.android.app.music.KEY_ACCOUNT_INFO"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "prevAccountInfo":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/AES;->toSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "accountInfo":Ljava/lang/String;
    :cond_0
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 496
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.android.app.music.KEY_ACCOUNT_INFO"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 v2, 0x1

    .line 499
    :cond_1
    const-string v3, "LoginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAccountChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ prev : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cur : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return v2
.end method

.method private isSAServiceConnected()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSAService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifySATokenReceiveError(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 404
    const-string v3, "error_code"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "errorCode":Ljava/lang/String;
    const-string v3, "error_message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v3, "LoginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySATokenReceiveError() errorCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorMessage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v3, "SAC_0204"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SAC_0402"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.music.SA_ACCSSTOKEN_EXCEPTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "error_code"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v3, "error_message"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 417
    .end local v2    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSASubject:Lrx/subjects/PublishSubject;

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "SACallback is not success"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lrx/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private removeUserData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Account;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/FavoriteSyncManager;->resetFavorite()V

    .line 438
    return-void
.end method

.method private declared-synchronized requestLogin(Landroid/content/Context;IIZZZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "requestId"    # I
    .param p4, "forceLogin"    # Z
    .param p5, "withLoadSetting"    # Z
    .param p6, "renew"    # Z

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    const-string v0, "LoginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLogin appId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forceLogin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " withLoadSetting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " renew : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    const-string v0, "LoginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLogin hasDataConnection is false. mMilkService-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    const/4 v3, 0x3

    const/4 v4, 0x4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move v1, p2

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->invokeBroadcast(IIIILandroid/content/Intent;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->setUserStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 237
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->isSAServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    if-nez p6, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getSABundle(Z)Lrx/Observable;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/app/music/service/milk/LoginManager$2;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move v4, p2

    move v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/LoginManager$2;-><init>(Lcom/samsung/android/app/music/service/milk/LoginManager;ZIIZLandroid/content/Context;)V

    invoke-virtual {v8, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 269
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/LoginManager$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/app/music/service/milk/LoginManager$1;-><init>(Lcom/samsung/android/app/music/service/milk/LoginManager;II)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 285
    :cond_5
    :try_start_2
    new-instance v7, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-direct {v7, v0, p2, p3, v1}, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 287
    .local v7, "worker":Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;
    invoke-virtual {v7, p0}, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->setOnApiInterceptCallback(Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;)V

    .line 288
    invoke-virtual {v7}, Lcom/samsung/android/app/music/service/milk/worker/DeviceLoginWorker;->doWork()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private requestLoginInternal()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 297
    const-string v0, "LoginManager"

    const-string/jumbo v1, "requestLoginInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/LoginManager;->requestLogin(Landroid/content/Context;IIZZ)V

    .line 299
    return-void
.end method

.method private setUserInfo(Lcom/samsung/android/app/music/common/model/UserInfo;)V
    .locals 7
    .param p1, "userInfo"    # Lcom/samsung/android/app/music/common/model/UserInfo;

    .prologue
    .line 143
    const-string v4, "LoginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    iget-object v4, v4, Lcom/samsung/android/app/music/common/model/UserInfo;->streamingUser:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    iget-object v4, v4, Lcom/samsung/android/app/music/common/model/UserInfo;->streamingUser:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/music/common/model/UserInfo;->streamingUser:Ljava/lang/String;

    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.music.action.ACTION_STREAMING_AUTHORITY_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "extra_is_streaming_user"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    .end local v2    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/music/common/model/UserInfo;->refine(Landroid/content/Context;)Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    .line 157
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABundle:Lcom/samsung/android/app/music/service/milk/SABundle;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABundle:Lcom/samsung/android/app/music/service/milk/SABundle;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/SABundle;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/common/model/UserInfo;->setSAtoken(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABundle:Lcom/samsung/android/app/music/service/milk/SABundle;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/SABundle;->getBirthDay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/common/model/UserInfo;->setBirthday(Ljava/lang/String;)V

    .line 162
    :cond_1
    const-string v4, "1"

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    iget-object v5, v5, Lcom/samsung/android/app/music/common/model/UserInfo;->drmProductUser:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 163
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "orderId":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, LMarkany/MILK/DRM/DRMManager;->getInstance(Landroid/content/Context;)LMarkany/MILK/DRM/DRMManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LMarkany/MILK/DRM/DRMManager;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->updateDrmValidity()I

    move-result v0

    .line 175
    .local v0, "count":I
    const-string v4, "LoginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserInfo : updateDrmValidity : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v0    # "count":I
    .end local v3    # "orderId":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/service/milk/LoginManager;->isAccountChanged(Lcom/samsung/android/app/music/common/model/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->removeUserData()V

    .line 188
    :cond_4
    return-void

    .line 167
    .restart local v3    # "orderId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "LoginManager"

    const-string/jumbo v5, "setUserInfo : setUserId failed"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "orderId":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v4, "LoginManager"

    const-string/jumbo v5, "setUserInfo : KEY_MILK_DRM_SUBSCRIPTION_ORDERID set null"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->updateDrmValidity()I

    move-result v0

    .line 181
    .restart local v0    # "count":I
    const-string v4, "LoginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserInfo : updateDrmValidity : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDrmValidity()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v0, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "validity"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    .line 195
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MDrmTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 193
    invoke-static {v1, v2, v0, v3, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 442
    const-string v0, "LoginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;I)V
    .locals 10
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Ljava/lang/Object;
    .param p5, "errorCode"    # I

    .prologue
    .line 448
    const-string v0, "LoginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled requestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " responseType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    packed-switch p2, :pswitch_data_0

    .line 486
    .end local p4    # "successResult":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v8

    .line 487
    .local v8, "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    if-nez v8, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->broadcastUserInfoChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 488
    return-void

    .line 452
    .end local v8    # "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    .restart local p4    # "successResult":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mLoginRequestMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;

    .line 453
    .local v9, "req":Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;
    if-eqz v9, :cond_0

    .line 454
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mLoginRequestMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 456
    :cond_0
    packed-switch p3, :pswitch_data_1

    .line 474
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->setUserStatus(I)V

    goto :goto_0

    .line 458
    :pswitch_1
    check-cast p4, Lcom/samsung/android/app/music/common/model/UserInfo;

    .end local p4    # "successResult":Ljava/lang/Object;
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/service/milk/LoginManager;->setUserInfo(Lcom/samsung/android/app/music/common/model/UserInfo;)V

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->startSync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v7

    .line 462
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 466
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local p4    # "successResult":Ljava/lang/Object;
    :pswitch_2
    const/16 v0, 0xc1d

    if-ne p5, v0, :cond_1

    .line 467
    if-eqz v9, :cond_1

    .line 468
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    iget v2, v9, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;->appId:I

    iget v3, v9, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;->requestId:I

    iget-boolean v4, v9, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;->forceLogin:Z

    iget-boolean v5, v9, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;->withLoadSetting:Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/LoginManager;->requestLogin(Landroid/content/Context;IIZZZ)V

    goto :goto_2

    .line 479
    .end local v9    # "req":Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;
    :pswitch_3
    packed-switch p3, :pswitch_data_2

    goto :goto_0

    .line 481
    :pswitch_4
    check-cast p4, Lcom/samsung/android/app/music/common/model/UserInfo;

    .end local p4    # "successResult":Ljava/lang/Object;
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/service/milk/LoginManager;->setUserInfo(Lcom/samsung/android/app/music/common/model/UserInfo;)V

    goto :goto_0

    .line 487
    .restart local v8    # "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_2
    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 450
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 456
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 479
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "LoginManager"

    const-string/jumbo v1, "release is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSABundle:Lcom/samsung/android/app/music/service/milk/SABundle;

    .line 135
    new-instance v0, Lcom/samsung/android/app/music/common/model/UserInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/model/UserInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mUserInfo:Lcom/samsung/android/app/music/common/model/UserInfo;

    .line 136
    return-void
.end method

.method public requestLogin(Landroid/content/Context;IIZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "requestId"    # I
    .param p4, "forceLogin"    # Z
    .param p5, "withLoadSetting"    # Z

    .prologue
    .line 303
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/LoginManager;->requestLogin(Landroid/content/Context;IIZZZ)V

    .line 304
    return-void
.end method

.method public setMilkServiceInterface(Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 0
    .param p1, "milkService"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .line 109
    return-void
.end method
