.class public Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$AutoOffSettingItems;
.super Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;
.source "MusicAutoOffActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoOffSettingItems"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$AutoOffSettingItems;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingItems;-><init>()V

    .line 221
    const/4 v0, 0x0

    const v1, 0x7f0a0145

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$AutoOffSettingItems;->addItem(II)V

    .line 222
    const v0, 0x1b7740

    const v1, 0x7f0a01cd

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$AutoOffSettingItems;->addItem(II)V

    .line 223
    const v0, 0x36ee80

    const v1, 0x7f0a01ca

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$AutoOffSettingItems;->addItem(II)V

    .line 224
    const v0, 0x5265c0

    const v1, 0x7f0a01cb

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$AutoOffSettingItems;->addItem(II)V

    .line 225
    const v0, 0x6ddd00

    const v1, 0x7f0a01cc

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$AutoOffSettingItems;->addItem(II)V

    .line 226
    const/16 v0, -0x3e7

    const v1, 0x7f0a0099

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$AutoOffSettingItems;->addItem(II)V

    .line 227
    return-void
.end method
