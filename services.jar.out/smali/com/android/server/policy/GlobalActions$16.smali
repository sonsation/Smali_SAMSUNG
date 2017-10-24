.class Lcom/android/server/policy/GlobalActions$16;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFirstEmergency:Z

.field private mIsVT:Z

.field private mShowConditionalEmergency:Z

.field telephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # I
    .param p6, "$anonymous4"    # I

    .prologue
    const/4 v6, 0x0

    .line 1349
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$16;->mIsFirstEmergency:Z

    .line 1359
    iput-boolean v6, p0, Lcom/android/server/policy/GlobalActions$16;->mShowConditionalEmergency:Z

    .line 1360
    iput-boolean v6, p0, Lcom/android/server/policy/GlobalActions$16;->mIsVT:Z

    .line 1361
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$16;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 1356
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 3
    .param p1, "buttonOn"    # Z

    .prologue
    .line 1391
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in changeStateFromPress of LongLifeMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$16;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$16;->mIsVT:Z

    .line 1449
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$16;->mIsVT:Z

    if-eqz v0, :cond_0

    .line 1450
    const/4 v0, 0x0

    return v0

    .line 1453
    :cond_0
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1364
    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "in onPress of LongLifeMode"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v4, "com.android.service.GlobalAction"

    const-string/jumbo v5, "0002"

    const-string/jumbo v6, "EmergencyMode"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-wrap3(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1368
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get62(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1369
    return-void

    .line 1372
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isBikeMode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 1373
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x10408ad

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1374
    return-void

    .line 1378
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1379
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "enabled"

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1380
    const-string/jumbo v1, "flag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1381
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1363
    return-void

    :cond_2
    move v1, v2

    .line 1379
    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1386
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in onToggle of LongLifeMode on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1399
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    .line 1403
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$16;->mIsFirstEmergency:Z

    if-eqz v0, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$16;->showConditionalInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$16;->mShowConditionalEmergency:Z

    .line 1405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$16;->mIsFirstEmergency:Z

    .line 1407
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$16;->mShowConditionalEmergency:Z

    return v0
.end method

.method public showConditionalInternal()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1411
    const-string/jumbo v6, "ril.domesticOtaStart"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1412
    .local v1, "domesticOtaStart":Ljava/lang/String;
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1413
    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v6, :cond_0

    .line 1414
    const-string/jumbo v6, "GlobalActions"

    const-string/jumbo v7, "EmergencyMode is disable on OTA mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_0
    return v10

    .line 1419
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1420
    const-string/jumbo v6, "lock"

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "missing_phone_lock"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1421
    return v10

    .line 1423
    :cond_2
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    .line 1424
    .local v2, "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-eqz v2, :cond_8

    .line 1425
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v7, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v8, "isKioskModeEnabled"

    iget-object v9, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v9}, Lcom/android/server/policy/GlobalActions;->-get59(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/policy/GlobalActions;->-wrap12(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    .line 1426
    .local v3, "isKioskMode":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "kids_home_mode"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_5

    const/4 v4, 0x1

    .line 1427
    .local v4, "kidsModeEnabled":Z
    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x600

    invoke-virtual {v2, v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v5

    .line 1428
    :goto_2
    invoke-virtual {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->canSetMode()Z

    move-result v0

    .line 1429
    .local v0, "canSetMode":Z
    const-string/jumbo v6, "GlobalActions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "kioskModeEnabled ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1430
    const-string/jumbo v8, "kidsModeEnabled ="

    .line 1429
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1431
    const-string/jumbo v8, "upsmModeEnabled ="

    .line 1429
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1432
    const-string/jumbo v8, "canSetMode ="

    .line 1429
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    if-eqz v0, :cond_3

    if-eqz v5, :cond_7

    .line 1443
    .end local v0    # "canSetMode":Z
    .end local v2    # "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .end local v3    # "isKioskMode":Z
    .end local v4    # "kidsModeEnabled":Z
    :cond_3
    :goto_3
    return v10

    .line 1425
    .restart local v2    # "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isKioskMode":Z
    goto :goto_0

    .line 1426
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "kidsModeEnabled":Z
    goto :goto_1

    .line 1427
    :cond_6
    const/4 v5, 0x0

    .local v5, "upsmModeEnabled":Z
    goto :goto_2

    .line 1433
    .end local v5    # "upsmModeEnabled":Z
    .restart local v0    # "canSetMode":Z
    :cond_7
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    .line 1434
    return v11

    .line 1437
    .end local v0    # "canSetMode":Z
    .end local v3    # "isKioskMode":Z
    .end local v4    # "kidsModeEnabled":Z
    :cond_8
    const-string/jumbo v6, "GlobalActions"

    const-string/jumbo v7, "mEmergency : emMgr is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1440
    .end local v2    # "emMgr":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_9
    const-string/jumbo v6, "GlobalActions"

    const-string/jumbo v7, "mEmergency : SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE is false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x1

    return v0
.end method
