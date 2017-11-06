.class public Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity;
.super Lcom/samsung/android/app/music/common/settings/SettingsListActivity;
.source "EnqueueOptionSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity$EnqueueOptionSettingItems;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method getEntryPosition()I
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity;->getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getEnqueueOption()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemPosition(I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    if-nez p1, :cond_0

    .line 20
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "424"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method onCreateSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity$EnqueueOptionSettingItems;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity$EnqueueOptionSettingItems;-><init>()V

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
    .line 41
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity;->getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemValue(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setEnqueueOption(I)V

    .line 43
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "424"

    const-string v2, "5271"

    .line 45
    invoke-static {p3}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$PlaylistOrder;->getDetailByPosition(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity;->finish()V

    .line 47
    return-void
.end method

.method onSetSettingDescription()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0a0269

    return v0
.end method
