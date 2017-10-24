.class public final Lcom/kddi/android/CpaManager;
.super Ljava/lang/Object;
.source "CpaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/CpaManager$ConnInfo;,
        Lcom/kddi/android/CpaManager$Settings;
    }
.end annotation


# static fields
.field private static final APN_INDEX:I = 0x2

.field public static AUTHENTICATION_ERROR:I = 0x0

.field private static final CARRIER_ENABLED_INDEX:I = 0x4

.field private static final CHANGE_MODE_REQUEST_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final DISCONNECTED:I = 0x4

.field public static final DISCONNECTING:I = 0x3

.field private static final ID_INDEX:I = 0x0

.field private static MODE_CPA:Ljava/lang/String; = null

.field private static MODE_DEFAULT:Ljava/lang/String; = null

.field private static MODE_NAVI:Ljava/lang/String; = null

.field private static final NAME_INDEX:I = 0x1

.field public static PARAMETER_ERROR:I = 0x0

.field public static RADIO_NOT_AVAILABLE:I = 0x0

.field public static SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CpaManager"

.field private static final TYPES_INDEX:I = 0x3

.field public static UNKNOWN_ERROR:I


# instance fields
.field private DBG:Z

.field mContext:Landroid/content/Context;

.field private mSelectedKey:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "NAVI"

    sput-object v0, Lcom/kddi/android/CpaManager;->MODE_NAVI:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "DEFAULT"

    sput-object v0, Lcom/kddi/android/CpaManager;->MODE_DEFAULT:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "DEFAULT_ON_CPA"

    sput-object v0, Lcom/kddi/android/CpaManager;->MODE_CPA:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/kddi/android/CpaManager;->SUCCESS:I

    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/kddi/android/CpaManager;->PARAMETER_ERROR:I

    .line 40
    const/4 v0, -0x2

    sput v0, Lcom/kddi/android/CpaManager;->RADIO_NOT_AVAILABLE:I

    .line 41
    const/4 v0, -0x3

    sput v0, Lcom/kddi/android/CpaManager;->AUTHENTICATION_ERROR:I

    .line 42
    const/4 v0, -0x4

    sput v0, Lcom/kddi/android/CpaManager;->UNKNOWN_ERROR:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    .line 54
    iput v1, p0, Lcom/kddi/android/CpaManager;->mState:I

    .line 104
    const-string/jumbo v0, "CpaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CpaManager constructor! context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-nez p1, :cond_1

    .line 107
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0

    .line 109
    :cond_1
    iput-object p1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    const-string/jumbo v0, "CpaManager"

    const-string/jumbo v1, "CpaManager permission err!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "checkPermission() return false"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    return-void
.end method

.method private checkPermission()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 215
    iget-object v1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.kddi.android.permission.MANAGE_CPA"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, "permissionGrantStatus":I
    if-nez v0, :cond_0

    .line 218
    const/4 v1, 0x1

    return v1

    .line 220
    :cond_0
    const-string/jumbo v1, "CpaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPermission() err!! permissionGrantStatus ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "permissionGrantStatus":I
    :goto_0
    return v4

    .line 223
    :cond_1
    const-string/jumbo v1, "CpaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPermission() err!! mContext ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 236
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 237
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 239
    .local v3, "interf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "pdp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "lo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 241
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 242
    .local v4, "ips":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 244
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    :goto_0
    if-nez v5, :cond_1

    .line 245
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 244
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "interf":Ljava/net/NetworkInterface;
    .end local v4    # "ips":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v1

    .line 250
    .local v1, "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "CpaManager"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v5, Landroid/os/RemoteException;

    const-string/jumbo v6, "error!! get local address"

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 253
    .end local v1    # "ex":Ljava/net/SocketException;
    :cond_3
    const-string/jumbo v5, "CpaManager"

    const-string/jumbo v6, "getLocalIpAddress() == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v7
.end method

