.class Lcom/samsung/android/settings/notification/SoundSettings$15;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundSettings;
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
    .line 1657
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    .line 1661
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v9

    .line 1663
    .local v9, "stateId":Ljava/lang/String;
    const-string/jumbo v10, "SoundsModeSettings"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1664
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "interval_sound_mode"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1665
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1666
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1667
    :cond_0
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 2044
    :cond_1
    :goto_0
    return-void

    .line 1668
    :cond_2
    const-string/jumbo v10, "VibrateWhileRingingOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1669
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get24(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1671
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "Disable"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1673
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 1675
    :cond_3
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get24(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1676
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1678
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    .line 1679
    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 1678
    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 1681
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get24(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1682
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1684
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    .line 1685
    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 1684
    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1688
    :cond_5
    const-string/jumbo v10, "VibrateWhileRingingOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1689
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get24(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1691
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "Disable"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1693
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1695
    :cond_6
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get24(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1696
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1698
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    .line 1699
    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 1698
    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1701
    :cond_7
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get24(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1702
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1704
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    .line 1705
    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 1704
    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1708
    :cond_8
    const-string/jumbo v10, "VolumeSetting"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string/jumbo v10, "Volume"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1709
    :cond_9
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "volume_setting"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1710
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1711
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1713
    :cond_a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1714
    :cond_b
    const-string/jumbo v10, "VibrationIntensity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1715
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "vibration_feedback_intensity"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1716
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1717
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1718
    :cond_c
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1719
    :cond_d
    const-string/jumbo v10, "Ringtone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1720
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1721
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap6(Lcom/samsung/android/settings/notification/SoundSettings;)V

    .line 1725
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1726
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1727
    :cond_e
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1723
    :cond_f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/DefaultRingtonePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    .line 1728
    :cond_10
    const-string/jumbo v10, "Vibrationpattern"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1729
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1730
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1731
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1732
    :cond_11
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1733
    :cond_12
    const-string/jumbo v10, "NotificationSounds"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1734
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get22(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1735
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1736
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1737
    :cond_13
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1738
    :cond_14
    const-string/jumbo v10, "DoNotDisturb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1739
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get26(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1740
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1741
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1742
    :cond_15
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1743
    :cond_16
    const-string/jumbo v10, "TouchSoundsOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 1744
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get23(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 1745
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1747
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1756
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "touch_sounds"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1749
    :cond_17
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get23(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1750
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1751
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1754
    :cond_18
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2

    .line 1757
    :cond_19
    const-string/jumbo v10, "TouchSoundsOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1758
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get23(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_1a

    .line 1759
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1761
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1770
    :goto_3
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "touch_sounds"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1763
    :cond_1a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get23(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1764
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1765
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1768
    :cond_1b
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    .line 1771
    :cond_1c
    const-string/jumbo v10, "ScreenLockSoundsOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1772
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 1773
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 1774
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1777
    :cond_1d
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1786
    :goto_4
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "screen_locking_sounds"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1779
    :cond_1e
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1780
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1781
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1784
    :cond_1f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_4

    .line 1787
    :cond_20
    const-string/jumbo v10, "ScreenLockSoundsOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1788
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_21

    .line 1789
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1791
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1800
    :goto_5
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "screen_locking_sounds"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1793
    :cond_21
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1794
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1795
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1798
    :cond_22
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_5

    .line 1801
    :cond_23
    const-string/jumbo v10, "ChargingSoundsOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 1802
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    .line 1803
    const-string/jumbo v11, "charging_sounds"

    .line 1802
    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 1804
    .local v6, "preference":Landroid/preference/SwitchPreference;
    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1805
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1807
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1816
    :goto_6
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "charging_sounds"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1809
    :cond_24
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1810
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_25

    .line 1811
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1814
    :cond_25
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_6

    .line 1817
    .end local v6    # "preference":Landroid/preference/SwitchPreference;
    :cond_26
    const-string/jumbo v10, "ChargingSoundsOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 1818
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    .line 1819
    const-string/jumbo v11, "charging_sounds"

    .line 1818
    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 1820
    .restart local v6    # "preference":Landroid/preference/SwitchPreference;
    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_27

    .line 1821
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1823
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1832
    :goto_7
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "charging_sounds"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1825
    :cond_27
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1826
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_28

    .line 1827
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1830
    :cond_28
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_7

    .line 1833
    .end local v6    # "preference":Landroid/preference/SwitchPreference;
    :cond_29
    const-string/jumbo v10, "VibrationFeedbackOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 1834
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get25(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 1835
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1837
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1846
    :goto_8
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "vibrate_on_touch"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1839
    :cond_2a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get25(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1840
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 1841
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1844
    :cond_2b
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_8

    .line 1847
    :cond_2c
    const-string/jumbo v10, "VibrationFeedbackOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 1848
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get25(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_2d

    .line 1849
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1851
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1860
    :goto_9
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "vibrate_on_touch"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1853
    :cond_2d
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get25(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1854
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 1855
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1858
    :cond_2e
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_9

    .line 1861
    :cond_2f
    const-string/jumbo v10, "DialingKeypadTonesOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 1862
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_30

    .line 1863
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1865
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1874
    :goto_a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "dial_pad_tones"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1867
    :cond_30
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1868
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_31

    .line 1869
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1872
    :cond_31
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_a

    .line 1875
    :cond_32
    const-string/jumbo v10, "DialingKeypadTonesOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 1876
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_33

    .line 1877
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1879
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1888
    :goto_b
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "dial_pad_tones"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1881
    :cond_33
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1882
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_34

    .line 1883
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1886
    :cond_34
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_b

    .line 1889
    :cond_35
    const-string/jumbo v10, "KeyboardSoundOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_38

    .line 1890
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get12(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_36

    .line 1891
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1893
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1902
    :goto_c
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "keyboard_sound"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1895
    :cond_36
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get12(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1896
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_37

    .line 1897
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1900
    :cond_37
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_c

    .line 1903
    :cond_38
    const-string/jumbo v10, "KeyboardSoundOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 1904
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get12(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_39

    .line 1905
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1907
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1916
    :goto_d
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "keyboard_sound"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1909
    :cond_39
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get12(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1910
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 1911
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1914
    :cond_3a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_d

    .line 1917
    :cond_3b
    const-string/jumbo v10, "KeyboardVibrationOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 1918
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 1919
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1921
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1930
    :goto_e
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "keyboard_vibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1923
    :cond_3c
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1924
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 1925
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1928
    :cond_3d
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_e

    .line 1931
    :cond_3e
    const-string/jumbo v10, "KeyboardVibrationOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_41

    .line 1932
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_3f

    .line 1933
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1935
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1944
    :goto_f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "keyboard_vibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1937
    :cond_3f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1938
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_40

    .line 1939
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1942
    :cond_40
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_f

    .line 1945
    :cond_41
    const-string/jumbo v10, "SoundQualityAndEffects"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 1946
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get21(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1947
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_42

    .line 1948
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1949
    :cond_42
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1950
    :cond_43
    const-string/jumbo v10, "AddRingtone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 1951
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1952
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v10, v12}, Lcom/samsung/android/settings/notification/SoundSettings;->onMusicPickerChosen(I)Landroid/content/Intent;

    move-result-object v2

    .line 1954
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v10, 0x10000

    .line 1953
    invoke-virtual {v5, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1955
    .local v3, "mAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v4, "no"

    .line 1956
    .local v4, "nlgParamValue":Ljava/lang/String;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "ri$iterator":Ljava/util/Iterator;
    :cond_44
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_45

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1957
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 1958
    const-string/jumbo v4, "yes"

    goto :goto_10

    .line 1961
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_45
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_46

    .line 1962
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DefaulStorage "

    const-string/jumbo v12, "AlreadySet"

    invoke-virtual {v10, v11, v12, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1965
    :cond_46
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1966
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "nlgParamValue":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "ri$iterator":Ljava/util/Iterator;
    :cond_47
    const-string/jumbo v10, "SeparatAppSound"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_48

    const-string/jumbo v10, "SeparateAppSound"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 1967
    :cond_48
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundSettings;->-get4()Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v10

    if-nez v10, :cond_49

    .line 1968
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    .line 1969
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1970
    return-void

    .line 1972
    :cond_49
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "multi_sound"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1973
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 1974
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SeparateappsoundSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1975
    :cond_4a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1976
    :cond_4b
    const-string/jumbo v10, "UseVolumeKeysForMediaOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 1977
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 1978
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1987
    :cond_4c
    :goto_11
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "volume_key_control"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    .line 1988
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1981
    :cond_4d
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1982
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 1983
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_11

    .line 1989
    :cond_4e
    const-string/jumbo v10, "UseVolumeKeysForMediaOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 1990
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_50

    .line 1991
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2000
    :cond_4f
    :goto_12
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "volume_key_control"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    .line 2001
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1994
    :cond_50
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1995
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 1996
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_12

    .line 2002
    :cond_51
    const-string/jumbo v10, "SetEmergencyTone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2004
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "emergency_tone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_52

    .line 2005
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2007
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 2042
    :goto_13
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "emergency_tone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2010
    :cond_52
    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2017
    .local v1, "emergencyKeyParam":I
    if-eqz v1, :cond_53

    .line 2018
    const/4 v10, 0x2

    if-ne v10, v1, :cond_54

    .line 2020
    :cond_53
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/SecDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v1, :cond_55

    .line 2021
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SetEmergencyTone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2024
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 2025
    return-void

    .line 2011
    .end local v1    # "emergencyKeyParam":I
    :catch_0
    move-exception v0

    .line 2012
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2014
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 2015
    return-void

    .line 2019
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "emergencyKeyParam":I
    :cond_54
    if-eq v12, v1, :cond_53

    .line 2029
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2031
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 2032
    return-void

    .line 2027
    :cond_55
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 2035
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_56

    .line 2036
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SetEmergencyTone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2040
    :cond_56
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_13
.end method
