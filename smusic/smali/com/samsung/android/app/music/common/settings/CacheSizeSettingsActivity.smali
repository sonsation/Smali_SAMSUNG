.class public Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity;
.super Lcom/samsung/android/app/music/common/settings/SettingsListActivity;
.source "CacheSizeSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;
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
    .locals 4

    .prologue
    .line 31
    sget-object v2, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getPosition()I

    move-result v0

    .line 33
    .local v0, "position":I
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getMaxStreamingCacheSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getSizeType(J)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    move-result-object v1

    .line 34
    .local v1, "type":Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getPosition()I

    move-result v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity;->getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemPosition(I)I

    move-result v2

    return v2
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

    const-string v1, "425"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method onCreateSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;-><init>()V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 48
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity;->getSettingItems()Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;->getSettingItemValue(I)I

    move-result v1

    .line 51
    .local v1, "typePosition":I
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getSizeType(I)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    move-result-object v0

    .line 52
    .local v0, "type":Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setMaxStreamingCacheSize(J)V

    .line 56
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "425"

    const-string v4, "5281"

    .line 58
    invoke-static {p3}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$CacheSize;->getDetailByPosition(I)Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity;->finish()V

    .line 61
    return-void
.end method

.method onSetSettingDescription()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0a0240

    return v0
.end method
