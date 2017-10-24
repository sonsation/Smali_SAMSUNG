.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

.field final synthetic val$checkboxView:Landroid/widget/CheckBox;

.field final synthetic val$localIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/widget/CheckBox;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
    .param p2, "val$checkboxView"    # Landroid/widget/CheckBox;
    .param p3, "val$localIntent"    # Landroid/content/Intent;

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$checkboxView:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$localIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1722
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$checkboxView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1723
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "lock_screen_menu_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1724
    .local v1, "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1725
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "smart_lock_show_dialog"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1726
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1728
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreference":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$localIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 1729
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$localIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    .line 1721
    :cond_1
    return-void
.end method
