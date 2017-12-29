.class final Lcom/samsung/android/settings/WirelessSettings$7;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1157
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 26
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
    .line 1196
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v23, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 1199
    .local v22, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 1200
    .local v12, "myUserId":I
    if-eqz v12, :cond_22

    const/4 v10, 0x1

    .line 1201
    .local v10, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1203
    .local v14, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v23

    if-nez v23, :cond_0

    .line 1204
    const-string/jumbo v23, "data_usage_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    const-string/jumbo v23, "header_connection_tethering_hotspot"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    const-string/jumbo v23, "toggle_nearby_scanning"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v23

    if-eqz v23, :cond_23

    const-string/jumbo v23, "android.hardware.nfc"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_23

    .line 1213
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1214
    :cond_1
    const-string/jumbo v23, "mobile_network_settings_for_C"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_2
    const-string/jumbo v23, "network_management"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 1217
    invoke-static/range {v23 .. v23}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v13

    .line 1220
    .local v13, "netManager":Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v13}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v23

    if-nez v23, :cond_3

    .line 1221
    const-string/jumbo v23, "data_usage_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1227
    :cond_3
    :goto_2
    const-string/jumbo v23, "com.ipsec.vpnclient"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 1229
    .local v7, "hasAdvVpn":Z
    if-eqz v7, :cond_24

    .line 1230
    const-string/jumbo v23, "vpn_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    :goto_3
    if-nez v10, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v23

    if-nez v23, :cond_4

    .line 1235
    const-string/jumbo v23, "no_config_vpn"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    .line 1234
    if-eqz v23, :cond_5

    .line 1236
    :cond_4
    const-string/jumbo v23, "vpn_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    const-string/jumbo v23, "vpn_settings_for_att"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_5
    const-string/jumbo v23, "persist.sys.tether_data"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/settings/WirelessSettings;->-set2(I)I

    .line 1241
    const-string/jumbo v23, "WirelessSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "getNonIndexableKeys() mTetheredDataML : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get7()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const-string/jumbo v23, "wifi_ap_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    const-string/jumbo v23, "MTR"

    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get10()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1245
    const-string/jumbo v23, "vpn_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    :cond_6
    if-nez v10, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1249
    :cond_7
    const-string/jumbo v23, "mobile_network_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_8
    const-string/jumbo v23, "mobile_network_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    .line 1254
    .local v18, "sSalesCode":Ljava/lang/String;
    const-string/jumbo v23, "VZW"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25

    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get0()Z

    move-result v23

    if-eqz v23, :cond_25

    .line 1259
    :goto_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Common_ConfigPco"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1260
    .local v6, "feature":Ljava/lang/String;
    const-string/jumbo v23, "VZW_PREPAID"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_26

    const-string/jumbo v23, "VZW_TABLET"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    :goto_5
    if-eqz v23, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    if-eqz v23, :cond_a

    .line 1261
    :cond_9
    const-string/jumbo v23, "pay_as_you_go"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    const-string/jumbo v23, "data_plan_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    :cond_a
    const-string/jumbo v23, "android.hardware.type.television"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_27

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v23

    if-eqz v23, :cond_27

    .line 1272
    :goto_6
    const-string/jumbo v23, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1271
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1273
    .local v2, "cm":Landroid/net/ConnectivityManager;
    if-nez v10, :cond_28

    .line 1274
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v23

    if-eqz v23, :cond_28

    .line 1275
    const-string/jumbo v23, "SBM"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_28

    .line 1280
    :goto_7
    const-string/jumbo v23, "SBM"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1281
    const-string/jumbo v23, "tether_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    const-string/jumbo v23, "wifi_ap_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    :cond_b
    if-nez v10, :cond_c

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1286
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v23

    .line 1285
    if-eqz v23, :cond_d

    .line 1287
    :cond_c
    const-string/jumbo v23, "header_connection_tethering_hotspot"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportEthernet()Z

    move-result v23

    if-nez v23, :cond_e

    .line 1290
    const-string/jumbo v23, "ethernet_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v15

    .line 1294
    .local v15, "rcsUtility":Lcom/samsung/android/settings/rcs/RcsUtils;
    if-eqz v15, :cond_10

    .line 1295
    const-string/jumbo v23, "com.samsung.rcs"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_29

    .line 1296
    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsUtils;->isRcsEnabledInCsc()Z

    move-result v23

    if-eqz v23, :cond_29

    .line 1301
    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcse()Z

    move-result v23

    if-nez v23, :cond_f

    .line 1302
    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isFullBranded()Z

    move-result v23

    .line 1301
    if-eqz v23, :cond_2a

    .line 1303
    :cond_f
    const-string/jumbo v23, "rcs_settings_partial_branded"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    const-string/jumbo v23, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    :cond_10
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string/jumbo v24, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 1323
    .local v11, "isSupportMirrorLink":Z
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string/jumbo v24, "com.samsung.android.app.mirrorlink"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1327
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    .line 1329
    .local v17, "sCode":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1330
    .local v9, "isChameleonSpec2":Z
    const/16 v21, -0x1

    .line 1332
    .local v21, "tetheredDataUsb":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    .line 1333
    const-string/jumbo v24, "CscFeature_Common_EnableSprintExtension"

    .line 1332
    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    .line 1331
    if-eqz v23, :cond_12

    .line 1334
    const-string/jumbo v23, "persist.sys.tether_data_usb"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 1336
    const-string/jumbo v23, "persist.sys.tether_data_bt"

    const/16 v24, -0x1

    .line 1335
    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 1338
    .local v19, "tetheredDataBluetooth":I
    const-string/jumbo v23, "persist.sys.tether_data_wifi"

    const/16 v24, -0x1

    .line 1337
    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 1339
    .local v20, "tetheredDataHotspot":I
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_2d

    .line 1341
    :cond_11
    :goto_9
    const/4 v9, 0x1

    .line 1345
    .end local v19    # "tetheredDataBluetooth":I
    .end local v20    # "tetheredDataHotspot":I
    :cond_12
    if-eqz v11, :cond_14

    .line 1347
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    .line 1346
    if-nez v23, :cond_13

    .line 1348
    const-string/jumbo v23, "TFN"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 1346
    if-eqz v23, :cond_2e

    .line 1349
    :cond_13
    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get7()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2e

    .line 1351
    :cond_14
    :goto_a
    const-string/jumbo v23, "mirror_link_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    .end local v11    # "isSupportMirrorLink":Z
    :cond_15
    :goto_b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v23

    if-eqz v23, :cond_3c

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/WirelessSettings;->isDownloadBoosterSupported(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_3c

    .line 1360
    :goto_c
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 1361
    const-string/jumbo v23, "vpn_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    const-string/jumbo v23, "vpn_settings_for_att"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    :cond_16
    const-string/jumbo v23, "network_reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v23

    if-eqz v23, :cond_18

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v23

    if-nez v23, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v23

    if-eqz v23, :cond_18

    :cond_17
    if-eqz v10, :cond_19

    .line 1370
    :cond_18
    const-string/jumbo v23, "multi_path"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_19
    const-string/jumbo v23, "wifi_calling_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1a

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/WirelessSettings;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 1380
    const-string/jumbo v23, "wfc_settings_key"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    :cond_1a
    if-nez v10, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 1384
    :cond_1b
    const-string/jumbo v23, "nearby_scanning_setting_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    :cond_1c
    const/4 v3, 0x0

    .line 1389
    .local v3, "displayManager":Landroid/hardware/display/DisplayManager;
    const-string/jumbo v23, "screen_sharing_ready_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->showVzwEmergencyAlertOption(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_3d

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_3d

    .line 1397
    :goto_d
    if-nez v10, :cond_3e

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportDeviceVisibility(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_3e

    .line 1400
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_1d

    .line 1401
    const-string/jumbo v23, "device_visibility_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    :cond_1d
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportVZWNetworkLock(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 1407
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v23

    .line 1405
    if-eqz v23, :cond_1f

    .line 1408
    :cond_1e
    const-string/jumbo v23, "network_unlock"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setVzwNetworkUnLocked(Landroid/content/Context;)V

    .line 1412
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "hdmi_mode"

    const/16 v25, -0x1

    invoke-static/range {v23 .. v25}, Lcom/android/settings/Utils;->getIntFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1413
    .local v8, "hdmiMode":I
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v23

    if-eqz v23, :cond_20

    const-string/jumbo v23, "com.sec.android.app.desktoplauncher"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_20

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_21

    .line 1414
    :cond_20
    const-string/jumbo v23, "hdmi_mode"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    :cond_21
    return-object v16

    .line 1200
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v6    # "feature":Ljava/lang/String;
    .end local v7    # "hasAdvVpn":Z
    .end local v8    # "hdmiMode":I
    .end local v9    # "isChameleonSpec2":Z
    .end local v10    # "isSecondaryUser":Z
    .end local v13    # "netManager":Landroid/os/INetworkManagementService;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "rcsUtility":Lcom/samsung/android/settings/rcs/RcsUtils;
    .end local v17    # "sCode":Ljava/lang/String;
    .end local v18    # "sSalesCode":Ljava/lang/String;
    .end local v21    # "tetheredDataUsb":I
    :cond_22
    const/4 v10, 0x0

    .restart local v10    # "isSecondaryUser":Z
    goto/16 :goto_0

    .line 1210
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_23
    const-string/jumbo v23, "nfc_setting"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1232
    .restart local v7    # "hasAdvVpn":Z
    .restart local v13    # "netManager":Landroid/os/INetworkManagementService;
    :cond_24
    const-string/jumbo v23, "vpn_settings_for_att"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1255
    .restart local v18    # "sSalesCode":Ljava/lang/String;
    :cond_25
    const-string/jumbo v23, "nearby_setting_vzw"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    const-string/jumbo v23, "media_share_category_vzw"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1260
    .restart local v6    # "feature":Ljava/lang/String;
    :cond_26
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 1267
    :cond_27
    const-string/jumbo v23, "toggle_airplane"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1276
    .restart local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_28
    const-string/jumbo v23, "tether_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    const-string/jumbo v23, "wifi_ap_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1297
    .restart local v15    # "rcsUtility":Lcom/samsung/android/settings/rcs/RcsUtils;
    :cond_29
    const-string/jumbo v23, "rcs_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    const-string/jumbo v23, "rcs_settings_partial_branded"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    const-string/jumbo v23, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1305
    :cond_2a
    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isPartialBranded()Z

    move-result v23

    if-eqz v23, :cond_2c

    .line 1306
    const-string/jumbo v23, "rcs_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isSupportCPR()Z

    move-result v23

    if-eqz v23, :cond_2b

    .line 1308
    const-string/jumbo v23, "rcs_settings_partial_branded"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1310
    :cond_2b
    const-string/jumbo v23, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1313
    :cond_2c
    const-string/jumbo v23, "rcs_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    const-string/jumbo v23, "rcs_settings_partial_branded"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    const-string/jumbo v23, "rcs_settings_partial_branded_cpr"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1340
    .restart local v9    # "isChameleonSpec2":Z
    .restart local v11    # "isSupportMirrorLink":Z
    .restart local v17    # "sCode":Ljava/lang/String;
    .restart local v19    # "tetheredDataBluetooth":I
    .restart local v20    # "tetheredDataHotspot":I
    .restart local v21    # "tetheredDataUsb":I
    :cond_2d
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    goto/16 :goto_9

    .line 1350
    .end local v19    # "tetheredDataBluetooth":I
    .end local v20    # "tetheredDataHotspot":I
    :cond_2e
    if-eqz v9, :cond_15

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    goto/16 :goto_a

    .line 1324
    .end local v9    # "isChameleonSpec2":Z
    .end local v17    # "sCode":Ljava/lang/String;
    .end local v21    # "tetheredDataUsb":I
    :catch_0
    move-exception v4

    .line 1325
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v11, 0x0

    .line 1327
    .local v11, "isSupportMirrorLink":Z
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    .line 1329
    .restart local v17    # "sCode":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1330
    .restart local v9    # "isChameleonSpec2":Z
    const/16 v21, -0x1

    .line 1332
    .restart local v21    # "tetheredDataUsb":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    .line 1333
    const-string/jumbo v24, "CscFeature_Common_EnableSprintExtension"

    .line 1332
    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    .line 1331
    if-eqz v23, :cond_30

    .line 1334
    const-string/jumbo v23, "persist.sys.tether_data_usb"

    const/16 v24, -0x1

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 1336
    const-string/jumbo v23, "persist.sys.tether_data_bt"

    const/16 v24, -0x1

    .line 1335
    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 1338
    .restart local v19    # "tetheredDataBluetooth":I
    const-string/jumbo v23, "persist.sys.tether_data_wifi"

    const/16 v24, -0x1

    .line 1337
    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 1339
    .restart local v20    # "tetheredDataHotspot":I
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2f

    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_33

    .line 1341
    :cond_2f
    :goto_f
    const/4 v9, 0x1

    .line 1345
    .end local v19    # "tetheredDataBluetooth":I
    .end local v20    # "tetheredDataHotspot":I
    :cond_30
    if-eqz v11, :cond_32

    .line 1347
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    .line 1346
    if-nez v23, :cond_31

    .line 1348
    const-string/jumbo v23, "TFN"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 1346
    if-eqz v23, :cond_34

    .line 1349
    :cond_31
    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get7()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_34

    .line 1351
    :cond_32
    :goto_10
    const-string/jumbo v23, "mirror_link_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 1340
    .restart local v19    # "tetheredDataBluetooth":I
    .restart local v20    # "tetheredDataHotspot":I
    :cond_33
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_30

    goto :goto_f

    .line 1350
    .end local v19    # "tetheredDataBluetooth":I
    .end local v20    # "tetheredDataHotspot":I
    :cond_34
    if-eqz v9, :cond_15

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    goto :goto_10

    .line 1326
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "isChameleonSpec2":Z
    .end local v17    # "sCode":Ljava/lang/String;
    .end local v21    # "tetheredDataUsb":I
    .local v11, "isSupportMirrorLink":Z
    :catchall_0
    move-exception v23

    .line 1327
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    .line 1329
    .restart local v17    # "sCode":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1330
    .restart local v9    # "isChameleonSpec2":Z
    const/16 v21, -0x1

    .line 1332
    .restart local v21    # "tetheredDataUsb":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v24

    .line 1333
    const-string/jumbo v25, "CscFeature_Common_EnableSprintExtension"

    .line 1332
    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    .line 1331
    if-eqz v24, :cond_36

    .line 1334
    const-string/jumbo v24, "persist.sys.tether_data_usb"

    const/16 v25, -0x1

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 1336
    const-string/jumbo v24, "persist.sys.tether_data_bt"

    const/16 v25, -0x1

    .line 1335
    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 1338
    .restart local v19    # "tetheredDataBluetooth":I
    const-string/jumbo v24, "persist.sys.tether_data_wifi"

    const/16 v25, -0x1

    .line 1337
    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 1339
    .restart local v20    # "tetheredDataHotspot":I
    const/16 v24, -0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_35

    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_3a

    .line 1341
    :cond_35
    :goto_11
    const/4 v9, 0x1

    .line 1345
    .end local v19    # "tetheredDataBluetooth":I
    .end local v20    # "tetheredDataHotspot":I
    :cond_36
    if-eqz v11, :cond_38

    .line 1347
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v24

    const-string/jumbo v25, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    .line 1346
    if-nez v24, :cond_37

    .line 1348
    const-string/jumbo v24, "TFN"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 1346
    if-eqz v24, :cond_3b

    .line 1349
    :cond_37
    invoke-static {}, Lcom/samsung/android/settings/WirelessSettings;->-get7()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3b

    .line 1351
    :cond_38
    :goto_12
    const-string/jumbo v24, "mirror_link_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    :cond_39
    throw v23

    .line 1340
    .restart local v19    # "tetheredDataBluetooth":I
    .restart local v20    # "tetheredDataHotspot":I
    :cond_3a
    const/16 v24, -0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_36

    goto :goto_11

    .line 1350
    .end local v19    # "tetheredDataBluetooth":I
    .end local v20    # "tetheredDataHotspot":I
    :cond_3b
    if-eqz v9, :cond_39

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_39

    goto :goto_12

    .line 1356
    .end local v11    # "isSupportMirrorLink":Z
    :cond_3c
    const-string/jumbo v23, "smart_bonding_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1393
    .restart local v3    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_3d
    const-string/jumbo v23, "key_vzw_emergency_alert"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 1398
    :cond_3e
    const-string/jumbo v23, "device_visibility_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 1223
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v6    # "feature":Ljava/lang/String;
    .end local v7    # "hasAdvVpn":Z
    .end local v9    # "isChameleonSpec2":Z
    .end local v15    # "rcsUtility":Lcom/samsung/android/settings/rcs/RcsUtils;
    .end local v17    # "sCode":Ljava/lang/String;
    .end local v18    # "sSalesCode":Ljava/lang/String;
    .end local v21    # "tetheredDataUsb":I
    :catch_1
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x7f0b0e1e

    const/4 v8, 0x3

    .line 1171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1174
    .local v1, "raw":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1176
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1177
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1178
    .restart local v1    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v4, "multi_path"

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1179
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1180
    invoke-static {p1, v5}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1181
    iput v8, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1182
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "eth_device_conn"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1185
    .local v0, "eth_connected_state":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 1186
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1187
    .restart local v1    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v4, "ethernet_settings"

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1188
    iput v8, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1189
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    :cond_1
    return-object v3
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
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
    .line 1161
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1162
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const-class v1, Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 1163
    const v1, 0x7f0800fd

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1164
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
