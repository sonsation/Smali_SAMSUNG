.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1979
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1982
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 1983
    .local v1, "info":Lcom/android/internal/net/LegacyVpnInfo;
    const-string/jumbo v3, "LegacyVpnRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCredentialResetFilter update vpn state - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1987
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 1988
    .local v2, "keystore":Landroid/security/KeyStore;
    invoke-virtual {v2}, Landroid/security/KeyStore;->isEmptyForSystemCredential()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1989
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-get5(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    .line 1990
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-get5(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    const-string/jumbo v4, "[Legacy VPN]"

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->-get19(Lcom/android/server/connectivity/Vpn;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5}, Landroid/net/ConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1981
    .end local v2    # "keystore":Landroid/security/KeyStore;
    :cond_0
    :goto_0
    return-void

    .line 1992
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
