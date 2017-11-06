.class Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity$EnqueueOptionSettingItems;
.super Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
.source "EnqueueOptionSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnqueueOptionSettingItems"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;-><init>()V

    .line 52
    const/4 v0, 0x1

    const v1, 0x7f0a026a

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity$EnqueueOptionSettingItems;->addItem(II)V

    .line 53
    const/4 v0, 0x4

    const v1, 0x7f0a026b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity$EnqueueOptionSettingItems;->addItem(II)V

    .line 54
    const/4 v0, 0x3

    const v1, 0x7f0a026c

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/EnqueueOptionSettingsActivity$EnqueueOptionSettingItems;->addItem(II)V

    .line 55
    return-void
.end method
