.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->warnAppInstallationFromPackageInstaller()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

.field final synthetic val$mCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
    .param p2, "val$mCheck"    # Landroid/widget/CheckBox;

    .prologue
    .line 2069
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->val$mCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 2071
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->val$mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2072
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "one_time_operate"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2073
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2075
    .local v1, "extras":Landroid/os/Bundle;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2076
    .local v2, "installIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    .end local v2    # "installIntent":Landroid/content/Intent;
    :goto_0
    const-string/jumbo v3, "LockscreenMenuSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCheck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->val$mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->finish()V

    .line 2070
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-void

    .line 2077
    .restart local v1    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 2078
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2083
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v3, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Z)V

    .line 2085
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2086
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 2087
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "one_time_operate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2088
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2090
    .restart local v1    # "extras":Landroid/os/Bundle;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2091
    .restart local v2    # "installIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2095
    .end local v2    # "installIntent":Landroid/content/Intent;
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->finish()V

    goto :goto_1

    .line 2092
    :catch_1
    move-exception v0

    .line 2093
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2
.end method
