.class Lcom/samsung/android/settings/display/SecDisplaySettings$15;
.super Landroid/database/ContentObserver;
.source "SecDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/SecDisplaySettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 544
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    const-string/jumbo v1, "Fragment"

    const-string/jumbo v2, "Detached from activity, so stopping update."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get23(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligent_sleep_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 551
    .local v0, "smartStayCheck":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get23(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 552
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get23(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v2

    if-eqz v0, :cond_3

    const v1, 0x7f0b1d08

    :goto_1
    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 553
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get23(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 543
    .end local v0    # "smartStayCheck":Z
    :cond_1
    return-void

    .line 550
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "smartStayCheck":Z
    goto :goto_0

    .line 552
    :cond_3
    const v1, 0x7f0b04f3

    goto :goto_1
.end method
