.class final Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$14;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1674
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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
    const/4 v0, 0x0

    .line 1793
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1797
    .local v0, "isKnoxUser":Z
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1798
    :cond_1
    const-string/jumbo v2, "font_preview_accessibility"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1801
    :cond_2
    const-string/jumbo v2, "com.samsung.android.app.talkback"

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1802
    const-string/jumbo v2, "talkback_tutorial_preference"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.overlaymagnifier"

    invoke-static {v2, v3}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1806
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1807
    :cond_4
    const-string/jumbo v2, "magnifier_preference_screen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap1(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1811
    const-string/jumbo v2, "toggle_speak_password_preference"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    const-string/jumbo v2, "rapid_key_input"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    const-string/jumbo v2, "lcd_curtain"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    const-string/jumbo v2, "toggle_screen_reader_preference"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    :cond_6
    const-string/jumbo v2, "toggle_inversion_preference"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    const-string/jumbo v2, "daltonizer_preference_screen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    const-string/jumbo v2, "com.samsung.android.app.screenreader"

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1830
    const-string/jumbo v2, "toggle_screen_reader_preference"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1833
    :cond_7
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1834
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.nfc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1838
    :goto_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1839
    const-string/jumbo v2, "enable_global_gesture_preference_screen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    const-string/jumbo v2, "voice_label"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1848
    :cond_8
    return-object v1

    .line 1835
    :cond_9
    const-string/jumbo v2, "voice_label"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 21
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
    .line 1677
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1681
    .local v8, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1683
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v18, "accessibility"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1682
    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 1685
    .local v3, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 1686
    const v20, 0x7f0b1570

    .line 1685
    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1687
    const-string/jumbo v19, " > "

    .line 1685
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1687
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 1688
    const v20, 0x7f0b029f

    .line 1687
    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1685
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1691
    .local v11, "screenTitle":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v17

    .line 1693
    .local v17, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v13

    .line 1694
    .local v13, "serviceCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v13, :cond_5

    .line 1695
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1696
    .local v12, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    if-nez v18, :cond_1

    .line 1694
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1700
    :cond_1
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    .line 1701
    .local v16, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1702
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1701
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 1705
    const-string/jumbo v19, "accessibility_enabled"

    const/16 v20, 0x0

    .line 1704
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 1705
    const/16 v19, 0x1

    .line 1704
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    .line 1706
    .local v2, "accessibilityEnabled":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    .line 1707
    .local v6, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_3

    .line 1708
    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 1710
    .local v14, "serviceEnabled":Z
    :goto_3
    if-eqz v14, :cond_4

    .line 1711
    const v18, 0x7f0b1952

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1716
    .local v15, "serviceEnabledString":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "com.samsung.android.app.talkback"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1717
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1718
    .local v5, "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1719
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1720
    iput-object v15, v5, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1721
    iput-object v11, v5, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1722
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1704
    .end local v2    # "accessibilityEnabled":Z
    .end local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v14    # "serviceEnabled":Z
    .end local v15    # "serviceEnabledString":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "accessibilityEnabled":Z
    goto :goto_2

    .line 1707
    .restart local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    .line 1713
    .restart local v14    # "serviceEnabled":Z
    :cond_4
    const v18, 0x7f0b1953

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "serviceEnabledString":Ljava/lang/String;
    goto :goto_4

    .line 1726
    .end local v2    # "accessibilityEnabled":Z
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v12    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v14    # "serviceEnabled":Z
    .end local v15    # "serviceEnabledString":Ljava/lang/String;
    .end local v16    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_5
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1727
    .restart local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v18, "enable_global_gesture_preference_screen"

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1728
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1729
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1731
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1732
    .restart local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v18, "screen_magnification_preference_screen"

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1733
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1734
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1736
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v18

    const-string/jumbo v19, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1737
    .local v10, "result":Ljava/lang/String;
    if-eqz v10, :cond_6

    const-string/jumbo v18, "TRUE"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1738
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1739
    .restart local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v18, "toggle_high_keyboard_contrast_preference"

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1740
    const v18, 0x7f0b0237

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1741
    const v18, 0x7f0b023a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1742
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1746
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 1747
    const-string/jumbo v19, "access_control_enabled"

    const/16 v20, 0x0

    .line 1746
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_7

    .line 1748
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1749
    .restart local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v18, "screen_magnification_preference_screen"

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1750
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1751
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1753
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1754
    .restart local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v18, "magnifier_preference_screen"

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1755
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1756
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1762
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1763
    .restart local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v18, "magnifier_preference_screen"

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1764
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1765
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1767
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1768
    .restart local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v18, "lcd_curtain"

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1769
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1770
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1772
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1773
    .restart local v5    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v18, "rapid_key_input"

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1774
    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 1775
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1778
    :cond_8
    return-object v8
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
    .line 1783
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1784
    .local v1, "indexables":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1785
    .local v0, "indexable":Landroid/provider/SearchIndexableResource;
    const-class v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 1786
    const v2, 0x7f08000b

    iput v2, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1787
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1788
    return-object v1
.end method
