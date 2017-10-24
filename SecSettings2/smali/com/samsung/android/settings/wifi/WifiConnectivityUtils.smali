.class public Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;
.super Ljava/lang/Object;
.source "WifiConnectivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiConnectivityUtils$1;
    }
.end annotation


# static fields
.field private static mServer:Ljava/net/InetAddress;

.field private static mUrl:Ljava/lang/String;

.field private static mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forgetNetWork(Landroid/net/wifi/WifiManager;)V
    .locals 6
    .param p0, "wifimanager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, "configNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 271
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 272
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v3, "SetupWizard --> WifiConnectivityUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Forgetting Wi-Fi networks "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NetworkId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 273
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 272
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    sget-object v4, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mWiFiActionListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p0, v3, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 268
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static getWifiNetworkID(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 242
    if-eqz p0, :cond_0

    .line 243
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 244
    .local v0, "connInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    return v1

    .line 248
    .end local v0    # "connInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static isCaptivePortalNetwork()Z
    .locals 10

    .prologue
    .line 108
    const-string/jumbo v6, "SetupWizard --> WifiConnectivityUtils"

    .line 109
    const-string/jumbo v7, " Checking whther connected Wi-Fi needs Authentication for using Internet"

    .line 108
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v5, 0x0

    .line 111
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 112
    .local v3, "isCaptivePortal":Z
    sget-object v6, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    if-eqz v6, :cond_0

    .line 113
    sget-object v6, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "hostAddress":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/generate_204"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    .line 116
    const-string/jumbo v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Checking Connection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :try_start_0
    new-instance v4, Ljava/net/URL;

    sget-object v6, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 120
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 121
    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 122
    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 123
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 124
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 125
    const-string/jumbo v6, "SetupWizard --> WifiConnectivityUtils"

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Url connection response code :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 127
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const/16 v7, 0xcc

    if-eq v6, v7, :cond_1

    const/4 v3, 0x1

    .line 143
    :goto_0
    if-eqz v5, :cond_0

    .line 144
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    :try_start_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    .end local v2    # "hostAddress":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_1
    return v3

    .line 129
    .restart local v2    # "hostAddress":Ljava/lang/String;
    .restart local v4    # "url":Ljava/net/URL;
    .restart local v5    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 136
    :try_start_2
    const-string/jumbo v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Seems to be portal, with exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    const/4 v3, 0x1

    .line 143
    :goto_2
    if-eqz v5, :cond_0

    .line 144
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 147
    :catch_2
    move-exception v1

    .line 148
    const-string/jumbo v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    :cond_2
    :try_start_4
    const-string/jumbo v6, "SetupWizard --> WifiConnectivityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Probably not a portal: exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    const/4 v3, 0x0

    goto :goto_2

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 143
    if-eqz v5, :cond_3

    .line 144
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 142
    :cond_3
    :goto_3
    throw v6

    .line 147
    :catch_3
    move-exception v1

    .line 148
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "SetupWizard --> WifiConnectivityUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static isDataAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 77
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 78
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 79
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    .line 80
    const-string/jumbo v2, "SetupWizard --> WifiConnectivityUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTypeName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v2, 0x1

    return v2

    .line 83
    :cond_0
    const-string/jumbo v2, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v3, "wifi/data not available"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v2, 0x0

    return v2
.end method

.method public static isDreamSqDevice()Z
    .locals 2

    .prologue
    .line 192
    const-string/jumbo v0, "dreamqltesq"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "dream2qltesq"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGraceDevice()Z
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v0, "graceqltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHeroDevice()Z
    .locals 2

    .prologue
    .line 184
    const-string/jumbo v0, "heroqltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "hero2qltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHeroSqDevice()Z
    .locals 2

    .prologue
    .line 188
    const-string/jumbo v0, "heroqltesq"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "hero2qltesq"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isJ7PandaDevice()Z
    .locals 2

    .prologue
    .line 208
    const-string/jumbo v0, "j7popltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNobleDevice()Z
    .locals 2

    .prologue
    .line 200
    const-string/jumbo v0, "nobleltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTabE8Device()Z
    .locals 2

    .prologue
    .line 172
    const-string/jumbo v0, "gtesltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTabEDevice()Z
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "gtelltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTabS2Device()Z
    .locals 2

    .prologue
    .line 168
    const-string/jumbo v0, "gts210ltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTabS2RefreshDevice()Z
    .locals 2

    .prologue
    .line 196
    const-string/jumbo v0, "gts210veltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isTabE8Device()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isTabEDevice()Z

    move-result v0

    .line 212
    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isTabS2Device()Z

    move-result v0

    .line 212
    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isTabS2RefreshDevice()Z

    move-result v0

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isV2GuiSupported()Z
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isJ7PandaDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isDreamSqDevice()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWiFiConnAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 49
    const-string/jumbo v3, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v5, " checking the Internet connection Availibility"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 52
    .local v2, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    :goto_0
    if-nez v3, :cond_1

    .line 53
    const-string/jumbo v3, "SetupWizard --> WifiConnectivityUtils"

    const-string/jumbo v5, "wifi is not available"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return v4

    :cond_0
    move v3, v4

    .line 52
    goto :goto_0

    .line 57
    :cond_1
    const-string/jumbo v3, "connectivitycheck.android.com"

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    .line 58
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    if-eqz v3, :cond_2

    .line 59
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->mServer:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "hostaddress":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 62
    const-string/jumbo v3, "SetupWizard --> WifiConnectivityUtils"

    .line 63
    const-string/jumbo v5, "hostaddress lookup failed, so network has no Internet access"

    .line 62
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v4

    .line 67
    .end local v1    # "hostaddress":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "SetupWizard --> WifiConnectivityUtils"

    .line 68
    const-string/jumbo v5, "  Lookup host failed, so network has no Internet access"

    .line 67
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v4

    .line 72
    .restart local v1    # "hostaddress":Ljava/lang/String;
    :cond_3
    return v6
.end method

.method public static isZero2Device()Z
    .locals 2

    .prologue
    .line 204
    const-string/jumbo v0, "zenltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isZeroDevice()Z
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "zeroltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const-string/jumbo v0, "zeroqltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isZeroFDevice()Z
    .locals 2

    .prologue
    .line 158
    const-string/jumbo v0, "zerofqltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const-string/jumbo v0, "zerofltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 91
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    .local v2, "inetAddress":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 97
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    .line 98
    return-object v0

    .line 92
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v2    # "inetAddress":[Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 94
    return-object v6

    .line 96
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v2    # "inetAddress":[Ljava/net/InetAddress;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    return-object v6
.end method

.method public static setCustomTitle(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 252
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 254
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 257
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 261
    .end local v1    # "wmLp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->shouldShowSystemUiInFullScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 263
    .local v0, "systemUiVisibility":I
    or-int/lit16 v0, v0, 0x400

    .line 264
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 251
    .end local v0    # "systemUiVisibility":I
    :cond_1
    return-void
.end method

.method public static shouldAnimateWifiImage()Z
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isGraceDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isHeroDevice()Z

    move-result v0

    .line 219
    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isHeroSqDevice()Z

    move-result v0

    .line 219
    if-nez v0, :cond_0

    .line 222
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isNobleDevice()Z

    move-result v0

    .line 219
    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isZero2Device()Z

    move-result v0

    .line 219
    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isZeroFDevice()Z

    move-result v0

    .line 219
    if-nez v0, :cond_0

    .line 225
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isZeroDevice()Z

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static shouldShowSystemUiInFullScreen()Z
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isGraceDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isHeroDevice()Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isHeroSqDevice()Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isDreamSqDevice()Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isNobleDevice()Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isZero2Device()Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 235
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isZeroFDevice()Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 236
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isZeroDevice()Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isJ7PandaDevice()Z

    move-result v0

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportsSoftNavigationKeys()Z
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isDreamSqDevice()Z

    move-result v0

    return v0
.end method
