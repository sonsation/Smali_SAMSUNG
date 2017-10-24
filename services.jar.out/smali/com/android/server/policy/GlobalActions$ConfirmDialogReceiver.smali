.class Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfirmDialogReceiver"
.end annotation


# instance fields
.field contextInternal:Landroid/content/Context;

.field dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5011
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 5012
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5013
    .local v0, "filter":Landroid/content/IntentFilter;
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    .line 5014
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5011
    return-void
.end method

.method private restoreQuickpanelBackgroundInternal()V
    .locals 3

    .prologue
    .line 5017
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 5018
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5019
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5020
    const-string/jumbo v1, "suppressCoverUI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5021
    const-string/jumbo v1, "miniModeUI"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5022
    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5023
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->contextInternal:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5016
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 5036
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-set5(Z)Z

    .line 5037
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get71()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5038
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get68()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5039
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-set18(Z)Z

    .line 5040
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->restoreQuickpanelBackgroundInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 5034
    :goto_0
    return-void

    .line 5038
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 5043
    :cond_0
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-set20(Z)Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5027
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 5028
    const-string/jumbo v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 5029
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5030
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5026
    .end local v0    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_1
    return-void
.end method
