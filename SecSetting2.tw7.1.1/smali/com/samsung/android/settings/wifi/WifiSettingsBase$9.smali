.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 567
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_skip_auto_conn"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 568
    .local v2, "skipAutoConnection":Z
    :goto_0
    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postDelayed Runnable() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    if-nez v2, :cond_0

    .line 571
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 572
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x20

    iput v3, v1, Landroid/os/Message;->what:I

    .line 574
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 575
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "enable"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 576
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 578
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_2

    .line 579
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_skip_auto_conn"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 567
    .end local v2    # "skipAutoConnection":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "skipAutoConnection":Z
    goto :goto_0

    .line 581
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_2
    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "Settings.System.putInt() fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
