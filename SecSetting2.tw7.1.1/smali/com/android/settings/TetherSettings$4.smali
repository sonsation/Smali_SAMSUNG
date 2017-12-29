.class final Lcom/android/settings/TetherSettings$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2275
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
    const/4 v13, -0x1

    .line 2287
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2290
    .local v4, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v11, "connectivity"

    .line 2289
    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2292
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-eqz v11, :cond_a

    const/4 v10, 0x1

    .line 2293
    .local v10, "wifiAvailable":Z
    :goto_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-eqz v11, :cond_b

    const/4 v9, 0x1

    .line 2294
    .local v9, "usbAvailable":Z
    :goto_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-eqz v11, :cond_c

    const/4 v0, 0x1

    .line 2299
    .local v0, "bluetoothAvailable":Z
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2300
    const-string/jumbo v11, "persist.sys.tether_data"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2302
    .local v5, "tetheredData":I
    const/4 v11, 0x3

    if-ge v5, v11, :cond_0

    .line 2303
    const/4 v9, 0x0

    .line 2304
    :cond_0
    const/4 v11, 0x2

    if-ge v5, v11, :cond_1

    .line 2305
    const/4 v0, 0x0

    .line 2308
    :cond_1
    const-string/jumbo v11, "persist.sys.tether_data_usb"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2309
    .local v8, "tetheredDataUsb":I
    const-string/jumbo v11, "persist.sys.tether_data_bt"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2310
    .local v6, "tetheredDataBluetooth":I
    const-string/jumbo v11, "persist.sys.tether_data_wifi"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2311
    .local v7, "tetheredDataHotspot":I
    if-ne v8, v13, :cond_2

    if-eq v6, v13, :cond_d

    .line 2313
    :cond_2
    :goto_3
    if-lez v8, :cond_e

    .line 2314
    const/4 v9, 0x1

    .line 2319
    :goto_4
    if-lez v6, :cond_f

    .line 2320
    const/4 v0, 0x1

    .line 2325
    :goto_5
    if-lez v7, :cond_10

    .line 2326
    const/4 v10, 0x1

    .line 2335
    .end local v5    # "tetheredData":I
    .end local v6    # "tetheredDataBluetooth":I
    .end local v7    # "tetheredDataHotspot":I
    .end local v8    # "tetheredDataUsb":I
    :cond_3
    :goto_6
    const/4 v3, 0x0

    .line 2336
    .local v3, "knoxCustomSettingsState":I
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v2

    .line 2337
    .local v2, "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    if-eqz v2, :cond_4

    .line 2338
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v3

    .line 2340
    :cond_4
    and-int/lit8 v11, v3, 0x1

    if-eqz v11, :cond_5

    .line 2341
    const/4 v10, 0x0

    .line 2343
    :cond_5
    and-int/lit8 v11, v3, 0x2

    if-eqz v11, :cond_6

    .line 2344
    const/4 v0, 0x0

    .line 2351
    :cond_6
    if-eqz v9, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2352
    :cond_7
    const-string/jumbo v11, "usb_tether_settings"

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2354
    :cond_8
    if-nez v0, :cond_9

    .line 2355
    const-string/jumbo v11, "enable_bluetooth_tethering"

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2357
    :cond_9
    const-string/jumbo v11, "disabled_on_data_saver"

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2359
    return-object v4

    .line 2292
    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    .end local v3    # "knoxCustomSettingsState":I
    .end local v9    # "usbAvailable":Z
    .end local v10    # "wifiAvailable":Z
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "wifiAvailable":Z
    goto/16 :goto_0

    .line 2293
    :cond_b
    const/4 v9, 0x0

    .restart local v9    # "usbAvailable":Z
    goto :goto_1

    .line 2294
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "bluetoothAvailable":Z
    goto :goto_2

    .line 2312
    .restart local v5    # "tetheredData":I
    .restart local v6    # "tetheredDataBluetooth":I
    .restart local v7    # "tetheredDataHotspot":I
    .restart local v8    # "tetheredDataUsb":I
    :cond_d
    if-eq v7, v13, :cond_3

    goto :goto_3

    .line 2316
    :cond_e
    const/4 v9, 0x0

    goto :goto_4

    .line 2322
    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 2328
    :cond_10
    const/4 v10, 0x0

    goto :goto_6
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
    .line 2278
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2279
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 2280
    const v1, 0x7f08013a

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2281
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
