.class Lcom/samsung/android/settings/notification/SoundSettings$21;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/SoundSettings;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$21;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 624
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 625
    .local v1, "val":Z
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$21;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap0(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "pseudo_stereo_sound_settings"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 626
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.intent.action.AUDIO_DUAL_SPEAKER_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "value"

    if-eqz v1, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$21;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v4}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 629
    return v3

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    move v2, v4

    .line 625
    goto :goto_0
.end method
