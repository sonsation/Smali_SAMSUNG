.class final Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$8;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "AccessibilitySettingsMobility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1098
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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
    .line 1195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1197
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "com.samsung.android.app.assistantmenu"

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1198
    :cond_0
    const-string/jumbo v3, "assistant_menu_preference"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    :cond_1
    const/4 v0, 0x0

    .line 1203
    .local v0, "mSContextManager":Landroid/hardware/scontext/SContextManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "scontext"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mSContextManager":Landroid/hardware/scontext/SContextManager;
    check-cast v0, Landroid/hardware/scontext/SContextManager;

    .line 1206
    .local v0, "mSContextManager":Landroid/hardware/scontext/SContextManager;
    const-string/jumbo v3, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1207
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1208
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    .line 1206
    if-nez v3, :cond_3

    .line 1209
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    .line 1206
    if-eqz v3, :cond_4

    .line 1210
    :cond_3
    const-string/jumbo v3, "air_wake_up"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    :cond_4
    const-string/jumbo v3, "com.samsung.android.app.accesscontrol"

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1225
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 1224
    if-eqz v3, :cond_6

    .line 1226
    :cond_5
    const-string/jumbo v3, "access_control_key"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_7

    .line 1229
    const-string/jumbo v3, "select_long_press_timeout_preference"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    :cond_7
    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1232
    const-string/jumbo v3, "select_long_press_timeout_preference"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    const-string/jumbo v3, "access_control_key"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    :cond_8
    return-object v2
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 17
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
    .line 1101
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    .local v6, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1105
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v14, "accessibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1104
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 1107
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1108
    const v16, 0x7f0b191e

    .line 1107
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1109
    const-string/jumbo v15, " > "

    .line 1107
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1109
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1110
    const v16, 0x7f0b0284

    .line 1109
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1107
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1113
    .local v9, "screenTitle":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    .line 1115
    .local v13, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    .line 1116
    .local v11, "serviceCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_2

    .line 1117
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1118
    .local v10, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    if-nez v14, :cond_1

    .line 1116
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1122
    :cond_1
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    iget-object v12, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1123
    .local v12, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1124
    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 1123
    invoke-direct {v2, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    if-nez v14, :cond_5

    const/4 v7, 0x1

    .line 1126
    .local v7, "mIsPrimary":Z
    :goto_1
    if-eqz v7, :cond_0

    .line 1127
    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v15, "com.samsung.android.universalswitch"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1128
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1129
    .local v5, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1130
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1131
    const v14, 0x7f0b1d08

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1132
    const v14, 0x7f0b1d09

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1133
    iput-object v9, v5, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1134
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v7    # "mIsPrimary":Z
    .end local v10    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1141
    .local v3, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1142
    .restart local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v14, "access_control_key"

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1143
    const/4 v14, 0x3

    iput v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1144
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 1145
    const v15, 0x7f0b035a

    .line 1144
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1146
    const v14, 0x7f0b035a

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1147
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1151
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 1152
    const v15, 0x7f0b035b

    .line 1151
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1154
    :goto_2
    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1155
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1158
    .restart local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v14, "select_long_press_timeout_preference"

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1159
    const-string/jumbo v14, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1160
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b1939

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1164
    :goto_3
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1167
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1168
    .restart local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02b2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02b2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1170
    const-string/jumbo v14, "assistant_menu_preference"

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1171
    const/4 v14, 0x3

    iput v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1172
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    :cond_4
    :goto_4
    return-object v6

    .line 1125
    .end local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v10    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1148
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 1149
    const v15, 0x7f0b035c

    .line 1148
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_2

    .line 1162
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b1938

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    goto :goto_3

    .line 1173
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1174
    :cond_9
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1175
    .restart local v3    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v14, "assistant_menu_preference"

    iput-object v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1176
    const/4 v14, 0x3

    iput v14, v3, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1177
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
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
    .line 1185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    .local v1, "indexables":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1187
    .local v0, "indexable":Landroid/provider/SearchIndexableResource;
    const-class v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 1188
    const v2, 0x7f08000a

    iput v2, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1189
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    return-object v1
.end method
