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
    .line 244
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

    .line 247
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

    .line 248
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get2(Lcom/samsung/android/settings/notification/SoundModeSettings;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 252
    .local v2, "val":I
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    .line 254
    .local v0, "currentIntervalValue":I
    const/4 v1, 0x0

    .line 255
    .local v1, "extraText":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 270
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get1(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 272
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap4(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    .line 273
    const/4 v3, 0x1

    return v3

    .line 249
    .end local v0    # "currentIntervalValue":I
    .end local v1    # "extraText":Ljava/lang/String;
    .end local v2    # "val":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    return v6

    .line 257
    .end local p2    # "newValue":Ljava/lang/Object;
    .restart local v0    # "currentIntervalValue":I
    .restart local v1    # "extraText":Ljava/lang/String;
    .restart local v2    # "val":I
    :pswitch_0
    const-string/jumbo v3, "SoundModeSettings"

    const-string/jumbo v4, "CallBack, Select Custom menu by DropDownPreference"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap2(Lcom/samsung/android/settings/notification/SoundModeSettings;I)V

    .line 259
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$8;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap3(Lcom/samsung/android/settings/notification/SoundModeSettings;I)V

    goto :goto_0

    .line 264
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

    .line 265
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v3

    mul-int/lit8 v4, v2, 0x3c

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setMuteInterval(I)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
