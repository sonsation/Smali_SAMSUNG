.class public final Lcom/samsung/android/settings/powersaving/PSMUtils;
.super Ljava/lang/Object;
.source "PSMUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I
    .param p2, "numTextSizeId"    # I
    .param p3, "unitTextSizeId"    # I
    .param p4, "colorId"    # I

    .prologue
    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 637
    .local v8, "res":Landroid/content/res/Resources;
    const/4 v10, 0x1

    if-ge p1, v10, :cond_0

    .line 638
    new-instance v9, Landroid/text/SpannableString;

    const-string/jumbo v10, "0"

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v9, "s":Landroid/text/SpannableString;
    return-object v9

    .line 640
    .end local v9    # "s":Landroid/text/SpannableString;
    :cond_0
    div-int/lit8 v4, p1, 0x3c

    .line 641
    .local v4, "hour":I
    rem-int/lit8 v7, p1, 0x3c

    .line 644
    .local v7, "mins":I
    if-lez v4, :cond_6

    if-gtz v7, :cond_6

    .line 645
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b0ab2

    invoke-virtual {v8, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, "formatted":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2}, Ljava/text/DecimalFormat;-><init>()V

    .line 653
    .local v2, "df":Ljava/text/DecimalFormat;
    const/4 v5, -0x1

    .local v5, "hourIndex":I
    const/4 v6, -0x1

    .line 654
    .local v6, "minIndex":I
    if-lez v4, :cond_1

    .line 655
    int-to-long v10, v4

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 656
    :cond_1
    if-lez v7, :cond_2

    .line 657
    int-to-long v10, v7

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 658
    :cond_2
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 659
    .restart local v9    # "s":Landroid/text/SpannableString;
    const/4 v10, -0x1

    move/from16 v0, p4

    if-eq v0, v10, :cond_3

    .line 660
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 661
    const/4 v12, 0x0

    .line 660
    move/from16 v0, p4

    invoke-virtual {v11, v0, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 661
    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x21

    .line 660
    invoke-virtual {v9, v10, v12, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 663
    :cond_3
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 664
    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x21

    .line 663
    invoke-virtual {v9, v10, v12, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 666
    const/4 v10, -0x1

    if-eq v5, v10, :cond_4

    .line 668
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 670
    int-to-long v12, v4

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v5

    .line 671
    const/16 v12, 0x21

    .line 667
    invoke-virtual {v9, v10, v5, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 674
    :cond_4
    const/4 v10, -0x1

    if-eq v6, v10, :cond_5

    .line 675
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 677
    int-to-long v12, v7

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v6

    .line 678
    const/16 v12, 0x21

    .line 675
    invoke-virtual {v9, v10, v6, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 682
    :cond_5
    return-object v9

    .line 646
    .end local v2    # "df":Ljava/text/DecimalFormat;
    .end local v3    # "formatted":Ljava/lang/String;
    .end local v5    # "hourIndex":I
    .end local v6    # "minIndex":I
    .end local v9    # "s":Landroid/text/SpannableString;
    :cond_6
    if-gtz v4, :cond_7

    .line 647
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b0ab3

    invoke-virtual {v8, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "formatted":Ljava/lang/String;
    goto/16 :goto_0

    .line 649
    .end local v3    # "formatted":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const v11, 0x7f0b0ab4

    invoke-virtual {v8, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "formatted":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static getBatteryRemainingTIme(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "batteryPercent"    # I

    .prologue
    .line 557
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v0

    return v0
.end method

.method public static getBatteryRemainingTIme(Landroid/content/Context;III)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "batteryPercent"    # I
    .param p3, "extraValue"    # I

    .prologue
    .line 571
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 582
    .local v1, "remainingTime":I
    :cond_0
    :goto_0
    add-int v2, v1, p3

    return v2

    .line 572
    .end local v1    # "remainingTime":I
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    mul-int/lit16 v2, p2, 0x4b0

    div-int/lit8 v1, v2, 0x64

    .line 574
    .restart local v1    # "remainingTime":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 575
    mul-int/lit8 v2, v1, 0x8

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    goto :goto_0

    .line 576
    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 577
    mul-int/lit8 v2, v1, 0xa

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    goto :goto_0

    .line 578
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 579
    mul-int/lit8 v2, v1, 0x11

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getBatteryRemainingTime(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 550
    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    .line 551
    .local v0, "cfmsService":Landroid/os/CustomFrequencyManager;
    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v1

    .line 552
    .local v1, "remainingTime":I
    const-string/jumbo v2, "PSMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBatteryRemainingTime(): time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return v1
.end method

.method public static getChangeBatteryTimeAodMode(Landroid/content/Context;IJ)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aodStatus"    # I
    .param p2, "batteryNormalTime"    # J

    .prologue
    .line 402
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x1e

    invoke-static {p0, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentPowerSavingMode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 218
    .local v0, "lowPowerMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 220
    .local v2, "ultraPowerMode":Z
    :cond_0
    if-eqz v2, :cond_2

    .line 221
    const/4 v1, 0x2

    .line 229
    .local v1, "mode":I
    :goto_1
    const-string/jumbo v3, "PSMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCurrentPowerSavingMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return v1

    .line 217
    .end local v0    # "lowPowerMode":Z
    .end local v1    # "mode":I
    .end local v2    # "ultraPowerMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "lowPowerMode":Z
    goto :goto_0

    .line 223
    .restart local v2    # "ultraPowerMode":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 224
    const/4 v1, 0x1

    .restart local v1    # "mode":I
    goto :goto_1

    .line 226
    .end local v1    # "mode":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "mode":I
    goto :goto_1
.end method

.method public static getFloatFromDimension(Landroid/content/Context;I)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 702
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 703
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 704
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method public static getLastPSMbrightness(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 832
    const-string/jumbo v2, "last_psm_brightness_value"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 833
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "last_psm_brightness_value"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 834
    .local v0, "result":I
    const-string/jumbo v2, "PSMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLastPSMbrightness() result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return v0
.end method

.method public static getLastPSMmode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 818
    const-string/jumbo v1, "last_psm_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 819
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "last_psm_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getPSMMaxBrightnessValue(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    const/16 v0, 0x5a

    .line 277
    .local v0, "scale":I
    :goto_0
    const-string/jumbo v1, "PSMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPSMMaxBrightnessValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v0

    .line 275
    .end local v0    # "scale":I
    :cond_0
    const-string/jumbo v1, "limit_brightness_state"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    .restart local v0    # "scale":I
    goto :goto_0
.end method

.method public static getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "table"    # I
    .param p3, "mode"    # I

    .prologue
    .line 103
    if-nez p3, :cond_c

    .line 104
    const-string/jumbo v12, "limit_brightness_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 105
    const/16 v12, 0x5a

    return v12

    .line 106
    :cond_0
    const-string/jumbo v12, "screen_resolution_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 107
    const/4 v1, 0x1

    .line 108
    .local v1, "currentResolution":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "default_display_size_forced"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "sizeStr":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string/jumbo v12, ""

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 125
    :cond_1
    :try_start_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 126
    .local v3, "point":Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v11

    .line 127
    .local v11, "windowManager":Landroid/view/IWindowManager;
    const/4 v12, 0x0

    invoke-interface {v11, v12, v3}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 128
    iget v12, v3, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v13, 0x5a0

    if-lt v12, v13, :cond_6

    .line 129
    const/4 v1, 0x2

    .line 139
    .end local v3    # "point":Landroid/graphics/Point;
    .end local v11    # "windowManager":Landroid/view/IWindowManager;
    :goto_0
    return v1

    .line 111
    :cond_2
    const-string/jumbo v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "sizeArray":[Ljava/lang/String;
    if-eqz v4, :cond_3

    array-length v12, v4

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    const/4 v12, 0x0

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 114
    .local v10, "width":I
    :goto_1
    const-string/jumbo v12, "PSMUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getCurrentResolution: width = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/16 v12, 0x5a0

    if-lt v10, v12, :cond_4

    .line 117
    const/4 v1, 0x2

    goto :goto_0

    .line 113
    .end local v10    # "width":I
    :cond_3
    const/16 v10, 0x438

    .restart local v10    # "width":I
    goto :goto_1

    .line 118
    :cond_4
    const/16 v12, 0x2d0

    if-le v10, v12, :cond_5

    const/16 v12, 0x438

    if-gt v10, v12, :cond_5

    .line 119
    const/4 v1, 0x1

    .line 118
    goto :goto_0

    .line 121
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 130
    .end local v4    # "sizeArray":[Ljava/lang/String;
    .end local v10    # "width":I
    .restart local v3    # "point":Landroid/graphics/Point;
    .restart local v11    # "windowManager":Landroid/view/IWindowManager;
    :cond_6
    :try_start_1
    iget v12, v3, Landroid/graphics/Point;->x:I

    const/16 v13, 0x2d0

    if-le v12, v13, :cond_7

    iget v12, v3, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v13, 0x438

    if-gt v12, v13, :cond_7

    .line 131
    const/4 v1, 0x1

    goto :goto_0

    .line 133
    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    .line 135
    .end local v3    # "point":Landroid/graphics/Point;
    .end local v11    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v12, "PSMUtils"

    const-string/jumbo v13, "getInitialDisplaySize() has been occured RemoteException"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v1    # "currentResolution":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "sizeStr":Ljava/lang/String;
    :cond_8
    const-string/jumbo v12, "restricted_device_performance"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 141
    const/4 v12, 0x0

    return v12

    .line 142
    :cond_9
    const-string/jumbo v12, "psm_network_power_saving"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 143
    const/4 v12, 0x0

    return v12

    .line 144
    :cond_a
    const-string/jumbo v12, "psm_always_on_display_mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "aod_mode"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    return v12

    .line 147
    :cond_b
    const/4 v12, -0x1

    return v12

    .line 151
    :cond_c
    const-string/jumbo v12, "PSMUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPSMValue(): key = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mode ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v6, -0x1

    .line 155
    .local v6, "value":I
    const/4 v12, 0x2

    new-array v7, v12, [Ljava/lang/String;

    .line 156
    .local v7, "valueArray":[Ljava/lang/String;
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_e

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "valueString":Ljava/lang/String;
    :goto_2
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_d

    .line 163
    const-string/jumbo v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 164
    add-int/lit8 v12, p3, -0x1

    aget-object v12, v7, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "valueStr":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_f

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 167
    .end local v8    # "valueStr":Ljava/lang/String;
    :cond_d
    :goto_3
    const-string/jumbo v12, "PSMUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPSMValue(): value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v6

    .line 159
    .end local v9    # "valueString":Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "valueString":Ljava/lang/String;
    goto :goto_2

    .line 165
    .restart local v8    # "valueStr":Ljava/lang/String;
    :cond_f
    const/4 v6, -0x1

    goto :goto_3
.end method

.method public static getTimeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutes"    # I

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutes"    # I
    .param p2, "twoline"    # Z

    .prologue
    const v6, 0x7f0b0ab2

    const v9, 0x7f0b0ab3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 591
    const-string/jumbo v3, "PSMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimeString(): time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    div-int/lit8 v1, p1, 0x3c

    .line 593
    .local v1, "hour":I
    rem-int/lit8 v2, p1, 0x3c

    .line 595
    .local v2, "minute":I
    if-nez v1, :cond_0

    if-lez v2, :cond_0

    .line 596
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "contentDesc":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 597
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_0
    if-lez v1, :cond_1

    if-nez v2, :cond_1

    .line 598
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto :goto_0

    .line 599
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_1
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 600
    if-eqz p2, :cond_2

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 602
    const-string/jumbo v4, "\n"

    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto :goto_0

    .line 605
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b0ab4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 606
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 605
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto :goto_0

    .line 607
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 608
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto/16 :goto_0

    .line 611
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_4
    const v3, 0x7f0b01cd

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutes"    # I
    .param p2, "twoline"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 618
    const-string/jumbo v1, "PSMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimeStringWithMark(): time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-gez p1, :cond_0

    .line 621
    new-array v1, v5, [Ljava/lang/Object;

    .line 622
    mul-int/lit8 v2, p1, -0x1

    invoke-static {p0, v2, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 621
    const v2, 0x7f0b0ad2

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 624
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    .line 625
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 624
    const v2, 0x7f0b0ad1

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isAODServiceEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 406
    const-string/jumbo v0, "com.samsung.android.app.aodservice"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isButtonBackground(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 697
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 698
    const-string/jumbo v3, "show_button_background"

    .line 697
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isChangedValue(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/16 v2, 0x50

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "result":Z
    if-ne p1, v3, :cond_5

    .line 496
    const-string/jumbo v1, "limit_brightness_state"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 497
    const-string/jumbo v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 498
    const-string/jumbo v1, "screen_resolution_state"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 503
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 514
    :cond_1
    :goto_1
    return v0

    .line 499
    :cond_2
    const-string/jumbo v1, "restricted_device_performance"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 500
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "psm_network_power_saving"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 502
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "psm_always_on_display_mode"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 501
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power_back_data_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 505
    :cond_5
    const-string/jumbo v1, "limit_brightness_state"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 506
    const-string/jumbo v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 507
    const-string/jumbo v1, "screen_resolution_state"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_7

    .line 512
    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 508
    :cond_7
    const-string/jumbo v1, "restricted_device_performance"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 509
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "psm_network_power_saving"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 511
    :cond_8
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "psm_always_on_display_mode"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v3, :cond_1

    goto :goto_2

    .line 510
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ultra_power_mode_back_data_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_8

    goto :goto_2
.end method

.method public static isDisableMaxMode(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "shared_device_status"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 521
    .local v2, "sd_status":I
    if-eq v2, v4, :cond_0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 522
    :cond_0
    return v4

    .line 525
    :cond_1
    const/4 v3, 0x0

    .line 526
    .local v3, "ucmKeyGuardEnabled":Z
    const-string/jumbo v5, "persist.keyguard.ucs"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "propertyValue":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 528
    return v4

    .line 531
    :cond_2
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 533
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isVideoCallActive(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    :goto_0
    return v4

    .line 535
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    goto :goto_0
.end method

.method public static isHebrewLanguage()Z
    .locals 3

    .prologue
    .line 795
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 796
    .local v1, "locale":Ljava/util/Locale;
    if-nez v1, :cond_0

    .line 797
    const/4 v2, 0x0

    return v2

    .line 800
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string/jumbo v2, "he"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "iw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isNetworkPowerSavingEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 716
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 717
    const-string/jumbo v1, "com.sec.EnhancedDataManagement"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.sec.NetworkPowerSaving"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 716
    if-eqz v1, :cond_1

    .line 718
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 716
    :cond_1
    return v0
.end method

.method public static isPowerSavingModeAllowed(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 774
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 775
    .local v1, "edmUri":Landroid/net/Uri;
    const/4 v8, 0x1

    .line 776
    .local v8, "isPowerSavingModeAllowed":Z
    const-string/jumbo v3, "isPowerSavingModeAllowed"

    .line 777
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "false"

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 778
    .local v4, "selectionArgsFalse":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 779
    .local v7, "edmCr":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 781
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 783
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 787
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 790
    :cond_0
    :goto_1
    const-string/jumbo v0, "PSMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPowerSavingModeAllowed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return v8

    .line 783
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v6

    .line 785
    .local v6, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string/jumbo v0, "PSMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CursorWindowAllocationException"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 786
    .end local v6    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    .line 787
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 786
    throw v0
.end method

.method public static isRestrictBackDataEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 708
    const/4 v0, 0x1

    .line 709
    .local v0, "isEnabled":Z
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v0

    .line 710
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVideoCallActive(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 539
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 541
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 542
    .local v1, "result":Ljava/lang/Boolean;
    const-string/jumbo v3, "PSMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isVideoCallActive ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    return-object v1

    .line 544
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method private static sendSAlogging(Landroid/content/Context;I)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v9, 0x1

    .line 844
    if-nez p1, :cond_0

    .line 845
    return-void

    .line 847
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v10

    add-int/lit8 v10, v10, -0x5a

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 848
    .local v2, "brightnessValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 849
    .local v6, "resolutionValue":Ljava/lang/String;
    const-string/jumbo v10, ""

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 850
    const-string/jumbo v10, "screen_resolution_state"

    invoke-static {p0, v10, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v5

    .line 851
    .local v5, "resolution":I
    if-ne v5, v12, :cond_6

    .line 852
    const-string/jumbo v6, "WQHD"

    .line 859
    .end local v5    # "resolution":I
    .end local v6    # "resolutionValue":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v0, v2

    .line 860
    .local v0, "LoggingString":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 861
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_sp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 864
    const-string/jumbo v11, "restricted_device_performance"

    invoke-static {p0, v11, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    .line 863
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    const/4 v3, -0x1

    .line 867
    .local v3, "dataStatus":I
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 868
    packed-switch p1, :pswitch_data_0

    .line 877
    :goto_1
    if-nez v3, :cond_8

    const/4 v3, 0x1

    .line 883
    :cond_3
    :goto_2
    const/4 v10, -0x1

    if-eq v3, v10, :cond_4

    .line 884
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_bn"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 887
    :cond_4
    const-string/jumbo v10, "psm_always_on_display_mode"

    invoke-static {p0, v10, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    .line 888
    .local v1, "aodStatus":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_aod"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v1, :cond_5

    move v8, v9

    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 890
    if-ne p1, v9, :cond_a

    .line 891
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MID_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    :goto_3
    const-string/jumbo v8, "PSMUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "for SALogging : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 899
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "key"

    const-string/jumbo v9, "powerSavingMode"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string/jumbo v8, "value"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "content://com.samsung.android.sm/Logging"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_4
    return-void

    .line 853
    .end local v0    # "LoggingString":Ljava/lang/String;
    .end local v1    # "aodStatus":I
    .end local v3    # "dataStatus":I
    .end local v7    # "values":Landroid/content/ContentValues;
    .restart local v5    # "resolution":I
    .restart local v6    # "resolutionValue":Ljava/lang/String;
    :cond_6
    if-ne v5, v9, :cond_7

    .line 854
    const-string/jumbo v6, "FHD"

    .local v6, "resolutionValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 856
    .local v6, "resolutionValue":Ljava/lang/String;
    :cond_7
    const-string/jumbo v6, "HD"

    .local v6, "resolutionValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 870
    .end local v5    # "resolution":I
    .end local v6    # "resolutionValue":Ljava/lang/String;
    .restart local v0    # "LoggingString":Ljava/lang/String;
    .restart local v3    # "dataStatus":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "low_power_back_data_off"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_1

    .line 873
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "ultra_power_mode_back_data_off"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_1

    .line 877
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 879
    :cond_9
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 880
    const-string/jumbo v10, "psm_network_power_saving"

    invoke-static {p0, v10, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    goto/16 :goto_2

    .line 893
    .restart local v1    # "aodStatus":I
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MAX_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 903
    .restart local v7    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 904
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "PSMUtils"

    const-string/jumbo v9, "setPerformanceMode() has occured IllegalArgumentException with SMLogging"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 868
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setLastPSMbrightness(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "brightness"    # I

    .prologue
    .line 824
    const-string/jumbo v2, "last_psm_brightness_value"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 825
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 826
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "last_psm_brightness_value"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 827
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 822
    return-void
.end method

.method private static setLastPSMmode(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 806
    const-string/jumbo v2, "last_psm_mode"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 807
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 808
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 809
    const-string/jumbo v2, "last_psm_mode"

    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 813
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 804
    return-void

    .line 810
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 811
    const-string/jumbo v2, "last_psm_mode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 688
    .local v0, "fontScale":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, v2, v3

    .line 686
    .local v1, "fontSize":F
    const v2, 0x3f99999a    # 1.2f

    .line 690
    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 686
    const v0, 0x3f99999a    # 1.2f

    .line 693
    :cond_0
    mul-float v2, v1, v0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 685
    return-void
.end method

.method private static setPSMMaxBrightness(Landroid/content/Context;II)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevMode"    # I
    .param p2, "afterMode"    # I

    .prologue
    .line 234
    const-string/jumbo v10, "power"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 236
    .local v7, "pm":Landroid/os/PowerManager;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v10

    float-to-int v2, v10

    .line 238
    .local v2, "curBrightness":I
    int-to-float v10, v2

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v5, v10, v11

    .line 239
    .local v5, "onePercent":F
    if-ne p1, p2, :cond_3

    .line 240
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMbrightness(Landroid/content/Context;)I

    move-result v10

    .line 239
    :goto_0
    add-int/lit8 v10, v10, 0xa

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v8, v11, v10

    .line 241
    .local v8, "prevModeBrightness":F
    if-ne p1, p2, :cond_4

    .line 242
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMbrightness(Landroid/content/Context;)I

    move-result v10

    .line 241
    :goto_1
    add-int/lit8 v9, v10, -0x5a

    .line 244
    .local v9, "prevScale":I
    const-string/jumbo v10, "PSMUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPSMMaxBrightness() prevScale="

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

    .line 245
    int-to-float v10, v2

    int-to-float v11, v9

    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v11, v12

    mul-float/2addr v11, v5

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 246
    .local v6, "orgBrightness":I
    const/16 v10, 0xff

    if-le v6, v10, :cond_0

    const/16 v6, 0xff

    .line 247
    :cond_0
    if-gez v6, :cond_1

    const/4 v6, 0x0

    .line 251
    :cond_1
    invoke-static {p0, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v0

    .line 252
    .local v0, "afterModeBrightness":I
    add-int/lit8 v1, v0, -0x5a

    .line 253
    .local v1, "afterScale":I
    int-to-float v10, v6

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v5, v10, v11

    .line 254
    int-to-float v10, v6

    int-to-float v11, v1

    mul-float/2addr v11, v5

    const/16 v12, 0x64

    div-int/2addr v12, v0

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 255
    .local v3, "newBrightness":I
    const-string/jumbo v10, "PSMUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPSMMaxBrightness() from "

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

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 256
    const-string/jumbo v12, ", orgBrightness="

    .line 255
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {p0}, Lcom/android/settings/Utils;->isBrightnessManualMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 258
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 259
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "screen_brightness"

    invoke-static {v10, v11, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    :goto_2
    invoke-static {p0, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setLastPSMbrightness(Landroid/content/Context;I)V

    .line 233
    return-void

    .line 240
    .end local v0    # "afterModeBrightness":I
    .end local v1    # "afterScale":I
    .end local v3    # "newBrightness":I
    .end local v6    # "orgBrightness":I
    .end local v8    # "prevModeBrightness":F
    .end local v9    # "prevScale":I
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v10

    goto/16 :goto_0

    .line 242
    .restart local v8    # "prevModeBrightness":F
    :cond_4
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v10

    goto/16 :goto_1

    .line 261
    .restart local v0    # "afterModeBrightness":I
    .restart local v1    # "afterScale":I
    .restart local v3    # "newBrightness":I
    .restart local v6    # "orgBrightness":I
    .restart local v9    # "prevScale":I
    :cond_5
    invoke-static {p0, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v4

    .line 262
    .local v4, "newMaxBrightness":I
    const-string/jumbo v10, "PSMUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "auto_brightness_limit: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "auto_brightness_limit"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public static setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "table"    # I
    .param p3, "mode"    # I
    .param p4, "value"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 174
    if-nez p3, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    .line 180
    .local v1, "valueArray":[Ljava/lang/String;
    if-ne p2, v6, :cond_4

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "valueString":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 188
    const-string/jumbo v2, "0, 0"

    .line 190
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 192
    if-ne p3, v6, :cond_5

    .line 193
    aget-object v3, v1, p3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p3

    .line 197
    :cond_2
    :goto_1
    add-int/lit8 v3, p3, -0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 199
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "setValue":Ljava/lang/String;
    const-string/jumbo v3, "PSMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPSMValue(): setValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string/jumbo v3, "PSMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPSMValue(): setValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz v0, :cond_3

    .line 207
    if-ne p2, v6, :cond_6

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    :cond_3
    :goto_2
    return-void

    .line 184
    .end local v0    # "setValue":Ljava/lang/String;
    .end local v2    # "valueString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "valueString":Ljava/lang/String;
    goto :goto_0

    .line 194
    :cond_5
    if-ne p3, v4, :cond_2

    .line 195
    add-int/lit8 v3, p3, -0x2

    add-int/lit8 v4, p3, -0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 211
    .restart local v0    # "setValue":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public static setPowerSavingMode(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;IZ)V

    .line 281
    return-void
.end method

.method public static setPowerSavingMode(Landroid/content/Context;IZ)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "fromExPopup"    # Z

    .prologue
    .line 288
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setLastPSMmode(Landroid/content/Context;I)V

    .line 291
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v0

    .line 292
    .local v0, "currentMode":I
    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMMaxBrightness(Landroid/content/Context;II)V

    .line 295
    const/4 v6, 0x0

    .line 296
    .local v6, "multiResolutionChange":Z
    move v8, p1

    .line 297
    .local v8, "resolution":I
    invoke-static {p0}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v1

    .line 300
    .local v1, "currentResolution":I
    const-string/jumbo v11, ""

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 301
    const-string/jumbo v11, "screen_resolution_state"

    const/4 v12, 0x2

    invoke-static {p0, v11, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v8

    .line 303
    if-eq v1, v8, :cond_0

    .line 304
    const/4 v6, 0x1

    .line 308
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "low_power"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_6

    const/4 v4, 0x1

    .line 309
    .local v4, "lowPowerMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ultra_powersaving_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v9, 0x1

    .line 311
    .local v9, "ultraPowerMode":Z
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 312
    const-string/jumbo v11, "psm_network_power_saving"

    const/4 v12, 0x2

    invoke-static {p0, v11, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v7, 0x1

    .line 313
    .local v7, "npsmchecked":Z
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "low_power_back_data_off"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ultra_power_mode_back_data_off"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v5, "mIntent":Landroid/content/Intent;
    const-string/jumbo v11, "com.sec.NetworkPowerSaving"

    const-string/jumbo v12, "com.sec.NetworkPowerSaving.NetworkPowerSavingService"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    if-eqz v7, :cond_9

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "sm_connectivity_disable"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 320
    const-string/jumbo v11, "PSMUtils"

    const-string/jumbo v12, "NPSM started"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v5    # "mIntent":Landroid/content/Intent;
    .end local v7    # "npsmchecked":Z
    :cond_1
    :goto_3
    if-eqz p1, :cond_2

    const/4 v11, 0x1

    if-ne p1, v11, :cond_f

    .line 329
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "low_power"

    if-nez p1, :cond_a

    const/4 v11, 0x0

    :goto_4
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    const/4 v11, 0x1

    if-ne p1, v11, :cond_4

    if-eqz v4, :cond_3

    if-eqz v9, :cond_4

    .line 331
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "low_power_trigger_level"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    :cond_4
    if-eqz v9, :cond_c

    .line 336
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "enabled"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    const-string/jumbo v11, "flag"

    const/16 v12, 0x200

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string/jumbo v11, "skipdialog"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    const/high16 v11, 0x10000000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 341
    const-string/jumbo v12, "ResolutiON-CHANGE"

    if-eqz v6, :cond_b

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 379
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_6
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->sendSAlogging(Landroid/content/Context;I)V

    .line 285
    return-void

    .line 308
    .end local v4    # "lowPowerMode":Z
    .end local v9    # "ultraPowerMode":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "lowPowerMode":Z
    goto/16 :goto_0

    .line 309
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "ultraPowerMode":Z
    goto/16 :goto_1

    .line 312
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "npsmchecked":Z
    goto/16 :goto_2

    .line 322
    .restart local v5    # "mIntent":Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "sm_connectivity_disable"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    invoke-virtual {p0, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 324
    const-string/jumbo v11, "PSMUtils"

    const-string/jumbo v12, "NPSM stoped"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 329
    .end local v5    # "mIntent":Landroid/content/Intent;
    .end local v7    # "npsmchecked":Z
    :cond_a
    const/4 v11, 0x1

    goto :goto_4

    .line 341
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_b
    const/4 v11, 0x0

    goto :goto_5

    .line 344
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_c
    const-string/jumbo v11, ""

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 345
    if-nez p2, :cond_5

    .line 346
    if-nez p1, :cond_e

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "easy_mode_switch"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_d

    .line 348
    const/4 v11, 0x0

    invoke-static {p0, v1, v11}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    goto :goto_6

    .line 351
    :cond_d
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    .line 352
    .local v10, "windowManager":Landroid/view/IWindowManager;
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/IWindowManager;->clearForcedDisplaySizeDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 353
    .end local v10    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "PSMUtils"

    const-string/jumbo v12, "clearForcedDisplaySizeDensity() for Normal mode has occured exception"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 357
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_e
    if-eqz p1, :cond_5

    if-eqz v6, :cond_5

    .line 358
    const/4 v11, 0x0

    invoke-static {p0, v8, v11}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    goto :goto_6

    .line 363
    :cond_f
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string/jumbo v12, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 365
    const-string/jumbo v11, "com.android.settings"

    const-string/jumbo v12, "UPSO"

    const-string/jumbo v13, "ON"

    invoke-static {p0, v11, v12, v13}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_10
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v11, "enabled"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    const-string/jumbo v11, "flag"

    const/16 v12, 0x200

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    const-string/jumbo v11, "skipdialog"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    const/high16 v11, 0x10000000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    const-string/jumbo v12, "ResolutiON-CHANGE"

    if-eqz v6, :cond_11

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_6

    .line 374
    :cond_11
    const/4 v11, 0x0

    goto :goto_7
.end method

.method public static showTurnOffBoost(Landroid/content/Context;Landroid/app/AlertDialog;ILjava/lang/String;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mAD"    # Landroid/app/AlertDialog;
    .param p2, "mPowerSavingMode"    # I
    .param p3, "fromWhere"    # Ljava/lang/String;

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->showTurnOffBoost(Landroid/content/Context;Landroid/app/AlertDialog;ILjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showTurnOffBoost(Landroid/content/Context;Landroid/app/AlertDialog;ILjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Landroid/app/AlertDialog;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mAD"    # Landroid/app/AlertDialog;
    .param p2, "mPowerSavingMode"    # I
    .param p3, "fromWhere"    # Ljava/lang/String;
    .param p4, "bsm"    # Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    .prologue
    const v6, 0x7f0b0af7

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 728
    if-eqz p1, :cond_0

    .line 729
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 730
    const/4 p1, 0x0

    .line 733
    .end local p1    # "mAD":Landroid/app/AlertDialog;
    :cond_0
    if-ne p2, v4, :cond_1

    .line 734
    const v1, 0x7f0b0ae1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "mode":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 739
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 740
    aput-object v0, v2, v5

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 739
    const v3, 0x7f0b0b04

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 738
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 741
    new-array v2, v4, [Ljava/lang/Object;

    .line 742
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 741
    const v3, 0x7f0b0b03

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 738
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 743
    new-instance v2, Lcom/samsung/android/settings/powersaving/PSMUtils$1;

    invoke-direct {v2, p4, p0, p2, p3}, Lcom/samsung/android/settings/powersaving/PSMUtils$1;-><init>(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Landroid/content/Context;ILjava/lang/String;)V

    const v3, 0x7f0b0b78

    .line 738
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 758
    new-instance v2, Lcom/samsung/android/settings/powersaving/PSMUtils$2;

    invoke-direct {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils$2;-><init>()V

    const/high16 v3, 0x1040000

    .line 738
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 762
    new-instance v2, Lcom/samsung/android/settings/powersaving/PSMUtils$3;

    invoke-direct {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils$3;-><init>()V

    .line 738
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 769
    .restart local p1    # "mAD":Landroid/app/AlertDialog;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 770
    return-object p1

    .line 736
    .end local v0    # "mode":Ljava/lang/String;
    .end local p1    # "mAD":Landroid/app/AlertDialog;
    :cond_1
    const v1, 0x7f0b0ae2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0
.end method

.method public static startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "psmMode"    # I
    .param p2, "fromWhere"    # Ljava/lang/String;

    .prologue
    .line 411
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v6

    .line 413
    .local v6, "batteryNormalTime":I
    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.android.sm.ACTION_POWER_SAVING_ANIMATION"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v18, "viIntent":Landroid/content/Intent;
    const/high16 v19, 0x10000000

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 416
    const-string/jumbo v19, "limit_brightness_state"

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v7

    .line 418
    .local v7, "brightnessStatus":I
    add-int/lit8 v19, v7, -0x50

    div-int/lit8 v19, v19, 0x5

    .line 417
    add-int/lit8 v19, v19, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v19

    sub-int v8, v19, v6

    .line 419
    .local v8, "brightnessTime":I
    const-string/jumbo v19, "key_item_brightness"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 421
    const-string/jumbo v19, ""

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 422
    const-string/jumbo v19, "screen_resolution_state"

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v16

    .line 424
    .local v16, "resolutionStatus":I
    add-int/lit8 v19, v16, 0xc

    .line 423
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v19

    sub-int v17, v19, v6

    .line 425
    .local v17, "resolutionTime":I
    const-string/jumbo v19, "key_item_resolution"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 427
    if-eqz p2, :cond_6

    const-string/jumbo v19, "smartmanager"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 436
    .end local v16    # "resolutionStatus":I
    .end local v17    # "resolutionTime":I
    :cond_0
    :goto_0
    const-string/jumbo v19, "restricted_device_performance"

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v14

    .line 437
    .local v14, "performanceStatus":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_7

    .line 438
    const/16 v19, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v19

    sub-int v15, v19, v6

    .line 439
    .local v15, "performanceTime":I
    :goto_1
    const-string/jumbo v19, "key_item_device_performance"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 441
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 442
    const-string/jumbo v19, "psm_always_on_display_mode"

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    .line 443
    .local v4, "aodStatus":I
    int-to-long v0, v6

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v4, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getChangeBatteryTimeAodMode(Landroid/content/Context;IJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v5, v0

    .line 444
    .local v5, "aodStatusTime":I
    const-string/jumbo v19, "key_item_aod"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 447
    .end local v4    # "aodStatus":I
    .end local v5    # "aodStatusTime":I
    :cond_1
    const/4 v9, 0x0

    .line 448
    .local v9, "dataStatus":I
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 449
    packed-switch p1, :pswitch_data_0

    .line 460
    :goto_2
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_8

    .line 461
    const/16 v19, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v19

    sub-int v10, v19, v6

    .line 463
    .local v10, "dataStatusTime":I
    :goto_3
    const-string/jumbo v19, "key_item_bg_network"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 474
    .end local v10    # "dataStatusTime":I
    :cond_2
    :goto_4
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    if-nez p1, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 475
    :cond_3
    const/4 v12, 0x0

    .line 476
    .local v12, "locationStatus":I
    if-nez p1, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 477
    const/4 v12, 0x1

    .line 479
    :cond_4
    const-string/jumbo v19, "key_item_location"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 483
    .end local v12    # "locationStatus":I
    :cond_5
    const-string/jumbo v19, "key_current_battery"

    new-instance v20, Lcom/samsung/android/settings/powersaving/BatteryWorker;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/powersaving/BatteryWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/powersaving/BatteryWorker;->getBatteryLevel()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    const-string/jumbo v19, "key_next_psm_mode"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    const-string/jumbo v20, "key_init_battery_time"

    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v19

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    const-string/jumbo v19, "key_extended_battery_time_delta"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v20

    sub-int v20, v20, v6

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string/jumbo v19, "key_button_type"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 488
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v13

    .line 490
    .local v13, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 409
    return-void

    .line 428
    .end local v9    # "dataStatus":I
    .end local v13    # "options":Landroid/app/ActivityOptions;
    .end local v14    # "performanceStatus":I
    .end local v15    # "performanceTime":I
    .restart local v16    # "resolutionStatus":I
    .restart local v17    # "resolutionTime":I
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 429
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v19, "android.intent.category.HOME"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const/high16 v19, 0x10200000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 432
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 438
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "resolutionStatus":I
    .end local v17    # "resolutionTime":I
    .restart local v14    # "performanceStatus":I
    :cond_7
    const/4 v15, 0x0

    .restart local v15    # "performanceTime":I
    goto/16 :goto_1

    .line 451
    .restart local v9    # "dataStatus":I
    :pswitch_0
    const/4 v9, 0x0

    .line 452
    goto/16 :goto_2

    .line 454
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "low_power_back_data_off"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_2

    .line 457
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "ultra_power_mode_back_data_off"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_2

    .line 461
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "dataStatusTime":I
    goto/16 :goto_3

    .line 465
    .end local v10    # "dataStatusTime":I
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 466
    const-string/jumbo v19, "psm_network_power_saving"

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v9

    .line 467
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_a

    .line 468
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v20

    sub-int v10, v19, v20

    .line 470
    .restart local v10    # "dataStatusTime":I
    :goto_6
    const-string/jumbo v19, "key_item_restrict_network"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 468
    .end local v10    # "dataStatusTime":I
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "dataStatusTime":I
    goto :goto_6

    .line 485
    .end local v10    # "dataStatusTime":I
    :cond_b
    const/16 v19, 0x1

    goto/16 :goto_5

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static startPSMDialogActivity(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 382
    return-void
.end method

.method public static startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "fromWhere"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 387
    if-eqz p1, :cond_1

    .line 388
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string/jumbo v1, "battery_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    if-eqz p2, :cond_0

    .line 392
    const-string/jumbo v1, "fromWhere"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 386
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-static {p0, v1, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 397
    invoke-static {p0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;I)V

    goto :goto_0
.end method
