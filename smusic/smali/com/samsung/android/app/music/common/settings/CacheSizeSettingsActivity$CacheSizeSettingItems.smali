.class Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;
.super Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
.source "CacheSizeSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheSizeSettingItems"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;-><init>()V

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_100:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getPosition()I

    move-result v0

    const v1, 0x7f0a023d

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;->addItem(II)V

    .line 67
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getPosition()I

    move-result v0

    const v1, 0x7f0a023f

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;->addItem(II)V

    .line 68
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->GB_1:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getPosition()I

    move-result v0

    const v1, 0x7f0a023e

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;->addItem(II)V

    .line 69
    return-void
.end method
