.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showFirstTimePoup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 2221
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 2223
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2224
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "dontshowmemhsfirsttime"

    invoke-static {v3, v4, v5, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-wrap6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2226
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v3, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    .line 2227
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2228
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 2229
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 2222
    :cond_1
    :goto_0
    return-void

    .line 2231
    :cond_2
    const/4 v1, 0x0

    .line 2234
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2235
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_5

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 2236
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2237
    .local v2, "pickIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2238
    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "tethering_tmo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2242
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    if-eqz v3, :cond_4

    .line 2243
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2260
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2261
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "WifiApSwitchEnabler"

    const-string/jumbo v4, "Exception!! help NameNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 2263
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 2240
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "tethering_mtr"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2244
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    if-eqz v3, :cond_1

    .line 2245
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2247
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :cond_5
    if-eqz v1, :cond_7

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 2248
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2249
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    const-string/jumbo v3, "helphub:appid"

    const-string/jumbo v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2250
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    if-eqz v3, :cond_6

    .line 2251
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2252
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    if-eqz v3, :cond_1

    .line 2253
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2256
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :cond_7
    const-string/jumbo v3, "WifiApSwitchEnabler"

    const-string/jumbo v4, "Help info == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 2258
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$49;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
