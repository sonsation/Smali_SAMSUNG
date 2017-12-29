.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;
.super Ljava/lang/Object;
.source "FullScreenAppsSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 555
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, "stateId":Ljava/lang/String;
    const-string/jumbo v7, "FullScreenAppsOn"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "FullScreenAppsOff"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 558
    :cond_0
    const-string/jumbo v7, "FullScreenAppsOn"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 559
    const/4 v6, 0x1

    .line 565
    .local v6, "toBeState":Z
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v7

    if-eqz v7, :cond_1

    .line 566
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    .line 565
    if-eqz v7, :cond_3

    .line 567
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SelectedApp"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FullScreenApps"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 569
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 570
    return-void

    .line 561
    .end local v6    # "toBeState":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "toBeState":Z
    goto :goto_0

    .line 573
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "appName":Ljava/lang/String;
    const-string/jumbo v7, " "

    const-string/jumbo v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 576
    .local v5, "toBeAppName":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 577
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SelectedApp"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FullScreenApps"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 579
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 580
    return-void

    .line 583
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get2(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v7

    if-ge v2, v7, :cond_a

    .line 584
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get2(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    .line 585
    .local v3, "pref":Landroid/preference/SwitchPreference;
    const/4 v1, 0x0

    .line 586
    .local v1, "checkingAppName":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 587
    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    .end local v1    # "checkingAppName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, " "

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "checkingAppName":Ljava/lang/String;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 590
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 589
    if-eqz v7, :cond_d

    .line 591
    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-ne v7, v6, :cond_8

    .line 592
    if-eqz v6, :cond_7

    .line 593
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "applicationName"

    invoke-virtual {v7, v8, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FullScreenApps"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 598
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    .line 599
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 598
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 617
    :goto_3
    return-void

    .line 595
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 600
    :cond_8
    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_9

    .line 601
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FullScreenApps"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 603
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    .line 604
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 603
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    .line 606
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get2(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 607
    if-eqz v6, :cond_c

    .line 608
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_4
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "applicationName"

    invoke-virtual {v7, v8, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FullScreenApps"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 613
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    .line 614
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 613
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 620
    .end local v1    # "checkingAppName":Ljava/lang/String;
    .end local v3    # "pref":Landroid/preference/SwitchPreference;
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SelectedApp"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "applicationName"

    invoke-virtual {v7, v8, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FullScreenApps"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 623
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 625
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "toBeAppName":Ljava/lang/String;
    .end local v6    # "toBeState":Z
    :cond_b
    return-void

    .line 610
    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v1    # "checkingAppName":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "pref":Landroid/preference/SwitchPreference;
    .restart local v5    # "toBeAppName":Ljava/lang/String;
    .restart local v6    # "toBeState":Z
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 583
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method
