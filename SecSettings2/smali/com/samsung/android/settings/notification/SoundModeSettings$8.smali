.class Lcom/samsung/android/settings/notification/SoundModeSettings$8;
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
    .line 236
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 239
    const-string/jumbo v3, "SoundModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CallBack, mDisableListeners: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get2(Lcom/samsung/android/settings/notification/SoundModeSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get2(Lcom/samsung/android/settings/notification/SoundModeSettings;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    return v6

    .line 243
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 244
    .local v2, "val":I
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    .line 246
    .local v0, "currentIntervalValue":I
    const/4 v1, 0x0

    .line 247
    .local v1, "extraText":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 264
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap4(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    .line 265
    const/4 v3, 0x1

    return v3

    .line 249
    :pswitch_0
    const-string/jumbo v3, "SoundModeSettings"

    const-string/jumbo v4, "CallBack, Select Custom menu by DropDownPreference"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap2(Lcom/samsung/android/settings/notification/SoundModeSettings;I)V

    .line 251
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap3(Lcom/samsung/android/settings/notification/SoundModeSettings;I)V

    goto :goto_0

    .line 256
    :pswitch_1
    const-string/jumbo v3, "SoundModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CallBack, Select "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "hour by DropDownPreference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v3

    mul-int/lit8 v4, v2, 0x3c

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setMuteInterval(I)V

    .line 258
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap0(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "init_ramining_time"

    mul-int/lit8 v5, v2, 0x3c

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
