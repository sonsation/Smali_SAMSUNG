.class Lcom/android/settings/notification/ZenAccessSettings$1;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenAccessSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenAccessSettings;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 325
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v6, "NotificationAccessOn"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 327
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_3

    .line 328
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v6}, Lcom/android/settings/notification/ZenAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 330
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 331
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    instance-of v6, v6, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_2

    .line 332
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 333
    .local v4, "switchPreference":Landroid/preference/SwitchPreference;
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "title":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 335
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 334
    if-eqz v6, :cond_2

    .line 336
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 337
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v6}, Lcom/android/settings/notification/ZenAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 338
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 339
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 340
    const-string/jumbo v7, "DoNotDisturbAccess"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "no"

    .line 339
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DoNotDisturbAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 343
    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 344
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 343
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 345
    return-void

    .line 347
    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 348
    const-string/jumbo v7, "DoNotDisturbAccess"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "yes"

    .line 347
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DoNotDisturbAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 350
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 351
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 350
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 352
    return-void

    .line 330
    .end local v4    # "switchPreference":Landroid/preference/SwitchPreference;
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 359
    .end local v0    # "i":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "root":Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ApplicationAppName"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DoNotDisturbAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 361
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 324
    :cond_4
    :goto_1
    return-void

    .line 362
    :cond_5
    const-string/jumbo v6, "NotificationAccessOff"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 363
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_9

    .line 364
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 365
    .restart local v1    # "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v6}, Lcom/android/settings/notification/ZenAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 366
    .restart local v2    # "root":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v0, v6, :cond_9

    .line 367
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    instance-of v6, v6, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_8

    .line 368
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 369
    .restart local v4    # "switchPreference":Landroid/preference/SwitchPreference;
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 370
    .restart local v5    # "title":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 371
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 370
    if-eqz v6, :cond_8

    .line 372
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 373
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v6}, Lcom/android/settings/notification/ZenAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 374
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 375
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 376
    const-string/jumbo v7, "DoNotDisturbAccess"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "no"

    .line 375
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DoNotDisturbAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 379
    :cond_6
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 380
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 379
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 381
    return-void

    .line 383
    :cond_7
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 384
    const-string/jumbo v7, "DoNotDisturbAccess"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "yes"

    .line 383
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DoNotDisturbAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 386
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 387
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 386
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 388
    return-void

    .line 366
    .end local v4    # "switchPreference":Landroid/preference/SwitchPreference;
    .end local v5    # "title":Ljava/lang/String;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 395
    .end local v0    # "i":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "root":Landroid/preference/PreferenceScreen;
    :cond_9
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ApplicationAppName"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "DoNotDisturbAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 397
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/ZenAccessSettings;->-get0(Lcom/android/settings/notification/ZenAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
