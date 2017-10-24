.class Lcom/android/settings/TetherSettings$6;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2361
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    .line 2363
    .local v4, "stateId":Ljava/lang/String;
    const-string/jumbo v6, "TetheringSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStateReceived : stateId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    const-string/jumbo v6, "BluetoothTetheringOn"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2367
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v7, "device_policy"

    invoke-static {v6, v7}, Lcom/android/settings/TetherSettings;->-wrap0(Lcom/android/settings/TetherSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 2368
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3, v10}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2369
    .local v1, "allowInternetSharing":Z
    invoke-virtual {v3, v10}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    .line 2371
    .local v0, "allowBluetoothMode":I
    if-eqz v1, :cond_0

    if-eq v0, v12, :cond_1

    .line 2372
    :cond_0
    const-string/jumbo v6, "TetherSettings"

    const-string/jumbo v7, "Internet Sharing is restricted by MDM."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    const-string/jumbo v7, "bluetooth.pan.tether_on"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2374
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v6}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v7}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1040665

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2376
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2378
    return-void

    .line 2381
    :cond_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v7, "phone"

    invoke-static {v6, v7}, Lcom/android/settings/TetherSettings;->-wrap0(Lcom/android/settings/TetherSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 2383
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v6, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2384
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    .line 2385
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    const-string/jumbo v7, "bluetooth.pan.tether_on"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2386
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lcom/android/settings/TetherSettings;->-wrap5(Lcom/android/settings/TetherSettings;I)V

    .line 2388
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2390
    return-void

    .line 2393
    :cond_2
    const-string/jumbo v6, "bluetooth.pan.tether_on"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2394
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "BluetoothTethering"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    :goto_0
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2402
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MobileHotspotAndTethering"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2403
    :cond_3
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2405
    return-void

    .line 2396
    :cond_4
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6, v11}, Lcom/android/settings/TetherSettings;->-set3(Lcom/android/settings/TetherSettings;Z)Z

    .line 2397
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6, v12}, Lcom/android/settings/TetherSettings;->-wrap6(Lcom/android/settings/TetherSettings;I)V

    .line 2398
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "BluetoothTethering"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2407
    .end local v0    # "allowBluetoothMode":I
    .end local v1    # "allowInternetSharing":Z
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_5
    const-string/jumbo v6, "BluetoothTetheringOff"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2408
    const-string/jumbo v6, "bluetooth.pan.tether_on"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2409
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "BluetoothTethering"

    const-string/jumbo v8, "AlreadyOFF"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    :goto_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2422
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MobileHotspotAndTethering"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2423
    :cond_6
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2424
    return-void

    .line 2411
    :cond_7
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    .line 2412
    .local v2, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v2, :cond_8

    .line 2413
    invoke-virtual {v2, v9}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 2418
    :goto_2
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "BluetoothTethering"

    const-string/jumbo v8, "AlreadyOFF"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-wrap8(Lcom/android/settings/TetherSettings;)V

    goto :goto_1

    .line 2415
    :cond_8
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "bluetoothPan is null. request turn off when binding is done!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6, v11}, Lcom/android/settings/TetherSettings;->-set2(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_2

    .line 2426
    .end local v2    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :cond_9
    const-string/jumbo v6, "BluetoothTethering"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2427
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v7}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2428
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2429
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MobileHotspotAndTethering"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2430
    :cond_a
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2360
    :cond_b
    :goto_3
    return-void

    .line 2431
    :cond_c
    const-string/jumbo v6, "HotspotSettings"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2432
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get13(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 2433
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get13(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v7}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2434
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2435
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "HotspotSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2436
    :cond_d
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2442
    :goto_4
    return-void

    .line 2438
    :cond_e
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "mWifiApSettings is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "HotspotSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2440
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_4

    .line 2443
    :cond_f
    const-string/jumbo v6, "USBTetheringOn"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2444
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get12(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 2445
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get12(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2446
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "mUsbTether is checked!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 2448
    :cond_10
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get12(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_11

    .line 2449
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "USBTetheringOn is not enabled!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 2452
    :cond_11
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v7, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->-get12(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/TetherSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2453
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 2456
    :cond_12
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "mUsbTether is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 2459
    :cond_13
    const-string/jumbo v6, "USBTetheringOff"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2460
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get12(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 2461
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get12(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_14

    .line 2462
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "mUsbTether is not checked!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 2464
    :cond_14
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get12(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_15

    .line 2465
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "USBTetheringOn is not enabled!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 2468
    :cond_15
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v7, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->-get12(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/TetherSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2469
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 2472
    :cond_16
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "mUsbTether is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    iget-object v6, p0, Lcom/android/settings/TetherSettings$6;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3
.end method
