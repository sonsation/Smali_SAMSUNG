.class Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setNotificationPanelSetting()V
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
    .line 551
    iput-object p1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 554
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 555
    .local v0, "value":Z
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    .line 556
    invoke-virtual {v2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090174

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1

    .line 555
    :goto_0
    invoke-virtual {v1, v5, v6, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 558
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;->this$0:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 560
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherAppState;->setNotificationPanelExpansionEnabled(Z)V

    .line 561
    return v4

    .line 556
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 558
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
