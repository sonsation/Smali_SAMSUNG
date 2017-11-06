.class Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "LegacySoundAliveUserSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->access$100(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;Z)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->access$200(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->notifyAudioPathChanged()V

    .line 205
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
