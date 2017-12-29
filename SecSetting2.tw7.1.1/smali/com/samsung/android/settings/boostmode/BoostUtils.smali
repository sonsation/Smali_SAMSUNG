.class public final Lcom/samsung/android/settings/boostmode/BoostUtils;
.super Ljava/lang/Object;
.source "BoostUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissPerformanceBoostNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    const-string/jumbo v1, "BoostUtils"

    const-string/jumbo v2, "dismissing performance boost notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 364
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v1, "performance_booster"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f110049

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 361
    return-void
.end method

.method public static getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 83
    const/4 v5, -0x1

    .line 84
    .local v5, "value":I
    if-nez p2, :cond_d

    .line 85
    const-string/jumbo v9, "pbm_maximum_brightness"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 86
    const/16 v5, 0x5a

    .line 160
    :cond_0
    :goto_0
    const-string/jumbo v9, "BoostUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getBoostModeValue() mode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v5

    .line 87
    :cond_1
    const-string/jumbo v9, "pbm_screen_resolution"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 88
    const/4 v5, 0x1

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "default_display_size_forced"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "sizeStr":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string/jumbo v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 106
    :cond_2
    :try_start_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 107
    .local v1, "point":Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v8

    .line 108
    .local v8, "windowManager":Landroid/view/IWindowManager;
    const/4 v9, 0x0

    invoke-interface {v8, v9, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 109
    iget v9, v1, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0x5a0

    if-lt v9, v10, :cond_7

    .line 110
    const/4 v5, 0x2

    goto :goto_0

    .line 92
    .end local v1    # "point":Landroid/graphics/Point;
    .end local v8    # "windowManager":Landroid/view/IWindowManager;
    :cond_3
    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "sizeArray":[Ljava/lang/String;
    if-eqz v3, :cond_4

    array-length v9, v3

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 95
    .local v7, "width":I
    :goto_1
    const-string/jumbo v9, "BoostUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCurrentResolution: width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/16 v9, 0x5a0

    if-lt v7, v9, :cond_5

    .line 98
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 94
    .end local v7    # "width":I
    :cond_4
    const/16 v7, 0x438

    .restart local v7    # "width":I
    goto :goto_1

    .line 99
    :cond_5
    const/16 v9, 0x2d0

    if-le v7, v9, :cond_6

    const/16 v9, 0x438

    if-gt v7, v9, :cond_6

    .line 100
    const/4 v5, 0x1

    .line 99
    goto/16 :goto_0

    .line 102
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 111
    .end local v3    # "sizeArray":[Ljava/lang/String;
    .end local v7    # "width":I
    .restart local v1    # "point":Landroid/graphics/Point;
    .restart local v8    # "windowManager":Landroid/view/IWindowManager;
    :cond_7
    :try_start_1
    iget v9, v1, Landroid/graphics/Point;->x:I

    const/16 v10, 0x2d0

    if-le v9, v10, :cond_8

    iget v9, v1, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v10, 0x438

    if-gt v9, v10, :cond_8

    .line 112
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 114
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 116
    .end local v1    # "point":Landroid/graphics/Point;
    .end local v8    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "BoostUtils"

    const-string/jumbo v10, "getInitialDisplaySize() has been occured RemoteException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "sizeStr":Ljava/lang/String;
    :cond_9
    const-string/jumbo v9, "pbm_video_enhancer"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "hdr_effect"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_0

    .line 122
    :cond_a
    const-string/jumbo v9, "pbm_uhq_upscaler"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "k2hd_effect"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_0

    .line 124
    :cond_b
    const-string/jumbo v9, "pbm_game_launcher"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "game_home_enable"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_0

    .line 126
    :cond_c
    const-string/jumbo v9, "pbm_game_tools"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pref_setting_display_play_tools"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_0

    .line 130
    :cond_d
    const-string/jumbo v9, "pbm_maximum_brightness"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string/jumbo v9, "pbm_screen_resolution"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 131
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "rawData":Ljava/lang/String;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 133
    :cond_f
    const/4 v5, -0x1

    .line 138
    :goto_2
    const/4 v9, -0x1

    if-ne v5, v9, :cond_0

    .line 139
    const-string/jumbo v9, "pbm_maximum_brightness"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 140
    const-string/jumbo v9, "pbm_maximum_brightness"

    const/4 v10, 0x1

    const/16 v11, 0x64

    invoke-static {p0, v9, v10, v11}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 141
    const-string/jumbo v9, "pbm_maximum_brightness"

    const/4 v10, 0x2

    const/16 v11, 0x64

    invoke-static {p0, v9, v10, v11}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 142
    const-string/jumbo v9, "pbm_maximum_brightness"

    const/4 v10, 0x3

    const/16 v11, 0x64

    invoke-static {p0, v9, v10, v11}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 143
    const/16 v5, 0x64

    goto/16 :goto_0

    .line 135
    :cond_10
    const-string/jumbo v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "valueArray":[Ljava/lang/String;
    add-int/lit8 v9, p2, -0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    .line 145
    .end local v6    # "valueArray":[Ljava/lang/String;
    :cond_11
    const-string/jumbo v9, "pbm_screen_resolution"

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {p0, v9, v10, v11}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 146
    const-string/jumbo v9, "pbm_screen_resolution"

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-static {p0, v9, v10, v11}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 147
    const-string/jumbo v9, "pbm_screen_resolution"

    const/4 v10, 0x3

    const/4 v11, 0x2

    invoke-static {p0, v9, v10, v11}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 148
    const/4 v9, 0x1

    if-ne p2, v9, :cond_12

    .line 149
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 151
    :cond_12
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 155
    .end local v2    # "rawData":Ljava/lang/String;
    :cond_13
    const-string/jumbo v9, "pbm_video_enhancer"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string/jumbo v9, "pbm_uhq_upscaler"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 156
    const-string/jumbo v9, "pbm_game_launcher"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 155
    if-nez v9, :cond_14

    .line 156
    const-string/jumbo v9, "pbm_game_tools"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 155
    if-eqz v9, :cond_0

    .line 157
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v9, p1, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_0
.end method

.method public static getFloatFromDimension(Landroid/content/Context;I)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 466
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 467
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 468
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method public static getGameEulaIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 484
    const-string/jumbo v0, "com.samsung.android.game.gamehome.action.GameHomeStart"

    .line 485
    .local v0, "GAME_HOME_EULA_ACTION":Ljava/lang/String;
    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    .line 487
    .local v1, "GAME_HOME_PACKAGE":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.game.gamehome.action.GameHomeStart"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v2, "gameEulaIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.game.gamehome"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string/jumbo v3, "DISABLE_IF_CANCEL"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    const-string/jumbo v3, "ALREADY_APPLIED"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    return-object v2
.end method

.method public static getLastPerfmodebrightness(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 653
    const-string/jumbo v1, "last_perf_brightness_value"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 654
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "last_perf_brightness_value"

    const/16 v2, 0x5a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getModeImageFgId(I)I
    .locals 2
    .param p0, "mode"    # I

    .prologue
    const v0, 0x7f09000e

    .line 368
    packed-switch p0, :pswitch_data_0

    .line 378
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not defined"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :pswitch_0
    return v0

    .line 372
    :pswitch_1
    const v0, 0x7f09000c

    return v0

    .line 374
    :pswitch_2
    const v0, 0x7f09000d

    return v0

    .line 376
    :pswitch_3
    return v0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 473
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 474
    const v1, 0x7f0b0cc3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "modeName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 475
    .end local v0    # "modeName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 476
    const v1, 0x7f0b0cc1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "modeName":Ljava/lang/String;
    goto :goto_0

    .line 478
    .end local v0    # "modeName":Ljava/lang/String;
    :cond_1
    const v1, 0x7f0b0cbf

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "modeName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getPerformanceBoosterMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sem_perfomance_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isButtonBackground(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 462
    const-string/jumbo v3, "show_button_background"

    .line 461
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isCustomModeChangedValue(Landroid/content/Context;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 437
    const/16 v7, 0x5a

    filled-new-array {v7, v11, v11, v11}, [I

    move-result-object v2

    .line 438
    .local v2, "PRESET_MAX_BRIGHT_VALUE":[I
    filled-new-array {v9, v9, v10, v10}, [I

    move-result-object v3

    .line 439
    .local v3, "PRESET_SCREEN_RESOLUTION_VALUE":[I
    filled-new-array {v8, v8, v9, v8}, [I

    move-result-object v5

    .line 440
    .local v5, "PRESET_VIDEO_ENHANCER_VALUE":[I
    filled-new-array {v8, v8, v9, v8}, [I

    move-result-object v4

    .line 441
    .local v4, "PRESET_UHQ_UPSCALER_VALUE":[I
    filled-new-array {v8, v9, v8, v8}, [I

    move-result-object v0

    .line 442
    .local v0, "PRESET_GAME_LAUNCHER_VALUE":[I
    filled-new-array {v8, v9, v8, v8}, [I

    move-result-object v1

    .line 443
    .local v1, "PRESET_GAME_TOOLS_VALUE":[I
    const/4 v6, 0x0

    .line 446
    .local v6, "result":Z
    const-string/jumbo v7, "pbm_maximum_brightness"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    aget v8, v2, p1

    if-ne v7, v8, :cond_0

    .line 447
    const-string/jumbo v7, "WQHD,FHD,HD"

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 448
    const-string/jumbo v7, "pbm_screen_resolution"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    aget v8, v3, p1

    if-eq v7, v8, :cond_2

    .line 456
    :cond_0
    :goto_0
    const/4 v6, 0x1

    .line 457
    :cond_1
    return v6

    .line 449
    :cond_2
    if-ne p1, v10, :cond_3

    .line 450
    const-string/jumbo v7, "pbm_video_enhancer"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    aget v8, v5, p1

    if-ne v7, v8, :cond_0

    .line 451
    const-string/jumbo v7, "pbm_uhq_upscaler"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    aget v8, v4, p1

    if-ne v7, v8, :cond_0

    .line 452
    :cond_3
    if-ne p1, v9, :cond_1

    .line 453
    const-string/jumbo v7, "pbm_game_launcher"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    aget v8, v0, p1

    if-ne v7, v8, :cond_0

    .line 454
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isNavigationBarExist(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 455
    const-string/jumbo v7, "pbm_game_tools"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    aget v8, v1, p1

    if-eq v7, v8, :cond_1

    goto :goto_0
.end method

.method public static isGameLauncherEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 495
    const/4 v2, -0x1

    .line 497
    .local v2, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "game_home_enable"

    .line 496
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 498
    .local v0, "isGameLauncherSettingEnabled":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 499
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "com.samsung.android.game.gamehome"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 501
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 502
    return v5

    .line 496
    .end local v0    # "isGameLauncherSettingEnabled":Z
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isGameLauncherSettingEnabled":Z
    goto :goto_0

    .line 505
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 506
    return v0

    .line 509
    :cond_2
    if-nez v2, :cond_3

    .line 510
    return v0

    .line 513
    :cond_3
    return v5
.end method

.method public static isNavigationBarExist(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 661
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v3, "config_showNavigationBar"

    const-string/jumbo v4, "bool"

    const-string/jumbo v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 662
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    :cond_0
    return v2
.end method

.method public static isRemoveGameLauncher(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 517
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.game.gamehome"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 518
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportNewUhqUpscaler()Z
    .locals 3

    .prologue
    .line 667
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_SOUNDALIVE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 668
    .local v0, "mAppVersion":I
    const/16 v1, 0x34

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static sendSAlogging(Landroid/content/Context;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 529
    const-string/jumbo v6, "pbm_maximum_brightness"

    invoke-static {p0, v6, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, -0x5a

    .line 528
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "brightnessValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 531
    .local v4, "resolutionValue":Ljava/lang/String;
    const-string/jumbo v6, "WQHD,FHD,HD"

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 532
    const-string/jumbo v6, "pbm_screen_resolution"

    invoke-static {p0, v6, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 533
    .local v3, "resolution":I
    if-ne v3, v9, :cond_3

    .line 534
    const-string/jumbo v4, "WQ"

    .line 541
    .end local v3    # "resolution":I
    .end local v4    # "resolutionValue":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v0, v1

    .line 542
    .local v0, "LoggingString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    :cond_1
    if-nez p1, :cond_5

    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Op_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_V"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 550
    const-string/jumbo v7, "pbm_video_enhancer"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 549
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_U"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 552
    const-string/jumbo v7, "pbm_uhq_upscaler"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 551
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_L"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 554
    const-string/jumbo v7, "pbm_game_launcher"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 553
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_T"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 556
    const-string/jumbo v7, "pbm_game_tools"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 555
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    :cond_2
    :goto_1
    const-string/jumbo v6, "BoostUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "for SALogging : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 578
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "key"

    const-string/jumbo v7, "perfMode"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "content://com.samsung.android.sm/Logging"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_2
    return-void

    .line 535
    .end local v0    # "LoggingString":Ljava/lang/String;
    .end local v5    # "values":Landroid/content/ContentValues;
    .restart local v3    # "resolution":I
    .restart local v4    # "resolutionValue":Ljava/lang/String;
    :cond_3
    if-ne v3, v8, :cond_4

    .line 536
    const-string/jumbo v4, "FH"

    .local v4, "resolutionValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 538
    .local v4, "resolutionValue":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "HD"

    .local v4, "resolutionValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 557
    .end local v3    # "resolution":I
    .end local v4    # "resolutionValue":Ljava/lang/String;
    .restart local v0    # "LoggingString":Ljava/lang/String;
    :cond_5
    if-ne p1, v8, :cond_6

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ga_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_L"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 560
    const-string/jumbo v7, "pbm_game_launcher"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 559
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isNavigationBarExist(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_T"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 563
    const-string/jumbo v7, "pbm_game_tools"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 562
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 565
    :cond_6
    if-ne p1, v9, :cond_7

    .line 566
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "En_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_V"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 568
    const-string/jumbo v7, "pbm_video_enhancer"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 567
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_U"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 570
    const-string/jumbo v7, "pbm_uhq_upscaler"

    invoke-static {p0, v7, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 569
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 572
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Hi_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 582
    .restart local v5    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 583
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "BoostUtils"

    const-string/jumbo v7, "setPerformanceMode() has occured IllegalArgumentException with SMLogging"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private static setBoostMaxBrightness(Landroid/content/Context;II)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevMode"    # I
    .param p2, "afterMode"    # I

    .prologue
    .line 197
    const-string/jumbo v10, "power"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 199
    .local v7, "pm":Landroid/os/PowerManager;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v10

    float-to-int v2, v10

    .line 201
    .local v2, "curBrightness":I
    int-to-float v10, v2

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v5, v10, v11

    .line 202
    .local v5, "onePercent":F
    if-ne p1, p2, :cond_4

    .line 203
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getLastPerfmodebrightness(Landroid/content/Context;)I

    move-result v10

    .line 202
    :goto_0
    add-int/lit8 v10, v10, 0xa

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v8, v11, v10

    .line 205
    .local v8, "prevModeBrightness":F
    if-ne p1, p2, :cond_5

    .line 206
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getLastPerfmodebrightness(Landroid/content/Context;)I

    move-result v10

    .line 205
    :goto_1
    add-int/lit8 v9, v10, -0x5a

    .line 208
    .local v9, "prevScale":I
    const-string/jumbo v10, "BoostUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setBoostMaxBrightness() curBrightness="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",prevScale="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", prevModeBrightness="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    int-to-float v10, v2

    int-to-float v11, v9

    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v11, v12

    mul-float/2addr v11, v5

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 210
    .local v6, "orgBrightness":I
    const/16 v10, 0xff

    if-le v6, v10, :cond_0

    const/16 v6, 0xff

    .line 211
    :cond_0
    if-gez v6, :cond_1

    const/4 v6, 0x0

    .line 215
    :cond_1
    const-string/jumbo v10, "pbm_maximum_brightness"

    invoke-static {p0, v10, p2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 216
    .local v0, "afterModeBrightness":I
    add-int/lit8 v1, v0, -0x5a

    .line 217
    .local v1, "afterScale":I
    int-to-float v10, v6

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v5, v10, v11

    .line 218
    int-to-float v10, v6

    int-to-float v11, v1

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 219
    .local v4, "newBrightness":I
    const-string/jumbo v10, "BoostUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setBoostMaxBrightness() from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 220
    const-string/jumbo v12, ", orgBrightness="

    .line 219
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {p0}, Lcom/android/settings/Utils;->isBrightnessManualMode(Landroid/content/Context;)Z

    move-result v3

    .line 223
    .local v3, "isManualMode":Z
    const-string/jumbo v10, "BoostUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPSMMaxBrightness() isManualBrightnessMode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz v3, :cond_3

    .line 226
    const/16 v10, 0xff

    if-le v4, v10, :cond_2

    const/16 v4, 0xff

    .line 227
    :cond_2
    const-string/jumbo v10, "BoostUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setBoostMaxBrightness() screen_brightness: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "screen_brightness"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    :cond_3
    const-string/jumbo v10, "BoostUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setBoostMaxBrightness() auto_brightness_limit: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "auto_brightness_limit"

    invoke-static {v10, v11, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    invoke-static {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setLastPerfmodebrightness(Landroid/content/Context;I)V

    .line 196
    return-void

    .line 203
    .end local v0    # "afterModeBrightness":I
    .end local v1    # "afterScale":I
    .end local v3    # "isManualMode":Z
    .end local v4    # "newBrightness":I
    .end local v6    # "orgBrightness":I
    .end local v8    # "prevModeBrightness":F
    .end local v9    # "prevScale":I
    :cond_4
    const-string/jumbo v10, "pbm_maximum_brightness"

    invoke-static {p0, v10, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_0

    .line 206
    .restart local v8    # "prevModeBrightness":F
    :cond_5
    const-string/jumbo v10, "pbm_maximum_brightness"

    invoke-static {p0, v10, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_1
.end method

.method public static setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 165
    if-nez p2, :cond_0

    .line 166
    const-string/jumbo v4, "BoostUtils"

    const-string/jumbo v5, "setBoostModeValue() doesn\'t need to work for Normal mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 171
    :cond_0
    const-string/jumbo v5, "pbm_maximum_brightness"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "pbm_screen_resolution"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 172
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "rawData":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    :cond_2
    const-string/jumbo v1, "0,0,0"

    .line 177
    :cond_3
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "valueArray":[Ljava/lang/String;
    add-int/lit8 v5, p2, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v2, v3, v4

    .line 182
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 186
    const-string/jumbo v4, "BoostUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoostModeValue() mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "rawData":Ljava/lang/String;
    .end local v3    # "valueArray":[Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 188
    :cond_6
    const-string/jumbo v4, "pbm_video_enhancer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "pbm_uhq_upscaler"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 189
    const-string/jumbo v4, "pbm_game_launcher"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 188
    if-nez v4, :cond_7

    .line 189
    const-string/jumbo v4, "pbm_game_tools"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 188
    if-eqz v4, :cond_5

    .line 191
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public static setGameLancherEnabled(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 588
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 589
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "com.samsung.android.game.gamehome"

    .line 590
    if-eqz p1, :cond_0

    move v1, v2

    .line 589
    :goto_0
    invoke-virtual {v0, v4, v1, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "game_home_enable"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 587
    return-void

    .line 590
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 591
    goto :goto_1
.end method

.method public static setGameToolsEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .prologue
    .line 595
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pref_setting_display_play_tools"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    return-void

    .line 595
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLastPerfmodebrightness(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "brightness"    # I

    .prologue
    .line 645
    const-string/jumbo v2, "last_perf_brightness_value"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 646
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 647
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "last_perf_brightness_value"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 648
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 643
    return-void
.end method

.method public static setPerformanceBoosterMode(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;IZ)V

    .line 238
    return-void
.end method

.method public static setPerformanceBoosterMode(Landroid/content/Context;IZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "fromExPopup"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 244
    if-nez p1, :cond_3

    .line 245
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->dismissPerformanceBoostNotification(Landroid/content/Context;)V

    .line 251
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerformanceBoosterMode(Landroid/content/Context;)I

    move-result v1

    .line 252
    .local v1, "currentMode":I
    invoke-static {p0, v1, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostMaxBrightness(Landroid/content/Context;II)V

    .line 256
    const-string/jumbo v9, "WQHD,FHD,HD"

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 257
    if-eqz p2, :cond_4

    .line 284
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "sem_perfomance_mode"

    invoke-static {v9, v12, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    invoke-static {p0, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->sendSAlogging(Landroid/content/Context;I)V

    .line 287
    if-ne p1, v10, :cond_2

    .line 289
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isNavigationBarExist(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 290
    const-string/jumbo v9, "pbm_game_tools"

    invoke-static {p0, v9, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_8

    move v9, v10

    :goto_2
    invoke-static {p0, v9}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setGameToolsEnabled(Landroid/content/Context;Z)V

    .line 294
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isRemoveGameLauncher(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 295
    const-string/jumbo v9, "pbm_game_launcher"

    invoke-static {p0, v9, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_9

    :goto_3
    invoke-static {p0, v10}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setGameLancherEnabled(Landroid/content/Context;Z)V

    .line 299
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.sm.BOOST_MODE_CHANGED"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v9, "boost_mode"

    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "display_size_forced"

    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, "resolutionStr":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "display_density_forced"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "densityStr":Ljava/lang/String;
    const-string/jumbo v9, "BoostUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Currently set performance mode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerformanceBoosterMode(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 307
    const-string/jumbo v11, ", newly set display_size_forced : "

    .line 306
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 308
    const-string/jumbo v11, ", newly set display_density_forced : "

    .line 306
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 247
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "currentMode":I
    .end local v3    # "densityStr":Ljava/lang/String;
    .end local v7    # "resolutionStr":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->showPerformanceBoostNotification(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 258
    .restart local v1    # "currentMode":I
    :cond_4
    const-string/jumbo v9, "pbm_screen_resolution"

    invoke-static {p0, v9, p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 259
    .local v6, "resolution":I
    const/4 v5, 0x0

    .line 261
    .local v5, "multiResolutionChange":Z
    invoke-static {p0}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v2

    .line 263
    .local v2, "currentResolution":I
    if-eq v2, v6, :cond_5

    .line 264
    const/4 v5, 0x1

    .line 267
    :cond_5
    if-nez p1, :cond_7

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "easy_mode_switch"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v10, :cond_6

    .line 269
    invoke-static {p0, v2, v11}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    goto/16 :goto_1

    .line 272
    :cond_6
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v8

    .line 273
    .local v8, "windowManager":Landroid/view/IWindowManager;
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/IWindowManager;->clearForcedDisplaySizeDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 274
    .end local v8    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v4

    .line 275
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "BoostUtils"

    const-string/jumbo v12, "clearForcedDisplaySizeDensity() for Normal mode has occured exception"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 278
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_7
    if-eqz p1, :cond_0

    if-eqz v5, :cond_0

    .line 279
    invoke-static {p0, v6, v11}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    goto/16 :goto_1

    .end local v2    # "currentResolution":I
    .end local v5    # "multiResolutionChange":Z
    .end local v6    # "resolution":I
    :cond_8
    move v9, v11

    .line 290
    goto/16 :goto_2

    :cond_9
    move v10, v11

    .line 295
    goto/16 :goto_3
.end method

.method public static showPerformanceBoostNotification(Landroid/content/Context;I)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 316
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->dismissPerformanceBoostNotification(Landroid/content/Context;)V

    .line 317
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 320
    .local v13, "currentModeStr":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 321
    const v16, 0x7f0205b4

    .line 322
    .local v16, "icon":I
    const v2, 0x7f0b0cbc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 330
    .local v12, "currentModeContent":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0cc5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 332
    .local v18, "notiSummary":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.sm.BOOST_MODE_START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    const-string/jumbo v3, "boost_mode"

    const/4 v5, 0x0

    .line 332
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 334
    .local v4, "disableIntent":Landroid/content/Intent;
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 335
    .local v14, "disalbeIntent":Landroid/app/PendingIntent;
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.sm.ACTION_PERFORMANCE_BOOSTER"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 335
    const/4 v6, 0x0

    .line 336
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    .line 335
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v20

    .line 338
    .local v20, "smartManagerIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.settings.boostmode.action.BOOST_MODE_DISMISS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    const/4 v3, 0x0

    .line 338
    const/4 v5, 0x0

    .line 337
    move-object/from16 v0, p0

    invoke-static {v0, v3, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 340
    .local v15, "dismissIntent":Landroid/app/PendingIntent;
    new-instance v11, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    .local v11, "builder":Landroid/app/Notification$Builder;
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 342
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v3, v5

    const v5, 0x7f0b0cbb

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 344
    const/4 v3, 0x1

    .line 341
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 345
    const/4 v3, 0x0

    .line 341
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 347
    const v3, 0x7f0b0cce

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 341
    move-object/from16 v0, v20

    invoke-virtual {v2, v5, v3, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 348
    const v3, 0x7f0b04fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 341
    invoke-virtual {v2, v5, v3, v14}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 349
    const/4 v3, 0x2

    .line 341
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 350
    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v21

    .line 351
    .local v21, "smartManagerPkgName":Ljava/lang/String;
    const-string/jumbo v2, "com.samsung.android.sm"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    const-string/jumbo v2, "com.samsung.android.lool"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 351
    if-eqz v2, :cond_1

    .line 353
    :cond_0
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 356
    :cond_1
    const-string/jumbo v2, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    .line 357
    .local v19, "notificationManager":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, v11}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v17

    .line 358
    .local v17, "n":Landroid/app/Notification;
    const-string/jumbo v2, "performance_booster"

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v5, 0x7f110049

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 315
    return-void

    .line 323
    .end local v4    # "disableIntent":Landroid/content/Intent;
    .end local v11    # "builder":Landroid/app/Notification$Builder;
    .end local v12    # "currentModeContent":Ljava/lang/String;
    .end local v14    # "disalbeIntent":Landroid/app/PendingIntent;
    .end local v15    # "dismissIntent":Landroid/app/PendingIntent;
    .end local v16    # "icon":I
    .end local v17    # "n":Landroid/app/Notification;
    .end local v18    # "notiSummary":Ljava/lang/String;
    .end local v19    # "notificationManager":Landroid/app/NotificationManager;
    .end local v20    # "smartManagerIntent":Landroid/app/PendingIntent;
    .end local v21    # "smartManagerPkgName":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 324
    const v16, 0x7f0205b5

    .line 325
    .restart local v16    # "icon":I
    const v2, 0x7f0b0cbd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "currentModeContent":Ljava/lang/String;
    goto/16 :goto_0

    .line 327
    .end local v12    # "currentModeContent":Ljava/lang/String;
    .end local v16    # "icon":I
    :cond_3
    const v16, 0x7f0205b3

    .line 328
    .restart local v16    # "icon":I
    const v2, 0x7f0b0cbe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "currentModeContent":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mAD"    # Landroid/app/AlertDialog;
    .param p2, "mBoostMode"    # I
    .param p3, "setGLbyUs"    # Z
    .param p4, "fromWhere"    # Ljava/lang/String;

    .prologue
    .line 600
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)V

    .line 599
    return-void
.end method

.method public static showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mAD"    # Landroid/app/AlertDialog;
    .param p2, "mBoostMode"    # I
    .param p3, "setGLbyUs"    # Z
    .param p4, "fromWhere"    # Ljava/lang/String;
    .param p5, "bsm"    # Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    .prologue
    const v5, 0x7f0b0c75

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 605
    if-eqz p1, :cond_0

    .line 606
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 607
    const/4 p1, 0x0

    .line 609
    .end local p1    # "mAD":Landroid/app/AlertDialog;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 610
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 611
    invoke-static {p0, p2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 612
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 610
    const v2, 0x7f0b0cc7

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 613
    new-array v1, v3, [Ljava/lang/Object;

    .line 614
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 613
    const v2, 0x7f0b0cc6

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 615
    new-instance v1, Lcom/samsung/android/settings/boostmode/BoostUtils$1;

    invoke-direct {v1, p5, p0, p2, p4}, Lcom/samsung/android/settings/boostmode/BoostUtils$1;-><init>(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Landroid/content/Context;ILjava/lang/String;)V

    const v2, 0x7f0b0d43

    .line 609
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 627
    new-instance v1, Lcom/samsung/android/settings/boostmode/BoostUtils$2;

    invoke-direct {v1, p3, p0}, Lcom/samsung/android/settings/boostmode/BoostUtils$2;-><init>(ZLandroid/content/Context;)V

    const/high16 v2, 0x1040000

    .line 609
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 632
    new-instance v1, Lcom/samsung/android/settings/boostmode/BoostUtils$3;

    invoke-direct {v1, p3, p0}, Lcom/samsung/android/settings/boostmode/BoostUtils$3;-><init>(ZLandroid/content/Context;)V

    .line 609
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 640
    .restart local p1    # "mAD":Landroid/app/AlertDialog;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 604
    return-void
.end method

.method public static startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "boostMode"    # I
    .param p2, "fromWhere"    # Ljava/lang/String;

    .prologue
    .line 384
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.android.sm.ACTION_BOOST_MODE_ANIMATION"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v9, "viIntent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerformanceBoosterMode(Landroid/content/Context;)I

    move-result v1

    .line 386
    .local v1, "currentBoostMode":I
    const/high16 v11, 0x10000000

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 387
    const-string/jumbo v11, "key_prev_boost_mode"

    invoke-virtual {v9, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string/jumbo v11, "pbm_maximum_brightness"

    move/from16 v0, p1

    invoke-static {p0, v11, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 390
    .local v5, "maxBrightnessStatus":I
    const-string/jumbo v11, "key_item_max_brightness"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 392
    const-string/jumbo v11, "WQHD,FHD,HD"

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 393
    const-string/jumbo v11, "pbm_screen_resolution"

    move/from16 v0, p1

    invoke-static {p0, v11, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 394
    .local v7, "resolutionStatus":I
    const-string/jumbo v11, "key_item_resolution"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 396
    if-eqz p2, :cond_4

    const-string/jumbo v11, "smartmanager"

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 405
    .end local v7    # "resolutionStatus":I
    :cond_0
    :goto_0
    if-nez p1, :cond_5

    const/4 v11, 0x2

    if-ne v1, v11, :cond_5

    .line 408
    :goto_1
    const-string/jumbo v11, "pbm_video_enhancer"

    move/from16 v0, p1

    invoke-static {p0, v11, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    .line 409
    .local v10, "videoEnhancerStatus":I
    const-string/jumbo v11, "key_item_video_enhancer"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 412
    const-string/jumbo v11, "pbm_uhq_upscaler"

    move/from16 v0, p1

    invoke-static {p0, v11, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 413
    .local v8, "uhqUpscalerStatus":I
    const-string/jumbo v11, "key_item_uhq_upscaler"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 416
    .end local v8    # "uhqUpscalerStatus":I
    .end local v10    # "videoEnhancerStatus":I
    :cond_1
    if-nez p1, :cond_6

    const/4 v11, 0x1

    if-ne v1, v11, :cond_6

    .line 418
    :goto_2
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isRemoveGameLauncher(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 419
    const-string/jumbo v11, "pbm_game_launcher"

    move/from16 v0, p1

    invoke-static {p0, v11, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 420
    .local v2, "gameLauncherStatus":I
    const-string/jumbo v11, "key_item_game_launcher"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 423
    .end local v2    # "gameLauncherStatus":I
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isNavigationBarExist(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 424
    const-string/jumbo v11, "pbm_game_tools"

    move/from16 v0, p1

    invoke-static {p0, v11, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 425
    .local v3, "gameToolsStatus":I
    const-string/jumbo v11, "key_item_game_tools"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 429
    .end local v3    # "gameToolsStatus":I
    :cond_3
    const-string/jumbo v11, "key_next_boost_mode"

    move/from16 v0, p1

    invoke-virtual {v9, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 431
    invoke-static {p0, v11, v12}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 433
    .local v6, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 382
    return-void

    .line 397
    .end local v6    # "options":Landroid/app/ActivityOptions;
    .restart local v7    # "resolutionStatus":I
    :cond_4
    invoke-static {p0}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v11

    if-eq v11, v7, :cond_0

    .line 398
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "android.intent.category.HOME"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const/high16 v11, 0x10200000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 406
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "resolutionStatus":I
    :cond_5
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_1

    goto/16 :goto_1

    .line 417
    :cond_6
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_3

    goto :goto_2
.end method
