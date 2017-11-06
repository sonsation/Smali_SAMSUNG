.class public Lcom/samsung/android/library/beaconmanager/BleScanManager;
.super Ljava/lang/Object;
.source "BleScanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;
    }
.end annotation


# static fields
.field private static final MSG_BIND:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static TAG_MODULE:Ljava/lang/String; = null

.field private static final TAG_Package:Ljava/lang/String; = "BeaconManager"


# instance fields
.field private mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

.field private mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsBind:Z

.field private mLock:Ljava/lang/Object;

.field private mScanCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceStateCallback:Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;

.field private mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

.field private mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "BleScanManager(160607)"

    sput-object v0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG_MODULE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v6, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBind:Z

    .line 25
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mLock:Ljava/lang/Object;

    .line 30
    new-instance v3, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 53
    new-instance v3, Lcom/samsung/android/library/beaconmanager/BleScanManager$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$2;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    .line 63
    new-instance v3, Lcom/samsung/android/library/beaconmanager/BleScanManager$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$3;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mScanCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    .line 72
    new-instance v3, Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/library/beaconmanager/BleScanManager$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$4;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mHandler:Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG_MODULE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v1, "it":Landroid/content/Intent;
    const-string v3, "com.samsung.android.beaconmanager"

    const-string v4, "com.samsung.android.beaconmanager.BeaconService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    const-string v3, "BeaconManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BleScanManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bind sendMessage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void

    .line 117
    .end local v1    # "it":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceStateCallback"    # Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;

    .prologue
    const/4 v6, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v6, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBind:Z

    .line 25
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mLock:Ljava/lang/Object;

    .line 30
    new-instance v3, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 53
    new-instance v3, Lcom/samsung/android/library/beaconmanager/BleScanManager$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$2;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    .line 63
    new-instance v3, Lcom/samsung/android/library/beaconmanager/BleScanManager$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$3;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mScanCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    .line 72
    new-instance v3, Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/library/beaconmanager/BleScanManager$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$4;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG_MODULE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v1, "it":Landroid/content/Intent;
    const-string v3, "com.samsung.android.beaconmanager"

    const-string v4, "com.samsung.android.beaconmanager.BeaconService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 105
    iput-object p2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceStateCallback:Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;

    .line 107
    const-string v3, "BeaconManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BleScanManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bind sendMessage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    return-void

    .line 96
    .end local v1    # "it":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/IBleProxyService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/BleScanManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/library/beaconmanager/BleScanManager;Lcom/samsung/android/library/beaconmanager/IBleProxyService;)Lcom/samsung/android/library/beaconmanager/IBleProxyService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/BleScanManager;
    .param p1, "x1"    # Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/BleScanManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceStateCallback:Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/BleScanManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/BleScanManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/library/beaconmanager/BleScanManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->bind()V

    return-void
.end method

.method private bind()V
    .locals 5

    .prologue
    .line 130
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package"

    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.beaconmanager"

    const-string v4, "com.samsung.android.beaconmanager.BeaconService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "BeaconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BleScanManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bindService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 139
    const-string v1, "BeaconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BleScanManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bind ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBind:Z

    .line 144
    :goto_0
    monitor-exit v2

    .line 145
    return-void

    .line 142
    :cond_0
    const-string v1, "BeaconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BleScanManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " No ..bindService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getBeaconManagerVersion()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v4, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-nez v4, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v3

    .line 262
    :cond_1
    const/4 v2, 0x0

    .line 265
    .local v2, "m":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getBeaconManagerVersion"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 270
    :goto_1
    const/4 v3, 0x0

    .line 271
    .local v3, "version":I
    if-eqz v2, :cond_0

    .line 273
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    goto :goto_0

    .line 266
    .end local v3    # "version":I
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e1":Ljava/lang/NoSuchMethodException;
    const-string v4, "BeaconManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NoSuchMethodException exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 274
    .end local v1    # "e1":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "version":I
    :catch_1
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v4, "BeaconManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Invoke exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public registerScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "mask"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    .line 226
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mScanCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/samsung/android/library/beaconmanager/IBleProxyService;->registerScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;I)Z
    .locals 4
    .param p1, "tvCallback"    # Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 174
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz v1, :cond_0

    .line 175
    if-nez p1, :cond_1

    .line 176
    const-string v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "registerTvCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fail : tvCallback is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    const-string v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "registerTvCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "success : tvCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    if-eqz v1, :cond_2

    .line 184
    const-string v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "registerTvCallback, That work is already under way."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    .line 190
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/library/beaconmanager/IBleProxyService;->registerTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;I)V

    .line 191
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public terminate()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 150
    :try_start_0
    const-string v1, "BeaconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BleScanManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " terminate unbind service, isBind : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBind:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v1, "BeaconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BleScanManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " terminate ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBind:Z

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 159
    :try_start_1
    const-string v1, "BeaconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BleScanManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " terminate unregisterTvCallback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    invoke-interface {v1, v3}, Lcom/samsung/android/library/beaconmanager/IBleProxyService;->unregisterTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBind:Z

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    .line 169
    monitor-exit v2

    .line 170
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unregisterScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;)Z
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    if-nez v1, :cond_0

    .line 237
    const-string v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Callback is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return v0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    const-string v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Do not unregisterScanCallback.Because Callback is not equals !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mScanCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/library/beaconmanager/IBleProxyService;->unregisterScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;)V

    .line 249
    iput-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    .line 250
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :cond_2
    iput-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    goto :goto_0
.end method

.method public unregisterTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    if-nez v1, :cond_0

    .line 199
    const-string v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", TVCallback is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return v0

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    const-string v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Do not unregisterCallBack.Because TVCallback is not equals !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/library/beaconmanager/IBleProxyService;->unregisterTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;)V

    .line 212
    iput-object v4, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    .line 213
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :cond_2
    const-string v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", BleService null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object v4, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    goto :goto_0
.end method
