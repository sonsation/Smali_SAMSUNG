.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

.field final synthetic val$crr:Landroid/content/ContentResolver;

.field final synthetic val$wifiSharingCheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/widget/CheckBox;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;
    .param p2, "val$wifiSharingCheckbox"    # Landroid/widget/CheckBox;
    .param p3, "val$crr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->val$wifiSharingCheckbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->val$crr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1227
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->val$wifiSharingCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1228
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->val$crr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "wifi_ap_wifi_sharing"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1229
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1230
    .local v2, "menu_update":Landroid/content/Intent;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1232
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1233
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x4d

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1235
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "feature"

    const-string/jumbo v5, "MHWS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :try_start_0
    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "ON"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-string/jumbo v4, "WifiApWarning"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "provider value after ok button"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->val$crr:Landroid/content/ContentResolver;

    const-string/jumbo v7, "wifi_ap_wifi_sharing"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :goto_0
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1243
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1248
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "menu_update":Landroid/content/Intent;
    .end local v3    # "msg":Landroid/os/Message;
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1249
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 1226
    return-void

    .line 1239
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "menu_update":Landroid/content/Intent;
    .restart local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 1240
    .local v1, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v4, "WifiApWarning"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in getting provider value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1246
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    .end local v2    # "menu_update":Landroid/content/Intent;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->val$crr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "wifi_ap_wifi_sharing"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
