.class Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "EthernetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ethernet/EthernetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 64
    const-string/jumbo v1, "SettingsEthEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intent.getAction() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "samsung.net.ethernet.ETH_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string/jumbo v1, "eth_state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v1, "Connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const v2, 0x7f0b132e

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 71
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    iget-object v1, v1, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    iget-object v2, v2, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->summaryUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 73
    const-string/jumbo v1, "SettingsEthEnabler"

    const-string/jumbo v2, "Eth receive state : Connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    const-string/jumbo v1, "Disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 76
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const v2, 0x7f0b132c

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 77
    const-string/jumbo v1, "SettingsEthEnabler"

    const-string/jumbo v2, "Eth receive state : Disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
