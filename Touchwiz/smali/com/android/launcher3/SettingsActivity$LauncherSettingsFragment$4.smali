.class Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setHideApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$4;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 480
    iget-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$4;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 481
    .local v1, "settingActivity":Landroid/app/Activity;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$4;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v3}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$4;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    .line 482
    invoke-virtual {v4}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09014e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    if-eqz v1, :cond_0

    .line 485
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 486
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v2, "extra_enter_hide_apps"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 491
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
