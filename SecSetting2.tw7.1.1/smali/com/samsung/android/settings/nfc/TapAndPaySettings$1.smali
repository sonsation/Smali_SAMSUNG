.class Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "TapAndPaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/TapAndPaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    sget-boolean v9, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "TapAndPaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mReceiver.onReceive / action : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v10, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {v10, v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-set1(Lcom/samsung/android/settings/nfc/TapAndPaySettings;Lcom/samsung/android/settings/nfc/PaymentSettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;

    .line 103
    iget-object v10, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get0()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {v10, v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-set0(Lcom/samsung/android/settings/nfc/TapAndPaySettings;Lcom/samsung/android/settings/nfc/OtherSettings;)Lcom/samsung/android/settings/nfc/OtherSettings;

    .line 105
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get6(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Landroid/widget/TabHost;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v9

    invoke-static {}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get3()I

    move-result v10

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get5(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v5, 0x1

    .line 106
    .local v5, "isPaymentTab":Z
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get6(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Landroid/widget/TabHost;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v9

    invoke-static {}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get2()I

    move-result v10

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get4(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/OtherSettings;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v4, 0x1

    .line 108
    .local v4, "isOthersTab":Z
    :goto_1
    const-string/jumbo v9, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 109
    const-string/jumbo v9, "android.nfc.extra.ADAPTER_STATE"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 110
    .local v6, "mState":I
    const/4 v9, 0x1

    if-ne v6, v9, :cond_4

    .line 111
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->onBackPressed()V

    .line 98
    .end local v6    # "mState":I
    :cond_1
    :goto_2
    return-void

    .line 105
    .end local v4    # "isOthersTab":Z
    .end local v5    # "isPaymentTab":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "isPaymentTab":Z
    goto :goto_0

    .line 106
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isOthersTab":Z
    goto :goto_1

    .line 112
    .restart local v6    # "mState":I
    :cond_4
    const/4 v9, 0x3

    if-eq v6, v9, :cond_5

    const/4 v9, 0x5

    if-ne v6, v9, :cond_1

    .line 113
    :cond_5
    if-eqz v5, :cond_6

    .line 114
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get5(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    goto :goto_2

    .line 115
    :cond_6
    if-eqz v4, :cond_1

    .line 116
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get4(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/OtherSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    goto :goto_2

    .line 120
    .end local v6    # "mState":I
    :cond_7
    const-string/jumbo v9, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 121
    if-eqz v5, :cond_8

    .line 122
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get5(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    goto :goto_2

    .line 123
    :cond_8
    if-eqz v4, :cond_1

    .line 124
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get4(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/OtherSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    goto :goto_2

    .line 126
    :cond_9
    const-string/jumbo v9, "com.samsung.nfc.action.LMRT_UPDATED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 127
    const-string/jumbo v9, "com.samsung.nfc.extra.SELECTED_COMPONENT"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 128
    .local v8, "selectedComponent":Landroid/content/ComponentName;
    const-string/jumbo v9, "com.samsung.nfc.extra.SELECTED_STATUS"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 129
    .local v3, "isChecked":Z
    const-string/jumbo v9, "lmrt_result"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 131
    .local v2, "isBufferFull":Z
    if-eqz v2, :cond_a

    .line 132
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->showLmrtFullDialog()V

    .line 135
    :cond_a
    if-eqz v5, :cond_b

    .line 136
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get5(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/samsung/android/settings/nfc/PaymentSettings;->restoreDefaultAppStatus(Z)Z

    goto :goto_2

    .line 137
    :cond_b
    if-eqz v4, :cond_1

    .line 138
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-get4(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/OtherSettings;

    move-result-object v9

    invoke-virtual {v9, v8, v3, v2}, Lcom/samsung/android/settings/nfc/OtherSettings;->restoreOtherAppStatus(Landroid/content/ComponentName;ZZ)Z

    goto/16 :goto_2

    .line 141
    .end local v2    # "isBufferFull":Z
    .end local v3    # "isChecked":Z
    .end local v8    # "selectedComponent":Landroid/content/ComponentName;
    :cond_c
    const-string/jumbo v9, "ACTION_FELICA_LOCKED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 142
    new-instance v7, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    .line 143
    .local v7, "nfcOsaifuSettingsData":Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-virtual {v7}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v1

    .line 144
    .local v1, "clfLock":I
    if-eqz v1, :cond_1

    .line 145
    iget-object v9, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->finishFragment()V

    goto/16 :goto_2
.end method
