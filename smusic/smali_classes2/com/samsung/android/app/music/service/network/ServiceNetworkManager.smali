.class public final Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;
.super Ljava/lang/Object;
.source "ServiceNetworkManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"


# instance fields
.field private mChangedListener:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

.field private final mContext:Landroid/content/Context;

.field private mInit:Z

.field private mMobileEnabled:Z

.field private mMobileSettingEnabled:Z

.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private final mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private mWifiEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingManager"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mInit:Z

    .line 75
    new-instance v0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;-><init>(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;-><init>(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mMobileEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->notifyState()V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mMobileSettingEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    return-object v0
.end method

.method private ensureNetworkStatus()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mInit:Z

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->registerIntentFilter()V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isMobileDataOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mMobileSettingEnabled:Z

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mWifiEnabled:Z

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mMobileEnabled:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mInit:Z

    .line 62
    :cond_0
    return-void
.end method

.method private notifyState()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mChangedListener:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mChangedListener:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->isAvailableNetwork()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;->onNetworkStateChanged(Z)V

    .line 108
    :cond_0
    return-void
.end method

.method private registerIntentFilter()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 68
    return-void
.end method

.method private unregisterIntentFilter()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 73
    return-void
.end method


# virtual methods
.method public isAvailableNetwork()Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->ensureNetworkStatus()V

    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mWifiEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mMobileSettingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mMobileEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mInit:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->unregisterIntentFilter()V

    .line 115
    :cond_0
    return-void
.end method

.method public setOnNetworkStateChangedListener(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->mChangedListener:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->ensureNetworkStatus()V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->isAvailableNetwork()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;->onNetworkStateChanged(Z)V

    .line 47
    :cond_0
    return-void
.end method
