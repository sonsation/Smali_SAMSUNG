.class final Lcom/samsung/android/settings/display/SecDisplaySettings$17;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2615
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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
    .line 2711
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2712
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2713
    const v4, 0x112006e

    .line 2712
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2714
    const-string/jumbo v3, "screensaver"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2719
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap3(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2720
    const-string/jumbo v3, "lift_to_wake"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2723
    :cond_1
    const-string/jumbo v3, "doze"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2727
    const-string/jumbo v3, "wifi_display"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2730
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2733
    :cond_2
    const-string/jumbo v3, "touch_key_light"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2736
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2737
    const-string/jumbo v3, "auto_rotate"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2740
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-nez v3, :cond_17

    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2745
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 2752
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_4

    .line 2753
    const-string/jumbo v3, "screen_mode"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2756
    :cond_4
    sget-boolean v3, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    if-nez v3, :cond_19

    sget-boolean v3, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_19

    .line 2757
    const-string/jumbo v3, "sub_lcd_auto_lock"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    const-string/jumbo v3, "key_night_mode"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2767
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap4(Landroid/content/res/Resources;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2768
    const-string/jumbo v3, "tap_to_wake"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2770
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap2(Landroid/content/res/Resources;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2771
    const-string/jumbo v3, "camera_gesture"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2773
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap1(Landroid/content/res/Resources;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2774
    const-string/jumbo v3, "camera_double_tap_power_gesture"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2777
    :cond_8
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2781
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2782
    const-string/jumbo v3, "font_preview"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2783
    const-string/jumbo v3, "screen_timeout"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2784
    const-string/jumbo v3, "smartscreen_stay"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    const-string/jumbo v3, "screen_mode"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2788
    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_a

    .line 2789
    const-string/jumbo v3, "font_preview"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2793
    :cond_a
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2794
    const-string/jumbo v3, "screensaver"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2798
    :cond_b
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2802
    .local v2, "str":Ljava/lang/String;
    const-string/jumbo v3, "edge_lighting"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2804
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 2805
    const-string/jumbo v3, "key_simple_led_indicator_settings"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2812
    :cond_c
    const-string/jumbo v3, "display_scaling"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2822
    const-string/jumbo v3, "com.samsung.android.app.aodservice"

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2823
    :cond_d
    const-string/jumbo v3, "always_on_screen"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2826
    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    .line 2827
    const-string/jumbo v4, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    .line 2826
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2827
    const-string/jumbo v4, "nightclock"

    .line 2826
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2828
    .local v0, "isSupportNightClock":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v0, :cond_1b

    .line 2836
    :cond_f
    :goto_4
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2837
    const-string/jumbo v3, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2838
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_11

    .line 2839
    :cond_10
    const-string/jumbo v3, "edge_screen"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2842
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2844
    const-string/jumbo v3, "status_bar"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2847
    :cond_12
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 2848
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 2850
    :cond_13
    const-string/jumbo v3, "easy_mode"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2852
    :goto_5
    const-string/jumbo v3, "WQHD,FHD,HD"

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2853
    const-string/jumbo v3, "screen_resolution"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2856
    :cond_14
    const-string/jumbo v3, "screen_zoom"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2857
    const-string/jumbo v3, "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2858
    const-string/jumbo v3, "navigation_Bar"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2869
    :cond_15
    const-string/jumbo v3, "screen_timeout_for_dex"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2872
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 2873
    const-string/jumbo v3, "auto_brightness"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2876
    :cond_16
    return-object v1

    .line 2741
    .end local v0    # "isSupportNightClock":Z
    .end local v2    # "str":Ljava/lang/String;
    :cond_17
    const-string/jumbo v3, "auto_rotate"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2742
    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2746
    :cond_18
    const-string/jumbo v3, "smartscreen_stay"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2760
    :cond_19
    sget-boolean v3, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    if-nez v3, :cond_5

    .line 2761
    const-string/jumbo v3, "sub_lcd_auto_lock"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    const-string/jumbo v3, "key_backlight"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2763
    const-string/jumbo v3, "key_night_mode"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2778
    :cond_1a
    const-string/jumbo v3, "outdoor_mode"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2829
    .restart local v0    # "isSupportNightClock":Z
    .restart local v2    # "str":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v3, "night_clock"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2849
    :cond_1c
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto/16 :goto_5
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
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
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 2637
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2638
    .local v3, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-static {p1}, Lcom/android/settings/Utils;->isGameModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2639
    :cond_0
    const/4 v2, 0x0

    .line 2640
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2641
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v4, "easy_mode"

    iput-object v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2642
    iput v6, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2643
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2646
    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "current_sec_active_themepackage"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2647
    .local v1, "currentTheme":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "current_sec_appicon_theme_package"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2648
    .local v0, "currentIcon":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2657
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 2658
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2659
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v4, "screen_mode"

    iput-object v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2660
    invoke-static {p1}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/search/SecIndex;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2661
    :cond_4
    iput v6, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2665
    :goto_1
    const-string/jumbo v4, "com.android.settings"

    iput-object v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 2666
    const-string/jumbo v4, "com.samsung.android.settings.NewModePreview"

    iput-object v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 2667
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2671
    const/4 v2, 0x0

    .line 2672
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2673
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v4, "icon_backgrounds"

    iput-object v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2674
    iput v6, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2675
    const-string/jumbo v4, "com.android.settings"

    iput-object v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 2676
    const-string/jumbo v4, "com.samsung.android.settings.display.IconBackgrounds"

    iput-object v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 2677
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2681
    const/4 v2, 0x0

    .line 2682
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2683
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v4, "full_screen_apps"

    iput-object v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2684
    iput v6, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2685
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2688
    const-string/jumbo v4, "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_9

    .line 2690
    :goto_2
    const/4 v2, 0x0

    .line 2691
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2692
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v4, "navigation_Bar"

    iput-object v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2693
    iput v6, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2694
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2697
    :cond_5
    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2698
    const/4 v2, 0x0

    .line 2699
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2700
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v4, "auto_brightness"

    iput-object v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2701
    iput v6, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2702
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2706
    :cond_6
    return-object v3

    .line 2649
    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_7
    const/4 v2, 0x0

    .line 2650
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2651
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v4, "icon_backgrounds"

    iput-object v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2652
    iput v6, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2653
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2663
    :cond_8
    const/4 v4, 0x2

    iput v4, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    goto/16 :goto_1

    .line 2689
    :cond_9
    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    .line 2688
    if-eqz v4, :cond_5

    goto :goto_2
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
    .line 2620
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2622
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2623
    .local v4, "sir":Landroid/provider/SearchIndexableResource;
    const-class v5, Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 2624
    const v5, 0x7f0800e7

    iput v5, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2625
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2627
    const-class v5, Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2628
    .local v2, "parent":Ljava/lang/String;
    const-string/jumbo v0, "com.samsung.android.settings.NewModePreview"

    .line 2629
    .local v0, "child":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b06ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2632
    .local v1, "childTitle":Ljava/lang/String;
    return-object v3
.end method
