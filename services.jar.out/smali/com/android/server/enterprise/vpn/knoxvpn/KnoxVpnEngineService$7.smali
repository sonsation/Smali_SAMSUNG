.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;
.super Ljava/lang/Object;
.source "KnoxVpnEngineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateProxyRules(ILjava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field final synthetic val$action:I

.field final synthetic val$pacUrl:Ljava/lang/String;

.field final synthetic val$profileName:Ljava/lang/String;

.field final synthetic val$profileProxyInfo:Landroid/net/ProxyInfo;

.field final synthetic val$uidList:Ljava/util/HashMap;

.field final synthetic val$vendorUid:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;ILandroid/net/ProxyInfo;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p2, "val$profileName"    # Ljava/lang/String;
    .param p4, "val$vendorUid"    # I
    .param p5, "val$profileProxyInfo"    # Landroid/net/ProxyInfo;
    .param p6, "val$pacUrl"    # Ljava/lang/String;
    .param p7, "val$action"    # I

    .prologue
    .line 5476
    .local p3, "val$uidList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$profileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$uidList:Ljava/util/HashMap;

    iput p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$vendorUid:I

    iput-object p5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$profileProxyInfo:Landroid/net/ProxyInfo;

    iput-object p6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$pacUrl:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5479
    const-string/jumbo v0, "KnoxVpnEngineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The pac configuration is being added for the application added to vpn, update AMS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$profileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5480
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$uidList:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$vendorUid:I

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$profileProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateProxyPacConfigurationForKnoxVpn(Ljava/util/HashMap;ILandroid/net/ProxyInfo;)V

    .line 5482
    const-string/jumbo v0, "KnoxVpnEngineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The pac configuration is being added for the application added to vpn, send pac broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$profileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5483
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap2(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$uidList:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$vendorUid:I

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$pacUrl:Ljava/lang/String;

    .line 5484
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$profileProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    .line 5483
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->sendPacConfigBroadcast(Ljava/util/HashMap;ILjava/lang/String;I)V

    .line 5486
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$action:I

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$uidList:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap10(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILjava/util/HashMap;)V

    .line 5488
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$profileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$uidList:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap21(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 5490
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$profileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$uidList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$7;->val$profileProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-wrap6(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 5477
    return-void
.end method
