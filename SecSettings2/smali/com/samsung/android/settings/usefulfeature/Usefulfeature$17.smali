.class final Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2445
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 12
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
    const/4 v8, 0x0

    .line 2484
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2487
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v9

    .line 2486
    if-eqz v9, :cond_0

    .line 2488
    const-string/jumbo v9, "smartscreen_stay"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2491
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2492
    const-string/jumbo v9, "direct_share"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2495
    :cond_1
    const-string/jumbo v9, "com.samsung.android.game.gametools"

    invoke-static {p1, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2496
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v9

    .line 2495
    if-eqz v9, :cond_3

    .line 2497
    :cond_2
    const-string/jumbo v9, "game_home"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2500
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    .line 2501
    const-string/jumbo v10, "CscFeature_Common_EnableAirMessage"

    .line 2500
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2504
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2506
    const-string/jumbo v9, "com.samsung.android.myeventcenter"

    invoke-static {p1, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2507
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v9

    .line 2504
    if-eqz v9, :cond_6

    .line 2508
    :cond_5
    const-string/jumbo v9, "key_festival_effect"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-nez v9, :cond_7

    .line 2511
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_8

    .line 2512
    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    .line 2515
    const-string/jumbo v10, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    .line 2512
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2516
    const-string/jumbo v10, "SMARTMANAGER"

    .line 2512
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 2510
    if-eqz v9, :cond_9

    .line 2517
    :cond_8
    const-string/jumbo v9, "identify_unsaved_numbers"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2519
    :cond_9
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_b

    .line 2520
    :cond_a
    const-string/jumbo v9, "identify_unsaved_numbers"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2522
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2523
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    .line 2526
    const-string/jumbo v10, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    .line 2523
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2527
    const-string/jumbo v10, "SMARTMANAGER"

    .line 2523
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2528
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_d

    .line 2529
    :cond_c
    const-string/jumbo v9, "call_message_spam_filter"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2531
    :cond_d
    const-string/jumbo v9, "com.samsung.android.app.scrollcapture"

    invoke-static {p1, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 2532
    const-string/jumbo v9, "smart_capture"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2534
    :cond_e
    const-string/jumbo v9, "com.sec.app.screenrecorder"

    invoke-static {p1, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2535
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2538
    :goto_1
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    array-length v10, v9

    :goto_2
    if-ge v8, v10, :cond_12

    aget-object v6, v9, v8

    .line 2539
    .local v6, "motionFeature":Ljava/lang/String;
    invoke-static {p1, v6}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 2540
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2538
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2502
    .end local v6    # "motionFeature":Ljava/lang/String;
    :cond_10
    const-string/jumbo v9, "display_airmessage"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2536
    :cond_11
    const-string/jumbo v9, "screen_recorder"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2543
    :cond_12
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    .line 2544
    const-string/jumbo v9, "CscFeature_Setting_ConfigMotionType"

    .line 2543
    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2545
    .local v0, "Motion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 2546
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2547
    .local v1, "NotSupportMotion":[Ljava/lang/String;
    array-length v5, v1

    .line 2548
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v5, :cond_13

    .line 2549
    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2548
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2556
    .end local v1    # "NotSupportMotion":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "length":I
    :cond_13
    const/4 v4, 0x0

    .line 2557
    .local v4, "knoxCustomSettingsState":I
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v3

    .line 2558
    .local v3, "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    if-eqz v3, :cond_14

    .line 2559
    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v4

    .line 2561
    :cond_14
    and-int/lit8 v8, v4, 0x8

    if-eqz v8, :cond_15

    .line 2562
    const-string/jumbo v8, "multi_window_setting"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2565
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-nez v8, :cond_16

    .line 2566
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 2565
    if-eqz v8, :cond_17

    .line 2567
    :cond_16
    const-string/jumbo v8, "onehand_operation_settings"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2569
    :cond_17
    const-string/jumbo v8, "com.samsung.android.app.galaxylabs"

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2570
    :cond_18
    const-string/jumbo v8, "galaxy_labs"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2573
    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "double_tab_launch_component"

    .line 2572
    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-set0(Ljava/lang/String;)Ljava/lang/String;

    .line 2574
    const-string/jumbo v8, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 2575
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get0()Ljava/lang/String;

    move-result-object v9

    .line 2574
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 2576
    const-string/jumbo v8, "quick_camera_launch"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2578
    :cond_1a
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get12()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2579
    const-string/jumbo v8, "accelerate_hongbao_receiving"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2581
    :cond_1b
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get11()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 2582
    const-string/jumbo v8, "hongbao_assistant"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2584
    :cond_1c
    invoke-static {p1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v8

    if-eqz v8, :cond_24

    .line 2587
    :cond_1d
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v8

    if-nez v8, :cond_1e

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 2588
    :cond_1e
    const-string/jumbo v8, "galaxy_labs"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2597
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v8

    if-eqz v8, :cond_26

    .line 2598
    const-string/jumbo v8, "key_safety_assistance"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    :goto_6
    invoke-static {p1}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 2604
    const-string/jumbo v8, "key_safety_assistance"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2608
    :cond_1f
    const-string/jumbo v8, "hdr_settings"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2610
    invoke-static {p1}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_20

    .line 2611
    const-string/jumbo v8, "dock_settings"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2613
    :cond_20
    const-string/jumbo v8, "applock"

    invoke-static {v8}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 2616
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v8

    if-nez v8, :cond_21

    .line 2617
    const-string/jumbo v8, "active_key_settings"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2619
    :cond_21
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 2622
    :goto_8
    const-string/jumbo v8, "com.samsung.android.quickassist"

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_22

    .line 2623
    const-string/jumbo v8, "quick_dial"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    :cond_22
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_23

    .line 2626
    :cond_23
    const-string/jumbo v8, "swipe_to_call_or_send_messages"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2628
    return-object v7

    .line 2585
    :cond_24
    const-string/jumbo v8, "pen_settings_title"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2590
    :cond_25
    const-string/jumbo v8, "pen_settings_title"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2591
    const-string/jumbo v8, "dock_settings"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2592
    const-string/jumbo v8, "smartscreen_stay"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2593
    const-string/jumbo v8, "key_panic_mode"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2594
    const-string/jumbo v8, "key_safety_assistance"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2600
    :cond_26
    const-string/jumbo v8, "key_panic_mode"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2614
    :cond_27
    const-string/jumbo v8, "key_applock"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2620
    :cond_28
    const-string/jumbo v8, "increse_touch_sensetivity"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
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
    .line 2464
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2466
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2468
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2469
    .local v0, "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2470
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2471
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v3, "active_key_settings"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2472
    const-class v3, Lcom/samsung/android/settings/activekey/ActiveKeySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 2473
    const v3, 0x7f0b0348

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2474
    const v3, 0x7f0b03fd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2475
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2476
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2479
    :cond_0
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
    .line 2449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2451
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2453
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const-class v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 2454
    const v2, 0x7f080137

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2456
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2458
    return-object v0
.end method
