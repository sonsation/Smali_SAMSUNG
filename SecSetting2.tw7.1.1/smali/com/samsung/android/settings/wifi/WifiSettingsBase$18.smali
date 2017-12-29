.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;->initSecureWifiLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$disableSecureWifiIntent:Landroid/content/Intent;

.field final synthetic val$enableSecureWifiIntent:Landroid/content/Intent;

.field final synthetic val$openSecureWifiEulaIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiSettingsBase;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$openSecureWifiEulaIntent"    # Landroid/content/Intent;
    .param p4, "val$enableSecureWifiIntent"    # Landroid/content/Intent;
    .param p5, "val$disableSecureWifiIntent"    # Landroid/content/Intent;

    .prologue
    .line 2276
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$openSecureWifiEulaIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$enableSecureWifiIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$disableSecureWifiIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v2, 0x7f0b0484

    const/4 v3, 0x0

    .line 2280
    if-eqz p2, :cond_4

    .line 2281
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "mCheckBoxSecureWifi is checked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2283
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap6(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2284
    const-string/jumbo v0, "WifiSettingsBase"

    .line 2285
    const-string/jumbo v1, "Secure Wifi Eula is not agreed, launch Eula Activity"

    .line 2284
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$openSecureWifiEulaIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2279
    :cond_0
    :goto_0
    return-void

    .line 2288
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap5(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2290
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    .line 2291
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2289
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2296
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 2298
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$enableSecureWifiIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2301
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    .line 2302
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2300
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2307
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 2313
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap9(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;I)V

    .line 2315
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2317
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    .line 2318
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2320
    const v2, 0x7f0b12cb

    .line 2318
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2316
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2324
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap4(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$disableSecureWifiIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
