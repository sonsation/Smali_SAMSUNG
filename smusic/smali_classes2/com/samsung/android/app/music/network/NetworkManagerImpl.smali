.class public Lcom/samsung/android/app/music/network/NetworkManagerImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "NetworkManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

.field private mOnNetworkStateChangedListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStarted:Z

.field private mPendingNotifyStateChanged:Z

.field private final mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mOnNetworkStateChangedListeners:Ljava/util/HashSet;

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    .line 116
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl$1;-><init>(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl$2;-><init>(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->updateNetworkState()V

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mOnStarted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->updateNetworkState()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->notifyStateChanged()V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/network/NetworkManagerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/network/NetworkManagerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mPendingNotifyStateChanged:Z

    return p1
.end method

.method private notifyStateChanged()V
    .locals 4

    .prologue
    .line 130
    sget-object v1, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyStateChanged() | mPendingNotifyStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mPendingNotifyStateChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mOnNetworkStateChangedListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 133
    .local v0, "listener":Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;->onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    goto :goto_0

    .line 135
    .end local v0    # "listener":Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mPendingNotifyStateChanged:Z

    .line 136
    return-void
.end method

.method private updateNetworkState()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->appSettings:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    .line 103
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->wifi:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->mobileData:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo;->wifi:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo;->appSettings:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo;->mobileData:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    .line 109
    sget-object v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkState() | connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | wifi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo;->wifi:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mobileData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo;->mobileData:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | appSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo;->appSettings:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mNetworkInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;->onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mOnNetworkStateChangedListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkInfo:Lcom/samsung/android/app/music/network/NetworkInfo;

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Z)V

    .line 49
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->init()V

    .line 62
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->release()V

    .line 81
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mOnStarted:Z

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->updateNetworkState()V

    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mPendingNotifyStateChanged:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->notifyStateChanged()V

    .line 71
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mOnStarted:Z

    .line 76
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mOnNetworkStateChangedListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 57
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->mOnNetworkStateChangedListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method
