.class public Lcom/android/settings/Settings$AirCmdSettingsActivity;
.super Lcom/samsung/android/settings/SettingsActivityWrapper;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirCmdSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 630
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 632
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.service.aircommand"

    .line 633
    const-string/jumbo v2, "com.samsung.android.service.aircommand.AirCommandService"

    .line 632
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string/jumbo v1, "cause"

    const-string/jumbo v2, "settings_back"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$AirCmdSettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 637
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onBackPressed()V

    .line 629
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 620
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onCreate(Landroid/os/Bundle;)V

    .line 622
    invoke-virtual {p0}, Lcom/android/settings/Settings$AirCmdSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/Settings$AirCmdSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/Settings$AirCmdSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 619
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 641
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 647
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 643
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$AirCmdSettingsActivity;->onBackPressed()V

    .line 644
    const/4 v0, 0x1

    return v0

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
