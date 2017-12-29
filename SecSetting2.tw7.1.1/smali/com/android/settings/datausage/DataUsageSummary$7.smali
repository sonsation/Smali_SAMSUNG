.class final Lcom/android/settings/datausage/DataUsageSummary$7;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1355
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x1

    .line 1391
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    .local v6, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    .line 1394
    .local v1, "hasMobileData":Z
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 1395
    .local v0, "defaultSubId":I
    const/4 v12, -0x1

    if-ne v0, v12, :cond_0

    .line 1396
    const/4 v1, 0x0

    .line 1400
    .end local v1    # "hasMobileData":Z
    :cond_0
    const/4 v9, 0x0

    .line 1401
    .local v9, "restrictBackgroundbyPco":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string/jumbo v13, "CscFeature_Common_ConfigPco"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1402
    .local v8, "mPcoFeature":Ljava/lang/String;
    const-string/jumbo v12, "COMMON"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1403
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "background_data_by_pco"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eq v12, v11, :cond_f

    const/4 v9, 0x1

    .line 1406
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    if-eqz v9, :cond_4

    .line 1407
    :cond_3
    const-string/jumbo v12, "restrict_background"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    :cond_4
    const/4 v7, 0x0

    .line 1411
    .local v7, "mIsCHNSmartManager":Z
    const/4 v2, 0x0

    .line 1412
    .local v2, "isKnoxmode":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    const/16 v13, 0x64

    if-lt v12, v13, :cond_11

    .line 1413
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v2, 0x0

    .line 1415
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz v2, :cond_12

    .line 1418
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v7, :cond_13

    .line 1423
    :cond_6
    :goto_3
    const/4 v5, 0x0

    .line 1424
    .local v5, "isVZW":Z
    const/4 v3, 0x0

    .line 1425
    .local v3, "isSPR":Z
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    .line 1426
    .local v10, "salesCode":Ljava/lang/String;
    const-string/jumbo v12, "VZW"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v5, 0x1

    .line 1429
    :cond_7
    :goto_4
    if-nez v5, :cond_16

    .end local v3    # "isSPR":Z
    :goto_5
    if-nez v3, :cond_8

    .line 1430
    const-string/jumbo v11, "alert_at_warning"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1436
    .local v4, "isSupportBootPopup":Z
    if-eqz v4, :cond_9

    const-string/jumbo v11, "XEC"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1437
    :cond_9
    const-string/jumbo v11, "confirm_at_boot"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1441
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 1442
    const-string/jumbo v11, "cellular_data_usage"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    const-string/jumbo v11, "billing_preference"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1445
    const-string/jumbo v11, "check_phone_balance"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1455
    :cond_b
    :goto_6
    sget-boolean v11, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v11, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_d

    .line 1456
    :cond_c
    const-string/jumbo v11, "data_usage_reminder"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 1465
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v11

    if-nez v11, :cond_e

    .line 1466
    const-string/jumbo v11, "data_saving_chn"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    :cond_e
    const-string/jumbo v11, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string/jumbo v12, "UDS"

    invoke-static {v11, v12}, Lcom/android/settings/datausage/DataUsageSummary;->-wrap0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    const-string/jumbo v11, "com.samsung.android.uds"

    invoke-static {p1, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 1472
    :goto_8
    return-object v6

    .line 1403
    .end local v2    # "isKnoxmode":Z
    .end local v4    # "isSupportBootPopup":Z
    .end local v5    # "isVZW":Z
    .end local v7    # "mIsCHNSmartManager":Z
    .end local v10    # "salesCode":Ljava/lang/String;
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1413
    .restart local v2    # "isKnoxmode":Z
    .restart local v7    # "mIsCHNSmartManager":Z
    :cond_10
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1412
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1416
    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1419
    :cond_13
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    :goto_9
    if-nez v12, :cond_6

    .line 1420
    const-string/jumbo v12, "data_usage_enable"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_14
    move v12, v11

    .line 1419
    goto :goto_9

    .line 1427
    .restart local v3    # "isSPR":Z
    .restart local v5    # "isVZW":Z
    .restart local v10    # "salesCode":Ljava/lang/String;
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v3, 0x1

    goto/16 :goto_4

    :cond_16
    move v3, v11

    .line 1429
    goto/16 :goto_5

    .line 1448
    .end local v3    # "isSPR":Z
    .restart local v4    # "isSupportBootPopup":Z
    :cond_17
    const-string/jumbo v11, "billing_preference_chn"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    const-string/jumbo v11, "restrict_app_data"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    const-string/jumbo v11, "set_used_data"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    const-string/jumbo v11, "top_up_phone_balance"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    const-string/jumbo v11, "check_phone_balance"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    const-string/jumbo v11, "top_up_data_balance"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1460
    :cond_18
    const-string/jumbo v11, "operator_set"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1470
    :cond_19
    const-string/jumbo v11, "ultra_data_saver"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1360
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    .local v3, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    new-instance v2, Landroid/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1362
    .local v2, "resource":Landroid/provider/SearchIndexableResource;
    const v4, 0x7f080049

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1363
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    const-string/jumbo v4, "DataUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "search hasMobileData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    .line 1366
    .local v1, "hasMobileData":Z
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 1367
    .local v0, "defaultSubId":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 1368
    const/4 v1, 0x0

    .line 1371
    .end local v1    # "hasMobileData":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 1372
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .end local v2    # "resource":Landroid/provider/SearchIndexableResource;
    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1373
    .restart local v2    # "resource":Landroid/provider/SearchIndexableResource;
    const v4, 0x7f08004b

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1374
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    :cond_1
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1377
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .end local v2    # "resource":Landroid/provider/SearchIndexableResource;
    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1378
    .restart local v2    # "resource":Landroid/provider/SearchIndexableResource;
    const v4, 0x7f080052

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1379
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    :cond_2
    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    .line 1386
    :cond_3
    :goto_0
    return-object v3

    .line 1381
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_3

    .line 1382
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .end local v2    # "resource":Landroid/provider/SearchIndexableResource;
    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1383
    .restart local v2    # "resource":Landroid/provider/SearchIndexableResource;
    const v4, 0x7f080051

    iput v4, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1384
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
