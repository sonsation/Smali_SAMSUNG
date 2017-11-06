.class public Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity;
.super Lcom/samsung/android/app/music/common/settings/SettingsListActivity;
.source "PlayOptionSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity$PlayOptionSettingItems;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method getEntryPosition()I
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity;->getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getPlayOption()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemPosition(I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    if-nez p1, :cond_0

    .line 21
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "421"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method

.method onCreateSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity$PlayOptionSettingItems;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity$PlayOptionSettingItems;-><init>()V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity;->getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemValue(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setPlayOption(I)V

    .line 44
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "421"

    const-string v2, "5231"

    .line 46
    invoke-static {p3}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->getDetailByPosition(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "settings_playlistOrderingOption"

    .line 50
    invoke-static {p3}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaySetting;->getDetailByPosition(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity;->finish()V

    .line 53
    return-void
.end method

.method onSetSettingDescription()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f0a0439

    return v0
.end method
