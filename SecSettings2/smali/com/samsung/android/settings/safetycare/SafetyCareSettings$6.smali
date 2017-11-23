.class final Lcom/samsung/android/settings/safetycare/SafetyCareSettings$6;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SafetyCareSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/safetycare/SafetyCareSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 16
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
    .line 1022
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_13

    const/4 v6, 0x1

    .line 1026
    .local v6, "isSecondaryUser":Z
    :goto_0
    const-string/jumbo v13, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1027
    :cond_0
    const-string/jumbo v13, "safetycare_help"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    :cond_1
    const-string/jumbo v13, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1030
    const-string/jumbo v13, "key_location"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_14

    .line 1034
    :cond_3
    :goto_1
    const-string/jumbo v13, "key_private_mode"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportPrivateBoxInSettings(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_15

    .line 1038
    const-string/jumbo v13, "key_private_box"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    .line 1044
    .local v11, "sales_code":Ljava/lang/String;
    const-string/jumbo v13, "VZW"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    const/4 v8, 0x1

    .line 1045
    .local v8, "isVZW":Z
    :goto_3
    const/4 v1, 0x0

    .line 1046
    .local v1, "c":Landroid/content/Context;
    const/4 v9, 0x0

    .line 1047
    .local v9, "resources":Landroid/content/res/Resources;
    const-string/jumbo v2, ""

    .line 1048
    .local v2, "collectionString":Ljava/lang/String;
    const-string/jumbo v12, "com.sec.android.app.setupwizard"

    .line 1049
    .local v12, "vzwPackageName":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 1051
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 1052
    .local v9, "resources":Landroid/content/res/Resources;
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 1053
    .local v1, "c":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string/jumbo v14, "diagnostic_terms_vzw"

    const-string/jumbo v15, "string"

    invoke-virtual {v9, v14, v15, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1060
    .end local v1    # "c":Landroid/content/Context;
    .end local v9    # "resources":Landroid/content/res/Resources;
    :cond_5
    :goto_4
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string/jumbo v14, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1061
    const-string/jumbo v13, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v13

    .line 1060
    if-eqz v13, :cond_7

    .line 1062
    :cond_6
    const-string/jumbo v13, "key_report_diagnostics_info"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_17

    if-nez v6, :cond_17

    const-string/jumbo v13, "com.sec.android.app.safetyassurance"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isEmergencyTableSupported(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 1070
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1071
    const-string/jumbo v13, "key_private_mode"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    :cond_8
    const-string/jumbo v13, "applock"

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 1076
    const-string/jumbo v13, "key_applock"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->showVzwEmergencyAlertOption(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1080
    const-string/jumbo v13, "key_vzw_emergency_alert"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_c

    .line 1084
    :cond_b
    const-string/jumbo v13, "find_my_mobile"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    :cond_c
    const/4 v7, 0x0

    .line 1088
    .local v7, "isSupportLMM":Z
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-nez v13, :cond_d

    .line 1089
    const/4 v7, 0x1

    .line 1092
    :cond_d
    const/4 v5, 0x0

    .line 1093
    .local v5, "hasFMMDMClient":Z
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v5

    .line 1095
    .local v5, "hasFMMDMClient":Z
    if-nez v7, :cond_e

    if-eqz v5, :cond_18

    .line 1099
    :cond_e
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1100
    :cond_f
    const-string/jumbo v13, "find_my_mobile"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    const-string/jumbo v13, "other_security_settings"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1105
    const-string/jumbo v13, "toggle_install_applications"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    const-string/jumbo v13, "find_my_mobile"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v13

    if-nez v13, :cond_12

    .line 1110
    const-string/jumbo v13, "toggle_install_applications"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    const-string/jumbo v13, "find_my_mobile"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    :cond_12
    return-object v10

    .line 1024
    .end local v2    # "collectionString":Ljava/lang/String;
    .end local v5    # "hasFMMDMClient":Z
    .end local v6    # "isSecondaryUser":Z
    .end local v7    # "isSupportLMM":Z
    .end local v8    # "isVZW":Z
    .end local v11    # "sales_code":Ljava/lang/String;
    .end local v12    # "vzwPackageName":Ljava/lang/String;
    :cond_13
    const/4 v6, 0x0

    .restart local v6    # "isSecondaryUser":Z
    goto/16 :goto_0

    .line 1033
    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto/16 :goto_1

    .line 1040
    :cond_15
    const-string/jumbo v13, "key_private_mode"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1044
    .restart local v11    # "sales_code":Ljava/lang/String;
    :cond_16
    const/4 v8, 0x0

    .restart local v8    # "isVZW":Z
    goto/16 :goto_3

    .line 1056
    .restart local v2    # "collectionString":Ljava/lang/String;
    .restart local v12    # "vzwPackageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1057
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v13, "key_report_diagnostics_info"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1054
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .line 1055
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v13, "key_report_diagnostics_info"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1066
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_17
    const-string/jumbo v13, "key_safety_assistance"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1096
    .restart local v5    # "hasFMMDMClient":Z
    .restart local v7    # "isSupportLMM":Z
    :cond_18
    const-string/jumbo v13, "find_my_mobile"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
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
    const v4, 0x7f0b0b21

    .line 993
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 995
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 996
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 997
    .local v0, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 998
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v3, "toggle_install_applications"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 999
    const v3, 0x7f0b15fb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1000
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1001
    const v3, 0x7f0b089c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1005
    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1006
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1009
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1010
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v3, "other_security_settings"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1011
    const v3, 0x7f0b08ba

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1012
    const v3, 0x7f0b08bb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1013
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1014
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_0
    return-object v2

    .line 1003
    :cond_1
    const v3, 0x7f0b039b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
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
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 934
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v5, Landroid/provider/SearchIndexableResource;

    invoke-direct {v5, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 938
    .local v5, "sir":Landroid/provider/SearchIndexableResource;
    const-class v6, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 939
    const v6, 0x7f0800ce

    iput v6, v5, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 940
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    invoke-static {}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-get0()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v2, 0x1

    .line 952
    .local v2, "mIsPrimary":Z
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 987
    :cond_1
    :goto_0
    return-object v4

    .line 952
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 953
    const/4 v3, 0x0

    .line 954
    .local v3, "resId":I
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 956
    const v3, 0x7f0800fc

    .line 962
    :goto_1
    new-instance v5, Landroid/provider/SearchIndexableResource;

    .end local v5    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v5, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 963
    .restart local v5    # "sir":Landroid/provider/SearchIndexableResource;
    const-class v6, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 964
    iput v3, v5, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 965
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    new-instance v0, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    .line 969
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 968
    invoke-direct {v0, v6}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 970
    .local v0, "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 971
    const-string/jumbo v6, "device_policy"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 972
    .local v1, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 973
    const v3, 0x7f08010e

    .line 977
    :goto_2
    new-instance v5, Landroid/provider/SearchIndexableResource;

    .end local v5    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v5, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 978
    .restart local v5    # "sir":Landroid/provider/SearchIndexableResource;
    const-class v6, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 979
    iput v3, v5, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 980
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    .end local v1    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    :cond_3
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 959
    .end local v0    # "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    :cond_4
    const v3, 0x7f080112

    goto :goto_1

    .line 975
    .restart local v0    # "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    .restart local v1    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    :cond_5
    const v3, 0x7f08010f

    goto :goto_2
.end method
