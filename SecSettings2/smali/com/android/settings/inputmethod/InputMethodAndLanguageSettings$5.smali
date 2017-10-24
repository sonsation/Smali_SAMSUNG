.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1403
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 1404
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v5, "Language"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1405
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get5(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1406
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1407
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1408
    :cond_0
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1485
    :cond_1
    :goto_0
    return-void

    .line 1409
    :cond_2
    const-string/jumbo v5, "ChangeLanguage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1410
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 1411
    const-string/jumbo v6, "current_input_method"

    .line 1410
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1412
    .local v0, "curPref":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1413
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1414
    .end local v0    # "curPref":Landroid/preference/Preference;
    :cond_3
    const-string/jumbo v5, "VirtualKeyboard"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1415
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 1416
    const-string/jumbo v6, "virtual_keyboard_settings"

    .line 1415
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1417
    .restart local v0    # "curPref":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1418
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1419
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "VirtualKeyboard"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1420
    :cond_4
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1421
    .end local v0    # "curPref":Landroid/preference/Preference;
    :cond_5
    const-string/jumbo v5, "TextToSpeech"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1422
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "tts_settings"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1423
    .local v4, "ttsPref":Landroid/preference/Preference;
    if-eqz v4, :cond_6

    .line 1424
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1425
    :cond_6
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1427
    .end local v4    # "ttsPref":Landroid/preference/Preference;
    :cond_7
    const/4 v2, 0x0

    .line 1428
    .local v2, "speed":I
    const/4 v1, 0x0

    .line 1429
    .local v1, "newInt":I
    const-string/jumbo v5, "PointerSpeed"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1430
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-lez v5, :cond_1

    .line 1431
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v1

    .line 1432
    if-ltz v1, :cond_8

    const/16 v5, 0x64

    if-gt v1, v5, :cond_8

    .line 1433
    div-int/lit8 v5, v1, 0x7

    add-int/lit8 v2, v5, -0x7

    .line 1434
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get3(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 1435
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get3(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/hardware/input/InputManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    .line 1436
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get6(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/android/settings/PointerSpeedPreference;

    move-result-object v5

    add-int/lit8 v6, v2, 0x7

    invoke-virtual {v5, v6}, Lcom/android/settings/PointerSpeedPreference;->setProgress(I)V

    .line 1437
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PointerSpeed"

    const-string/jumbo v7, "Valid"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PointerSpeed"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LanguageAndInput"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1440
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1442
    :cond_8
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PointerSpeed"

    const-string/jumbo v7, "Valid"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LanguageAndInput"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1444
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1447
    :cond_9
    const-string/jumbo v5, "PointerSpeedUp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "PointerSpeedMax"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1448
    :cond_a
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get3(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/hardware/input/InputManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v2

    .line 1449
    const/4 v5, 0x7

    if-ne v2, v5, :cond_b

    .line 1450
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PointerSpeed"

    const-string/jumbo v7, "AlreadyMax"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LanguageAndInput"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1452
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1454
    :cond_b
    const-string/jumbo v5, "PointerSpeedUp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1455
    add-int/lit8 v2, v2, 0x1

    .line 1459
    :goto_1
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get3(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/hardware/input/InputManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    .line 1460
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get6(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/android/settings/PointerSpeedPreference;

    move-result-object v5

    add-int/lit8 v6, v2, 0x7

    invoke-virtual {v5, v6}, Lcom/android/settings/PointerSpeedPreference;->setProgress(I)V

    .line 1461
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PointerSpeed"

    const-string/jumbo v7, "AlreadyMax"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LanguageAndInput"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1463
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1457
    :cond_c
    const/4 v2, 0x7

    goto :goto_1

    .line 1465
    :cond_d
    const-string/jumbo v5, "PointerSpeedDown"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string/jumbo v5, "PointerSpeedMin"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1466
    :cond_e
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get3(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/hardware/input/InputManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v2

    .line 1467
    const/4 v5, -0x7

    if-ne v2, v5, :cond_f

    .line 1468
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PointerSpeed"

    const-string/jumbo v7, "AlreadyMin"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LanguageAndInput"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1470
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1472
    :cond_f
    const-string/jumbo v5, "PointerSpeedDown"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1473
    add-int/lit8 v2, v2, -0x1

    .line 1477
    :goto_2
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get3(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/hardware/input/InputManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    .line 1478
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get6(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/android/settings/PointerSpeedPreference;

    move-result-object v5

    add-int/lit8 v6, v2, 0x7

    invoke-virtual {v5, v6}, Lcom/android/settings/PointerSpeedPreference;->setProgress(I)V

    .line 1479
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PointerSpeed"

    const-string/jumbo v7, "AlreadyMin"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LanguageAndInput"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1481
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1475
    :cond_10
    const/4 v2, -0x7

    goto :goto_2
.end method
