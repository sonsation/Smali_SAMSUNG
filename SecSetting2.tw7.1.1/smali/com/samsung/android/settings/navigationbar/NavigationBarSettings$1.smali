.class Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;
.super Landroid/database/ContentObserver;
.source "NavigationBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_force_touch_enable"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 101
    .local v2, "pressSwitch":Z
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 102
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 103
    const-string/jumbo v0, ""

    .line 104
    .local v0, "Summary":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_pressure_user_level"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, "level":I
    if-eqz v2, :cond_1

    .line 106
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    const v4, 0x7f0b06bb

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get5(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    const v5, 0x7f0b06b6

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get5(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 116
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    return-void

    .line 100
    .end local v0    # "Summary":Ljava/lang/String;
    .end local v1    # "level":I
    .end local v2    # "pressSwitch":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "pressSwitch":Z
    goto :goto_0

    .line 111
    .restart local v0    # "Summary":Ljava/lang/String;
    .restart local v1    # "level":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    const v4, 0x7f0b06ba

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get5(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    const v5, 0x7f0b06b7

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get5(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method
