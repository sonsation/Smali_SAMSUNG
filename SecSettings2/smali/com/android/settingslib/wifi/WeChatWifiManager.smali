.class public Lcom/android/settingslib/wifi/WeChatWifiManager;
.super Ljava/lang/Object;
.source "WeChatWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sWeChatWifiManager:Lcom/android/settingslib/wifi/WeChatWifiManager;


# instance fields
.field private mWeChatAps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/WeChatWifiManager;->DBG:Z

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    .line 27
    const-string/jumbo v0, "WeChatWifiManager"

    const-string/jumbo v1, "WeChatWifiManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WeChatWifiManager;->init()V

    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/settingslib/wifi/WeChatWifiManager;
    .locals 2

    .prologue
    const-class v1, Lcom/android/settingslib/wifi/WeChatWifiManager;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/android/settingslib/wifi/WeChatWifiManager;->sWeChatWifiManager:Lcom/android/settingslib/wifi/WeChatWifiManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/android/settingslib/wifi/WeChatWifiManager;

    invoke-direct {v0}, Lcom/android/settingslib/wifi/WeChatWifiManager;-><init>()V

    sput-object v0, Lcom/android/settingslib/wifi/WeChatWifiManager;->sWeChatWifiManager:Lcom/android/settingslib/wifi/WeChatWifiManager;

    .line 36
    :cond_0
    sget-object v0, Lcom/android/settingslib/wifi/WeChatWifiManager;->sWeChatWifiManager:Lcom/android/settingslib/wifi/WeChatWifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 45
    return-void
.end method

.method public getApCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStoreNameIfWeChatAp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 79
    if-eqz p2, :cond_4

    .line 80
    iget-object v1, p0, Lcom/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;

    .line 81
    .local v0, "info":Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;
    if-nez v0, :cond_0

    .line 82
    return-object v4

    .line 85
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, v0, Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    :cond_1
    const-string/jumbo v2, "WeChatWifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStoreNameIfWeChatAp, found WeChat AP, ssid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    sget-boolean v1, Lcom/android/settingslib/wifi/WeChatWifiManager;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    const-string/jumbo v3, ", storeName: "

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    iget-object v3, v0, Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;->storeName:Ljava/lang/String;

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    const-string/jumbo v3, ", size: "

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    iget-object v3, p0, Lcom/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, v0, Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;->storeName:Ljava/lang/String;

    return-object v1

    .line 86
    :cond_2
    const-string/jumbo v1, "WeChatWifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStoreNameIfWeChatAp, bssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    const-string/jumbo v3, " is same but ssid is diffrenct. input: "

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    const-string/jumbo v3, ", list: "

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    iget-object v3, v0, Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;->ssid:Ljava/lang/String;

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v4

    .line 92
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_0

    .line 99
    .end local v0    # "info":Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;
    :cond_4
    return-object v4
.end method

.method public init()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    .line 39
    return-void
.end method

.method public setWeChatAccessPoint(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "ssidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "bssidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "storeNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "WeChatWifiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWeChatAccessPoint, ssidList size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 55
    const-string/jumbo v7, ", bssidList size: "

    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 55
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 55
    const-string/jumbo v7, ", storeNameList size: "

    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 55
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 58
    :cond_0
    const-string/jumbo v5, "WeChatWifiManager"

    const-string/jumbo v6, "setWeChatAccessPoint, size is different"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v5, 0x0

    return v5

    .line 62
    :cond_1
    iget-object v5, p0, Lcom/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 64
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65
    .local v3, "ssid":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "bssid":Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 68
    .local v4, "storeName":Ljava/lang/String;
    new-instance v2, Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;-><init>(Lcom/android/settingslib/wifi/WeChatWifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v2, "newInfo":Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;
    iget-object v5, p0, Lcom/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-boolean v5, Lcom/android/settingslib/wifi/WeChatWifiManager;->DBG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "WeChatWifiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v2    # "newInfo":Lcom/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "storeName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "WeChatWifiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWeChatAccessPoint, mWeChatAps size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v5, 0x1

    return v5
.end method
