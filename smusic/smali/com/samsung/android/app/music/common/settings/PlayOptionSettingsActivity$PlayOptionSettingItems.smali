.class Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity$PlayOptionSettingItems;
.super Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
.source "PlayOptionSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayOptionSettingItems"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;-><init>()V

    .line 58
    const/4 v0, 0x0

    const v1, 0x7f0a043b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity$PlayOptionSettingItems;->addItem(II)V

    .line 59
    const/4 v0, 0x1

    const v1, 0x7f0a043a

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/PlayOptionSettingsActivity$PlayOptionSettingItems;->addItem(II)V

    .line 60
    return-void
.end method
