.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "val$adminReceiver"    # Landroid/content/ComponentName;
    .param p3, "val$userHandle"    # I

    .prologue
    .line 2506
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2509
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-static {v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap13(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V

    .line 2510
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-static {v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap14(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 2513
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIEDMService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v1

    .line 2515
    .local v1, "edms":Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    if-eqz v1, :cond_0

    .line 2516
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V

    .line 2508
    :goto_0
    return-void

    .line 2518
    :cond_0
    const-string/jumbo v2, "DevicePolicyManagerService"

    const-string/jumbo v3, "removeActiveAdminLocked() : passed EDMS.removeActiveAdminFromDpm() because edms is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2520
    :catch_0
    move-exception v0

    .line 2521
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DevicePolicyManagerService"

    .line 2522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to remove active admin from edm database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2523
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 2522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2521
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
