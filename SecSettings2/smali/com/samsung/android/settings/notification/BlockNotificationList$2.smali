.class Lcom/samsung/android/settings/notification/BlockNotificationList$2;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/BlockNotificationList;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 418
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 419
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap3(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    .line 420
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 421
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get11(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 424
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 425
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "stateId":Ljava/lang/String;
    const-string/jumbo v4, "AppNotificationsListOn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 427
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 428
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 430
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 517
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 417
    .end local v2    # "stateId":Ljava/lang/String;
    :cond_2
    return-void

    .line 432
    .restart local v2    # "stateId":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 433
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 434
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 437
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 439
    :cond_5
    const-string/jumbo v4, "AppNotificationsListOff"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 440
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_6

    .line 441
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 443
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 445
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 446
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 447
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 450
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 452
    :cond_8
    const-string/jumbo v4, "AppNotificationsListApplicationNameOn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 453
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-lez v4, :cond_b

    .line 454
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_b

    .line 457
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_a

    .line 458
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    .line 459
    .local v3, "switchPreference":Landroid/preference/SwitchPreference;
    if-eqz v1, :cond_a

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 460
    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_9

    .line 461
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get3(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v5

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget-object v6, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    .line 462
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget v4, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    .line 461
    invoke-virtual {v5, v6, v4, v8}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    .line 463
    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 464
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 465
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SelectedApp"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 468
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 475
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 476
    return-void

    .line 470
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SelectedApp"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 473
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2

    .line 456
    .end local v3    # "switchPreference":Landroid/preference/SwitchPreference;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 482
    .end local v0    # "i":I
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SelectedApp"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 484
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 485
    :cond_c
    const-string/jumbo v4, "AppNotificationsListApplicationNameOff"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 486
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 488
    .restart local v1    # "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_f

    .line 489
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_e

    .line 490
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    .line 491
    .restart local v3    # "switchPreference":Landroid/preference/SwitchPreference;
    if-eqz v1, :cond_e

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 492
    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 493
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get3(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v5

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget-object v6, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    .line 494
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget v4, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    .line 493
    invoke-virtual {v5, v6, v4, v7}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    .line 495
    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 496
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 497
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SelectedApp"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 500
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 507
    :goto_4
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 508
    return-void

    .line 502
    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SelectedApp"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 505
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_4

    .line 488
    .end local v3    # "switchPreference":Landroid/preference/SwitchPreference;
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 513
    :cond_f
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SelectedApp"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 515
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
