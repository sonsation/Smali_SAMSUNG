.class final Lcom/android/settings/DevelopmentSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2697
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private isShowingDeveloperOptions(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2700
    const-string/jumbo v0, "development"

    .line 2701
    const/4 v1, 0x0

    .line 2700
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2702
    const-string/jumbo v1, "show"

    .line 2703
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2700
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2721
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings$2;->isShowingDeveloperOptions(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2722
    const/4 v5, 0x0

    return-object v5

    .line 2725
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2728
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/settings/DevelopmentSettings;->-wrap1(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2730
    const-string/jumbo v5, "oem_unlock_enable"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2733
    :cond_1
    const-string/jumbo v5, "ro.adb.secure"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2734
    const-string/jumbo v5, "debug_debugging_category"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2736
    :cond_2
    const-string/jumbo v5, "com.android.terminal"

    invoke-static {p1, v5}, Lcom/android/settings/DevelopmentSettings;->-wrap0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2737
    const-string/jumbo v5, "enable_terminal"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2739
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2740
    const-string/jumbo v6, "verifier_setting_visible"

    .line 2739
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-gtz v5, :cond_4

    .line 2741
    const-string/jumbo v5, "verify_apps_over_usb"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2743
    :cond_4
    const-string/jumbo v5, "user"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2744
    const-string/jumbo v5, "hdcp_checking"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2747
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2748
    const-string/jumbo v5, "auto_adjust_screen_tone"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2751
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2752
    .local v4, "resources":Landroid/content/res/Resources;
    const v5, 0x7f0c0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2753
    .local v0, "colorModes":[I
    const/4 v3, 0x0

    .line 2754
    .local v3, "mColorModeSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_8

    .line 2755
    aget v5, v0, v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    if-eq v1, v7, :cond_7

    .line 2756
    add-int/lit8 v3, v3, 0x1

    .line 2754
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2759
    :cond_8
    const/4 v5, 0x2

    if-ge v3, v5, :cond_9

    .line 2760
    const-string/jumbo v5, "color_mode"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2764
    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2765
    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v6, "eng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2770
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2771
    const-string/jumbo v5, "color_temperature"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2774
    :cond_a
    const-string/jumbo v5, "settings_db_callstack"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2776
    return-object v2

    .line 2766
    :cond_b
    const-string/jumbo v5, "mobile_keyboard"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
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
    .line 2710
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings$2;->isShowingDeveloperOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2711
    const/4 v1, 0x0

    return-object v1

    .line 2714
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2715
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f080056

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2716
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
