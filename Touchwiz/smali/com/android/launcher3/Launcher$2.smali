.class Lcom/android/launcher3/Launcher$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callAppsButtonEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 560
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 561
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    .line 562
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v4

    if-ne v4, p1, :cond_2

    .line 563
    :cond_0
    const-string v4, "Launcher"

    const-string v5, "setAppsButtonEnabled return"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_1
    :goto_0
    return-void

    .line 568
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonSettingsActivity()Lcom/android/launcher3/home/AppsButtonSettingsActivity;

    move-result-object v0

    .line 569
    .local v0, "appsbuttonActivity":Lcom/android/launcher3/home/AppsButtonSettingsActivity;
    if-nez v0, :cond_3

    .line 570
    new-instance v2, Landroid/content/Intent;

    const-string v4, "showApps"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "showApps"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    iget-object v4, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.launcher3.home.AppsButtonSettingsActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    iget-object v4, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    .end local v0    # "appsbuttonActivity":Lcom/android/launcher3/home/AppsButtonSettingsActivity;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecurityException e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "appsbuttonActivity":Lcom/android/launcher3/home/AppsButtonSettingsActivity;
    :cond_3
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->changeAppsButtonEnabled(Z)V

    .line 577
    invoke-virtual {v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->finish()V

    .line 578
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonSettingsActivity(Lcom/android/launcher3/home/AppsButtonSettingsActivity;)V

    .line 582
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v3

    .line 583
    .local v3, "settingsActivity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v3, :cond_1

    .line 584
    invoke-virtual {v3}, Lcom/android/launcher3/SettingsActivity;->finish()V

    .line 585
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherAppState;->setSettingsActivity(Lcom/android/launcher3/SettingsActivity;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 638
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-static {v0, v1}, Lcom/android/launcher3/util/SecureFolderHelper;->addAppToSecureFolder(Landroid/content/Context;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public canAppAddToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 650
    .local v0, "result":Z
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 652
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/util/SecureFolderHelper;->canAddAppToSecureFolder(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    .line 655
    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method public changeHomeStyle(Z)V
    .locals 3
    .param p1, "homeOnlyMode"    # Z

    .prologue
    .line 694
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.CHANGE_HOMEONLYMODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "homeOnlyeMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    iget-object v1, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    const-string v2, "com.samsung.android.launcher.permission.CHANGE_HOMEONLYMODE"

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public clearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 7
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 660
    instance-of v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 661
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 662
    .local v2, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 664
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "badge_count_package_name"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string v4, "badge_count_class_name"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string v4, "badge_count"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 669
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 670
    iget-object v4, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher3/Launcher;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 678
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 672
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeBadge():Can\'t send the broadcast >>> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableAllAppsBadge()Z
    .locals 2

    .prologue
    .line 718
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    .line 719
    .local v0, "activity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/android/launcher3/SettingsActivity;->disableAllAppsBadge()Z

    move-result v1

    .line 722
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableAllAppsBadge(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 709
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    .line 710
    .local v0, "activity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {v0, p1}, Lcom/android/launcher3/SettingsActivity;->enableAllAppsBadge(Z)Z

    move-result v1

    .line 713
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSingleAppBadge(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 736
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    .line 737
    .local v0, "activity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/SettingsActivity;->enableSingleAppBadge(Ljava/lang/String;Z)Z

    move-result v1

    .line 740
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enterBadgeManagementView()V
    .locals 2

    .prologue
    .line 701
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    .line 702
    .local v0, "activity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0}, Lcom/android/launcher3/SettingsActivity;->showBadgeManagerSettings()V

    .line 705
    :cond_0
    return-void
.end method

.method public enterHomeAboutPageView()V
    .locals 6

    .prologue
    .line 745
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    .line 746
    .local v0, "activity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v0, :cond_0

    .line 748
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 749
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/android/launcher3/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.launcher3.AboutPageActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    invoke-virtual {v0, v2}, Lcom/android/launcher3/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 752
    :catch_0
    move-exception v1

    .line 753
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityException e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enterHomeSettingChangeModeView()V
    .locals 5

    .prologue
    .line 683
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 684
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.launcher3.home.HomeModeChangeActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    iget-object v2, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enterHomeSettingView()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 517
    return-void
.end method

.method public hasAppsBadge()Z
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    .line 728
    .local v0, "activity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0}, Lcom/android/launcher3/SettingsActivity;->hasAppsBadge()Z

    move-result v1

    .line 731
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz p1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 597
    :cond_0
    return-void
.end method

.method public hideAppsButton()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher$2;->callAppsButtonEnabled(Z)V

    .line 557
    return-void
.end method

.method public isAllAppsBadgeSwitchChecked()Z
    .locals 2

    .prologue
    .line 767
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    .line 768
    .local v0, "activity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Lcom/android/launcher3/SettingsActivity;->isAllAppsBadgeSwitchChecked()Z

    move-result v1

    .line 771
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAlreadySleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 546
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/AppFreezerUtils;->isInSleepMode(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x1

    .line 551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailableSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 536
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/AppFreezerUtils;->canPutIntoSleepMode(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableAppsButton()Z
    .locals 1

    .prologue
    .line 526
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v0

    return v0
.end method

.method public isHomeOnlyMode()Z
    .locals 1

    .prologue
    .line 531
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isSecureFolderSetup()Z
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/util/SecureFolderHelper;->isSecureFolderExist(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSingleAppBadgeChecked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 759
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    .line 760
    .local v0, "activity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0, p1}, Lcom/android/launcher3/SettingsActivity;->isSingleAppBadgeChecked(Ljava/lang/String;)Z

    move-result v1

    .line 763
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putToSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 628
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 632
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 631
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->createAndShow(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showAppsButton()V
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher$2;->callAppsButtonEnabled(Z)V

    .line 522
    return-void
.end method

.method public unHideApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz p1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 604
    :cond_0
    return-void
.end method

.method public uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 9
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 608
    const/4 v7, 0x0

    .line 609
    .local v7, "flags":I
    instance-of v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_0

    move-object v8, p1

    .line 610
    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 612
    .local v8, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v7, v8, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 613
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 615
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 616
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    .line 617
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v8, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    .line 618
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    .line 614
    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    .line 624
    .end local v8    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    :goto_0
    return-void

    .line 620
    .restart local v8    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/launcher3/Launcher;->startApplicationUninstallActivity(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;Z)Z

    goto :goto_0
.end method
