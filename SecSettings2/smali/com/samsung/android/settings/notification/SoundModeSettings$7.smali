.class Lcom/samsung/android/settings/notification/SoundModeSettings$7;
.super Ljava/lang/Object;
.source "SoundModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundModeSettings;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/SoundModeSettings;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get2(Lcom/samsung/android/settings/notification/SoundModeSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    return v2

    .line 208
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 209
    .local v1, "val":Z
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap0(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    .line 210
    const-string/jumbo v5, "mode_ringer_time_on"

    .line 209
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 211
    .local v0, "currentState":Z
    :goto_0
    if-ne v1, v0, :cond_2

    return v3

    .end local v0    # "currentState":Z
    :cond_1
    move v0, v2

    .line 210
    goto :goto_0

    .line 212
    .restart local v0    # "currentState":Z
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap0(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mode_ringer_time_on"

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    if-eqz v1, :cond_4

    .line 214
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setMuteInterval(I)V

    .line 216
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap1(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    .line 217
    return v3
.end method
