.class Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$11;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setEasyModeSetting(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

.field final synthetic val$easyModeSettingLayout:Landroid/view/View;

.field final synthetic val$root:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$11;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    iput-object p2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$11;->val$root:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$11;->val$easyModeSettingLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 624
    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$11;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v3}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 626
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 627
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$EasyModeAppActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$11;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v3}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 631
    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$11;->val$root:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$11;->val$easyModeSettingLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 632
    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$11;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v3}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 633
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 632
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 633
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 634
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "home_setting_show_easy_mode_tips"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 635
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