.method private getState()I
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    const-string/jumbo v1, "kddi_cpa_state"

    const/4 v2, 0x0

    .line 230
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public changeMode(Ljava/lang/String;Lcom/kddi/android/CpaManager$Settings;)I
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/kddi/android/CpaManager$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 129
    const-string/jumbo v2, "CpaManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeMode() mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " settings="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mode is null!! "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_0
    sget-object v2, Lcom/kddi/android/CpaManager;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 137
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mode is navi but settings is null!! "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v2, "mode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    if-eqz p2, :cond_3

    .line 147
    const-string/jumbo v2, "settings.apn"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v2, "settings.userId"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v2, "settings.password"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v2, "settings.authType"

    iget v3, p2, Lcom/kddi/android/CpaManager$Settings;->authType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string/jumbo v2, "settings.proxyHost"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->proxyHost:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string/jumbo v2, "settings.proxyPort"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->proxyPort:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string/jumbo v2, "settings.dns1"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->dns1:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string/jumbo v2, "settings.dns2"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->dns2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :cond_3
    iget-boolean v2, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "CpaManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Display for Broadcating Intent ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_4
    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    sget v2, Lcom/kddi/android/CpaManager;->SUCCESS:I

    return v2

    .line 159
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/RemoteException;

    const-string/jumbo v3, "error!! send intent for chang mode"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized getConnInfo()Lcom/kddi/android/CpaManager$ConnInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    monitor-enter p0

    .line 181
    :try_start_0
    iget-boolean v5, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "CpaManager"

    const-string/jumbo v6, "getConnInfo() start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    new-instance v0, Lcom/kddi/android/CpaManager$ConnInfo;

    invoke-direct {v0}, Lcom/kddi/android/CpaManager$ConnInfo;-><init>()V

    .line 183
    .local v0, "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/net/InetAddress;

    iput-object v5, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->getState()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 189
    invoke-static {}, Lcom/kddi/android/CpaManager;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "localIP":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kddi/android/CpaManager;->getCurrentDns()[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "dns":[Ljava/lang/String;
    iget-boolean v5, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "CpaManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " getLocalIpAddress() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    iget-boolean v5, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "CpaManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " getCurrentDns() dns1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " dns[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :cond_2
    :try_start_2
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, v0, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    .line 195
    iget-object v5, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 196
    iget-object v5, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 197
    iget-boolean v5, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "CpaManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " getConnInfo() localAddress  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_3
    iget-boolean v5, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "CpaManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " getConnInfo() dns1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  dns2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    .line 209
    return-object v0

    .line 199
    :catch_0
    move-exception v3

    .line 200
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v5, Landroid/os/RemoteException;

    const-string/jumbo v6, "error!! get localip dns address for navi cpa"

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    .end local v1    # "dns":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "localIP":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v5, Landroid/os/RemoteException;

    const-string/jumbo v6, "error!! getConnInfo()"

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 203
    .restart local v0    # "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    :cond_5
    const/4 v5, 0x0

    monitor-exit p0

    return-object v5
.end method

.method public declared-synchronized getConnStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->getState()I

    move-result v0

    .line 170
    .local v0, "state":I
    const-string/jumbo v1, "CpaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getConnStatus() state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "error!! get state for navi cpa"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "state":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 175
    .restart local v0    # "state":I
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->getState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1
.end method

.method public declared-synchronized getCurrentDns()[Ljava/lang/String;
    .locals 3

    .prologue
    monitor-enter p0

    .line 259
    const/4 v1, 0x2

    :try_start_0
    new-array v0, v1, [Ljava/lang/String;

    .line 260
    .local v0, "dns":[Ljava/lang/String;
    const-string/jumbo v1, "sys.cpa_kdd_hipri"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 261
    const-string/jumbo v1, "net.rmnet0.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 262
    const-string/jumbo v1, "net.rmnet0.dns2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 264
    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    .line 265
    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 267
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 268
    :cond_2
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-object v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    monitor-exit p0

    .line 281
    return-object v0

    .line 264
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v0, v1

    const-string/jumbo v2, "undefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 267
    :cond_5
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string/jumbo v2, "undefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 271
    :cond_6
    const-string/jumbo v1, "net.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 272
    const-string/jumbo v1, "net.dns2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 274
    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    .line 275
    :cond_7
    :goto_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 277
    :cond_8
    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    .line 278
    :cond_9
    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-object v1, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v0    # "dns":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 274
    .restart local v0    # "dns":[Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    :try_start_2
    aget-object v1, v0, v1

    const-string/jumbo v2, "undefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 277
    :cond_b
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string/jumbo v2, "undefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4
.end method
