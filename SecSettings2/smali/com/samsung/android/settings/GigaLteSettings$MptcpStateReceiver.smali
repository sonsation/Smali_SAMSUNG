.class Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GigaLteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GigaLteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MptcpStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaLteSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/GigaLteSettings;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 640
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "GigaLteSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MPTCPStateReceiver: onReceive action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string/jumbo v6, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 644
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get9(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get9(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 645
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get4(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GigaLteSettings;->-get5(Lcom/samsung/android/settings/GigaLteSettings;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 646
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get9(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 648
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 649
    const-string/jumbo v6, "GigaLteSettings"

    const-string/jumbo v7, "MPTCP State intent is received"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string/jumbo v6, "mptcp_state"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 651
    .local v2, "mptcpState":I
    if-nez v2, :cond_2

    .line 652
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 639
    .end local v2    # "mptcpState":I
    :cond_1
    :goto_0
    return-void

    .line 653
    .restart local v2    # "mptcpState":I
    :cond_2
    if-ne v2, v4, :cond_3

    .line 654
    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 656
    :cond_3
    const-string/jumbo v4, "GigaLteSettings"

    const-string/jumbo v6, "Cannot enable/disable MPTCP"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 659
    .end local v2    # "mptcpState":I
    :cond_4
    const-string/jumbo v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 660
    const-string/jumbo v6, "wifi_state"

    .line 661
    const/4 v7, 0x4

    .line 660
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 662
    .local v3, "state":I
    const/4 v6, 0x2

    if-ne v6, v3, :cond_5

    return-void

    .line 663
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6, v3}, Lcom/samsung/android/settings/GigaLteSettings;->-wrap0(Lcom/samsung/android/settings/GigaLteSettings;I)Z

    move-result v1

    .line 664
    .local v1, "isState":Z
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get1(Lcom/samsung/android/settings/GigaLteSettings;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get2(Lcom/samsung/android/settings/GigaLteSettings;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    .line 665
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/GigaLteSettings;->-set2(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    .line 666
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/GigaLteSettings;->-get0(Lcom/samsung/android/settings/GigaLteSettings;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 667
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/GigaLteSettings;->-set1(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    .line 668
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/GigaLteSettings;->-wrap3(Lcom/samsung/android/settings/GigaLteSettings;Z)V

    goto :goto_0

    .line 670
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get2(Lcom/samsung/android/settings/GigaLteSettings;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 671
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6, v5}, Lcom/samsung/android/settings/GigaLteSettings;->-set2(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    .line 672
    if-eqz v1, :cond_7

    .line 673
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/GigaLteSettings;->-wrap3(Lcom/samsung/android/settings/GigaLteSettings;Z)V

    goto/16 :goto_0

    .line 675
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get9(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 676
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get4(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GigaLteSettings;->-get5(Lcom/samsung/android/settings/GigaLteSettings;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 677
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get9(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 679
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 680
    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    .line 681
    iget-object v7, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GigaLteSettings;->-get3(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mptcp_value"

    .line 680
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    :goto_1
    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_9
    move v4, v5

    goto :goto_1
.end method
