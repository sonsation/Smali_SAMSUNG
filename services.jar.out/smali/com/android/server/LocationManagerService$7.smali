.class Lcom/android/server/LocationManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 475
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "broadcast received action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string/jumbo v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 479
    iget-object v5, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    const-string/jumbo v6, "android.intent.extra.user_handle"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/LocationManagerService;->-wrap7(Lcom/android/server/LocationManagerService;I)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    const-string/jumbo v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 481
    const-string/jumbo v5, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 480
    if-eqz v5, :cond_3

    .line 482
    :cond_2
    iget-object v5, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v6, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->-get2(Lcom/android/server/LocationManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    goto :goto_0

    .line 483
    :cond_3
    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 484
    iget-object v5, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->-wrap6(Lcom/android/server/LocationManagerService;)V

    goto :goto_0

    .line 485
    :cond_4
    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 487
    iget-object v5, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    new-instance v6, Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-direct {v6}, Lcom/samsung/android/location/CellGeofenceProvider;-><init>()V

    iput-object v6, v5, Lcom/android/server/LocationManagerService;->cellProvider:Lcom/samsung/android/location/CellGeofenceProvider;

    .line 488
    iget-object v5, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v5, v5, Lcom/android/server/LocationManagerService;->cellProvider:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-virtual {v5}, Lcom/samsung/android/location/CellGeofenceProvider;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v5, v5, Lcom/android/server/LocationManagerService;->cellProvider:Lcom/samsung/android/location/CellGeofenceProvider;

    invoke-virtual {v5}, Lcom/samsung/android/location/CellGeofenceProvider;->enable()V

    goto :goto_0

    .line 489
    :cond_5
    const-string/jumbo v5, "ATT"

    invoke-static {}, Lcom/android/server/LocationManagerService;->-get10()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 493
    .local v3, "extra":Landroid/os/Bundle;
    if-nez v3, :cond_6

    .line 494
    const-string/jumbo v5, "LocationManagerService"

    const-string/jumbo v6, "extra is null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :cond_6
    const-string/jumbo v5, "command"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "command":Ljava/lang/String;
    const-string/jumbo v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string/jumbo v5, "AT+GPSVALUE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 500
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v1, "at_ret":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    const-string/jumbo v6, "gps"

    invoke-virtual {v5, v6}, Lcom/android/server/LocationManagerService;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 502
    const-string/jumbo v4, "ON"

    .line 507
    .local v4, "response":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, "response"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    iget-object v5, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 505
    .end local v4    # "response":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "OFF"

    .restart local v4    # "response":Ljava/lang/String;
    goto :goto_1
.end method
