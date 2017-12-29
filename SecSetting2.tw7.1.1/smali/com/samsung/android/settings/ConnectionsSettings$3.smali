.class final Lcom/samsung/android/settings/ConnectionsSettings$3;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ConnectionsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConnectionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 17
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
    .line 588
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 591
    .local v7, "myUserId":I
    if-eqz v7, :cond_18

    const/4 v4, 0x1

    .line 595
    .local v4, "isSecondaryUser":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isVzwVoLTEFeatureEnabled(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 596
    const-string/jumbo v14, "vzw_provision_volte"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_0
    if-nez v4, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 601
    :cond_1
    const-string/jumbo v14, "mobile_network_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 605
    const-string/jumbo v14, "mobile_network_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 621
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v14, "android.hardware.type.television"

    invoke-virtual {v8, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 622
    const-string/jumbo v14, "toggle_airplane"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v14

    if-eqz v14, :cond_5

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 627
    :cond_5
    const-string/jumbo v14, "simcard_management"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 632
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v14

    .line 631
    if-nez v14, :cond_8

    .line 632
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v14

    .line 631
    if-nez v14, :cond_8

    if-eqz v4, :cond_9

    .line 633
    :cond_8
    const-string/jumbo v14, "kt_roaming_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_a

    if-eqz v4, :cond_b

    .line 638
    :cond_a
    const-string/jumbo v14, "global_roaming_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_b
    if-nez v4, :cond_1a

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportDeviceVisibility(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 645
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 646
    const-string/jumbo v14, "device_visibility_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_c
    :goto_2
    const-string/jumbo v14, "android.hardware.nfc"

    .line 650
    invoke-virtual {v8, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1b

    .line 652
    const-string/jumbo v14, "nfc_osaifukeitai_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    const-string/jumbo v14, "nfc_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    :goto_3
    const/4 v5, 0x1

    .line 662
    .local v5, "isWifiCallingOn":Z
    sget-boolean v14, Lcom/android/settings/Utils;->SUPPORT_ATT_WFC:Z

    if-eqz v14, :cond_1d

    .line 663
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 664
    const/4 v5, 0x0

    .line 671
    :cond_d
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsSettings;->-wrap0()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 672
    const/4 v5, 0x0

    .line 675
    :cond_e
    if-nez v5, :cond_f

    .line 676
    const-string/jumbo v14, "wifi_calling_settings_open"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v14

    if-eqz v14, :cond_1e

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 685
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v14

    if-eqz v14, :cond_1f

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 689
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    .line 692
    .local v10, "sSalesCode":Ljava/lang/String;
    const-string/jumbo v14, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 693
    .local v3, "cm":Landroid/net/ConnectivityManager;
    const-string/jumbo v14, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 695
    .local v13, "um":Landroid/os/UserManager;
    const-string/jumbo v14, "persist.sys.tether_data"

    const/4 v15, -0x1

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 696
    .local v6, "mTetheredData":I
    const-string/jumbo v14, "ConnectionsSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mTetheredData: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    if-nez v4, :cond_12

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 699
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_10

    const-string/jumbo v14, "AIO"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 698
    if-nez v14, :cond_12

    .line 699
    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_11

    const-string/jumbo v14, "ATT"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 698
    if-nez v14, :cond_12

    .line 700
    :cond_11
    const-string/jumbo v14, "SBM"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 698
    if-eqz v14, :cond_20

    .line 701
    :cond_12
    const-string/jumbo v14, "tethering_and_hotspot"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_13
    :goto_7
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 708
    const-string/jumbo v14, "wifi_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_14
    const/4 v14, 0x2

    invoke-static {v14}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 711
    const-string/jumbo v14, "bluetooth_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_15
    const/4 v14, 0x4

    invoke-static {v14}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 714
    const-string/jumbo v14, "toggle_airplane"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_16
    const/16 v14, 0x400

    invoke-static {v14}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 717
    const-string/jumbo v14, "location_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 722
    const-string/jumbo v14, "tethering_and_hotspot"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    const-string/jumbo v14, "vzw_provision_volte"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    const-string/jumbo v14, "wireless_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    :goto_8
    return-object v9

    .line 591
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "isSecondaryUser":Z
    .end local v5    # "isWifiCallingOn":Z
    .end local v6    # "mTetheredData":I
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "sSalesCode":Ljava/lang/String;
    .end local v13    # "um":Landroid/os/UserManager;
    :cond_18
    const/4 v4, 0x0

    .restart local v4    # "isSecondaryUser":Z
    goto/16 :goto_0

    .line 606
    :cond_19
    const-string/jumbo v14, "CDMA"

    invoke-static {v14}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 607
    const-string/jumbo v14, "gsm.sim.currentcardstatus"

    const-string/jumbo v15, "9"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0, v15}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "cardStatus1":Ljava/lang/String;
    const-string/jumbo v14, "gsm.sim.currentcardstatus"

    const-string/jumbo v15, "9"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v0, v15}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "cardStatus2":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 610
    .local v11, "simState1":I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 613
    .local v12, "simState2":I
    const/4 v14, 0x3

    if-eq v11, v14, :cond_3

    const/4 v14, 0x3

    if-eq v12, v14, :cond_3

    .line 614
    const-string/jumbo v14, "mobile_network_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 643
    .end local v1    # "cardStatus1":Ljava/lang/String;
    .end local v2    # "cardStatus2":Ljava/lang/String;
    .end local v11    # "simState1":I
    .end local v12    # "simState2":I
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_1a
    const-string/jumbo v14, "device_visibility_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 655
    :cond_1b
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsSettings;->-get0()Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 656
    const-string/jumbo v14, "nfc_osaifukeitai_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 658
    :cond_1c
    const-string/jumbo v14, "nfc_settings"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 667
    .restart local v5    # "isWifiCallingOn":Z
    :cond_1d
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportWifiCalling(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 668
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 681
    :cond_1e
    const-string/jumbo v14, "avea_mptcp"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 686
    :cond_1f
    const-string/jumbo v14, "ais_mptcp"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 702
    .restart local v3    # "cm":Landroid/net/ConnectivityManager;
    .restart local v6    # "mTetheredData":I
    .restart local v10    # "sSalesCode":Ljava/lang/String;
    .restart local v13    # "um":Landroid/os/UserManager;
    :cond_20
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 703
    const-string/jumbo v14, "tethering_and_hotspot"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 726
    :cond_21
    const-string/jumbo v14, "wireless_settings_for_vzw"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
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
    const v5, 0x7f0b13ee

    const v4, 0x7f0b00fa

    .line 560
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 562
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 563
    .local v0, "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 564
    const-string/jumbo v3, "tethering_and_hotspot"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 565
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 566
    invoke-static {p1, v4}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 567
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 571
    const-string/jumbo v3, "toggle_airplane"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 572
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 573
    invoke-static {p1, v5}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 574
    const v3, 0x7f0b040e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 575
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_1
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 579
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v3, "wifi_calling_settings_open"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 580
    const/4 v3, 0x3

    iput v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 581
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    return-object v2
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
    .line 551
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 552
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const-class v1, Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 553
    const v1, 0x7f080046

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 554
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
