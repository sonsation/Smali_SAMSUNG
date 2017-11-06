.class public Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;
.super Ljava/lang/Object;
.source "ServiceNetworkManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static volatile sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

.field private final mOnNetworkStateChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mOnNetworkStateChangedListeners:Ljava/util/Set;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v1

    .line 48
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->obtainNetworkInfo(ZZ)Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    .line 50
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static obtainInstance()Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call createInstance method first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    return-object v0
.end method

.method private updateNetwork(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const-string v2, "networkType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "networkType":I
    const/4 v1, -0x1

    .line 72
    .local v1, "retType":I
    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return v1

    .line 74
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    iget-boolean v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->wifiEnabled:Z

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v3

    .line 74
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->obtainNetworkInfo(ZZ)Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    .line 76
    const/4 v1, 0x0

    .line 77
    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    iget-boolean v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->mobileEnabled:Z

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->obtainNetworkInfo(ZZ)Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    .line 82
    const/4 v1, 0x1

    .line 83
    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    const/16 v1, 0x3e7

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;->onNetworkStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;I)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mOnNetworkStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mOnNetworkStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 104
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mOnNetworkStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public updateNetworkInfoByIntent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "info"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->updateNetwork(Landroid/os/Bundle;)I

    move-result v1

    .line 62
    .local v1, "type":I
    const-string v2, "SMUSIC-SV"

    const-string v3, "NetworkStateChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mOnNetworkStateChangedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;

    .line 64
    .local v0, "listener":Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    invoke-interface {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;->onNetworkStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;I)V

    goto :goto_0

    .line 66
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;
    :cond_0
    return-void
.end method
