.class public final Lcom/samsung/android/settings/powersaving/PSMUtils;
.super Ljava/lang/Object;
.source "PSMUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
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
    .line 677
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 680
    .local v8, "res":Landroid/content/res/Resources;
    const/4 v10, 0x1

    if-ge p1, v10, :cond_0

    .line 681
    new-instance v9, Landroid/text/SpannableString;

    const-string/jumbo v10, "0"

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v9, "s":Landroid/text/SpannableString;
    return-object v9

    .line 683
    .end local v9    # "s":Landroid/text/SpannableString;
    :cond_0
    div-int/lit8 v4, p1, 0x3c

    .line 684
    .local v4, "hour":I
    rem-int/lit8 v7, p1, 0x3c

    .line 687
    .local v7, "mins":I
    if-lez v4, :cond_6

    if-gtz v7, :cond_6

    .line 688
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b0c72

    invoke-virtual {v8, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 695
    .local v3, "formatted":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2}, Ljava/text/DecimalFormat;-><init>()V

    .line 696
    .local v2, "df":Ljava/text/DecimalFormat;
    const/4 v5, -0x1

    .local v5, "hourIndex":I
    const/4 v6, -0x1

    .line 697
    .local v6, "minIndex":I
    if-lez v4, :cond_1

    .line 698
    int-to-long v10, v4

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 699
    :cond_1
    if-lez v7, :cond_2

    .line 700
    int-to-long v10, v7

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 701
    :cond_2
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 702
    .restart local v9    # "s":Landroid/text/SpannableString;
    const/4 v10, -0x1

    move/from16 v0, p4

    if-eq v0, v10, :cond_3

    .line 703
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 704
    const/4 v12, 0x0

    .line 703
    move/from16 v0, p4

    invoke-virtual {v11, v0, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 704
    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x21

    .line 703
    invoke-virtual {v9, v10, v12, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 706
    :cond_3
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 707
    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x21

    .line 706
    invoke-virtual {v9, v10, v12, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 709
    const/4 v10, -0x1

    if-eq v5, v10, :cond_4

    .line 711
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 713
    int-to-long v12, v4

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v5

    .line 714
    const/16 v12, 0x21

    .line 710
    invoke-virtual {v9, v10, v5, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 717
    :cond_4
    const/4 v10, -0x1

    if-eq v6, v10, :cond_5

    .line 718
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 720
    int-to-long v12, v7

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v6

    .line 721
    const/16 v12, 0x21

    .line 718
    invoke-virtual {v9, v10, v6, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 725
    :cond_5
    return-object v9

    .line 689
    .end local v2    # "df":Ljava/text/DecimalFormat;
    .end local v3    # "formatted":Ljava/lang/String;
    .end local v5    # "hourIndex":I
    .end local v6    # "minIndex":I
    .end local v9    # "s":Landroid/text/SpannableString;
    :cond_6
    if-gtz v4, :cond_7

    .line 690
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b0c73

    invoke-virtual {v8, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "formatted":Ljava/lang/String;
    goto/16 :goto_0

    .line 692
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

    const v11, 0x7f0b0c74

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
    .line 600
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
    .line 614
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 625
    .local v1, "remainingTime":I
    :cond_0
    :goto_0
    add-int v2, v1, p3

    return v2

    .line 615
    .end local v1    # "remainingTime":I
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    mul-int/lit16 v2, p2, 0x4b0

    div-int/lit8 v1, v2, 0x64

    .line 617
    .restart local v1    # "remainingTime":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 618
    mul-int/lit8 v2, v1, 0x8

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    goto :goto_0

    .line 619
    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 620
    mul-int/lit8 v2, v1, 0xa

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    goto :goto_0

    .line 621
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 622
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
    .line 593
    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    .line 594
    .local v0, "cfmsService":Landroid/os/CustomFrequencyManager;
    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v1

    .line 595
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

    .line 596
    return v1
.end method

.method public static getChangeBatteryTimeAodMode(Landroid/content/Context;IJ)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aodStatus"    # I
    .param p2, "batteryNormalTime"    # J

    .prologue
    .line 429
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

.method public static getColorStateByLevel(I)I
    .locals 2
    .param p0, "score"    # I

    .prologue
    .line 897
    const/4 v1, 0x5

    if-ge p0, v1, :cond_0

    .line 898
    const/4 v0, 0x3

    .line 903
    .local v0, "state":I
    :goto_0
    return v0

    .line 899
    .end local v0    # "state":I
    :cond_0
    const/16 v1, 0xf

    if-ge p0, v1, :cond_1

    .line 900
    const/4 v0, 0x2

    .restart local v0    # "state":I
    goto :goto_0

    .line 902
    .end local v0    # "state":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "state":I
    goto :goto_0
.end method

.method public static getCurrentPowerSavingMode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 229
    .local v0, "lowPowerMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 231
    .local v2, "ultraPowerMode":Z
    :cond_0
    if-eqz v2, :cond_2

    .line 232
    const/4 v1, 0x2

    .line 240
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

    .line 241
    return v1

    .line 228
    .end local v0    # "lowPowerMode":Z
    .end local v1    # "mode":I
    .end local v2    # "ultraPowerMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "lowPowerMode":Z
    goto :goto_0

    .line 234
    .restart local v2    # "ultraPowerMode":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 235
    const/4 v1, 0x1

    .restart local v1    # "mode":I
    goto :goto_1

    .line 237
    .end local v1    # "mode":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "mode":I
    goto :goto_1
.end method

.method public static getDisplayPxSize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 978
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 980
    .local v0, "default_size":Landroid/graphics/Point;
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 981
    .local v2, "windowManager":Landroid/view/IWindowManager;
    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    return-object v0

    .line 982
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .line 983
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PSMUtils"

    const-string/jumbo v4, "getDisplayPxSize() exception!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getFloatFromDimension(Landroid/content/Context;I)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 745
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 746
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 747
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method public static getLastPSMbrightness(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 889
    const-string/jumbo v2, "last_psm_brightness_value"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 890
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "last_psm_brightness_value"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 891
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

    .line 892
    return v0
.end method

.method public static getLastPSMmode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 864
    const-string/jumbo v2, "last_psm_mode"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 865
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "last_psm_mode"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 866
    .local v0, "lastMode":I
    const-string/jumbo v2, "PSMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLastPSMmode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 868
    const/4 v0, 0x1

    .line 869
    const-string/jumbo v2, "PSMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLastPSMmode (Changed): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 873
    const-string/jumbo v2, "PSMUtils"

    const-string/jumbo v3, "getLastPSMmode(), MaxPSM is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v0, 0x1

    .line 876
    :cond_1
    return v0
.end method

.method public static getPSMMaxBrightnessValue(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    const/16 v0, 0x5a

    .line 295
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

    .line 296
    return v0

    .line 293
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
    .line 110
    if-nez p3, :cond_e

    .line 111
    const-string/jumbo v12, "limit_brightness_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 112
    const/16 v12, 0x5a

    return v12

    .line 113
    :cond_0
    const-string/jumbo v12, "screen_resolution_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 114
    const/4 v2, 0x1

    .line 115
    .local v2, "currentResolution":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "default_display_size_forced"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "sizeStr":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string/jumbo v12, ""

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 131
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getDisplayPxSize()Landroid/graphics/Point;

    move-result-object v4

    .line 132
    .local v4, "point":Landroid/graphics/Point;
    if-nez v4, :cond_6

    .line 133
    return v2

    .line 118
    .end local v4    # "point":Landroid/graphics/Point;
    :cond_2
    const-string/jumbo v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "sizeArray":[Ljava/lang/String;
    if-eqz v5, :cond_3

    array-length v12, v5

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 121
    .local v11, "width":I
    :goto_0
    const-string/jumbo v12, "PSMUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getCurrentResolution: width = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/16 v12, 0x5a0

    if-lt v11, v12, :cond_4

    .line 124
    const/4 v2, 0x2

    .line 143
    .end local v5    # "sizeArray":[Ljava/lang/String;
    .end local v11    # "width":I
    :goto_1
    return v2

    .line 120
    .restart local v5    # "sizeArray":[Ljava/lang/String;
    :cond_3
    const/16 v11, 0x438

    .restart local v11    # "width":I
    goto :goto_0

    .line 125
    :cond_4
    const/16 v12, 0x2d0

    if-le v11, v12, :cond_5

    const/16 v12, 0x438

    if-gt v11, v12, :cond_5

    .line 126
    const/4 v2, 0x1

    .line 125
    goto :goto_1

    .line 128
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 135
    .end local v5    # "sizeArray":[Ljava/lang/String;
    .end local v11    # "width":I
    .restart local v4    # "point":Landroid/graphics/Point;
    :cond_6
    iget v12, v4, Landroid/graphics/Point;->x:I

    const/16 v13, 0x5a0

    if-lt v12, v13, :cond_7

    .line 136
    const/4 v2, 0x2

    goto :goto_1

    .line 137
    :cond_7
    iget v12, v4, Landroid/graphics/Point;->x:I

    const/16 v13, 0x2d0

    if-le v12, v13, :cond_8

    iget v12, v4, Landroid/graphics/Point;->x:I

    const/16 v13, 0x438

    if-gt v12, v13, :cond_8

    .line 138
    const/4 v2, 0x1

    .line 137
    goto :goto_1

    .line 140
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 144
    .end local v2    # "currentResolution":I
    .end local v4    # "point":Landroid/graphics/Point;
    .end local v6    # "sizeStr":Ljava/lang/String;
    :cond_9
    const-string/jumbo v12, "restricted_device_performance"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 145
    const/4 v12, 0x0

    return v12

    .line 146
    :cond_a
    const-string/jumbo v12, "psm_network_power_saving"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 147
    const/4 v12, 0x0

    return v12

    .line 148
    :cond_b
    const-string/jumbo v12, "psm_always_on_display_mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 149
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v12

    const-string/jumbo v13, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "configAodItem":Ljava/lang/String;
    const-string/jumbo v12, "psm=graceux"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 152
    .local v3, "mIsPSMcheckingAodMode":Z
    if-eqz v3, :cond_c

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "aod_mode"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    return v12

    .line 155
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "aod_mode_before_psm"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    return v12

    .line 158
    .end local v1    # "configAodItem":Ljava/lang/String;
    .end local v3    # "mIsPSMcheckingAodMode":Z
    :cond_d
    const/4 v12, -0x1

    return v12

    .line 162
    :cond_e
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

    .line 164
    const/4 v7, -0x1

    .line 166
    .local v7, "value":I
    const/4 v12, 0x2

    new-array v8, v12, [Ljava/lang/String;

    .line 167
    .local v8, "valueArray":[Ljava/lang/String;
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_10

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "valueString":Ljava/lang/String;
    :goto_2
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_f

    .line 174
    const-string/jumbo v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 175
    add-int/lit8 v12, p3, -0x1

    aget-object v12, v8, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, "valueStr":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 178
    .end local v9    # "valueStr":Ljava/lang/String;
    :cond_f
    :goto_3
    const-string/jumbo v12, "PSMUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPSMValue(): value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v7

    .line 170
    .end local v10    # "valueString":Ljava/lang/String;
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "valueString":Ljava/lang/String;
    goto :goto_2

    .line 176
    .restart local v9    # "valueStr":Ljava/lang/String;
    :cond_11
    const/4 v7, -0x1

    goto :goto_3
.end method

.method public static getTimeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutes"    # I

    .prologue
    .line 629
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
    const v6, 0x7f0b0c72

    const v9, 0x7f0b0c73

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 634
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

    .line 635
    div-int/lit8 v1, p1, 0x3c

    .line 636
    .local v1, "hour":I
    rem-int/lit8 v2, p1, 0x3c

    .line 638
    .local v2, "minute":I
    if-nez v1, :cond_0

    if-lez v2, :cond_0

    .line 639
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "contentDesc":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 640
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_0
    if-lez v1, :cond_1

    if-nez v2, :cond_1

    .line 641
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

    .line 642
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_1
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 643
    if-eqz p2, :cond_2

    .line 644
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

    .line 645
    const-string/jumbo v4, "\n"

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 646
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

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto :goto_0

    .line 648
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b0c74

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 649
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 648
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentDesc":Ljava/lang/String;
    goto :goto_0

    .line 650
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 651
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

    .line 654
    .end local v0    # "contentDesc":Ljava/lang/String;
    :cond_4
    const v3, 0x7f0b025d

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

    .line 661
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

    .line 663
    if-gez p1, :cond_0

    .line 664
    new-array v1, v5, [Ljava/lang/Object;

    .line 665
    mul-int/lit8 v2, p1, -0x1

    invoke-static {p0, v2, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 664
    const v2, 0x7f0b0c93

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 667
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    .line 668
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 667
    const v2, 0x7f0b0c92

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isAODServiceEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 433
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

    .line 740
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 741
    const-string/jumbo v3, "show_button_background"

    .line 740
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isCMCCupsm(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 992
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 995
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isChangedValue(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/16 v2, 0x50

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "result":Z
    if-ne p1, v3, :cond_5

    .line 531
    const-string/jumbo v1, "limit_brightness_state"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 532
    const-string/jumbo v1, "WQHD,FHD,HD"

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 533
    const-string/jumbo v1, "screen_resolution_state"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 538
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 549
    :cond_1
    :goto_1
    return v0

    .line 534
    :cond_2
    const-string/jumbo v1, "restricted_device_performance"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 535
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "psm_network_power_saving"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 537
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "psm_always_on_display_mode"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 536
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power_back_data_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 540
    :cond_5
    const-string/jumbo v1, "limit_brightness_state"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 541
    const-string/jumbo v1, "WQHD,FHD,HD"

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 542
    const-string/jumbo v1, "screen_resolution_state"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_7

    .line 547
    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 543
    :cond_7
    const-string/jumbo v1, "restricted_device_performance"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 544
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "psm_network_power_saving"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 546
    :cond_8
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "psm_always_on_display_mode"

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v3, :cond_1

    goto :goto_2

    .line 545
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

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "shared_device_status"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 556
    .local v2, "sd_status":I
    if-eq v2, v4, :cond_0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 557
    :cond_0
    return v4

    .line 560
    :cond_1
    const/4 v3, 0x0

    .line 561
    .local v3, "ucmKeyGuardEnabled":Z
    const-string/jumbo v5, "persist.keyguard.ucs"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "propertyValue":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 563
    return v4

    .line 566
    :cond_2
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 568
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isVideoCallActive(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v5

    if-nez v5, :cond_3

    .line 569
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_4

    .line 568
    :cond_3
    :goto_0
    return v4

    .line 569
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isVoLTECall(Landroid/content/Context;)Z

    move-result v5

    .line 568
    if-nez v5, :cond_3

    .line 570
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    goto :goto_0
.end method

.method public static isHebrewLanguage()Z
    .locals 3

    .prologue
    .line 838
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 839
    .local v1, "locale":Ljava/util/Locale;
    if-nez v1, :cond_0

    .line 840
    const/4 v2, 0x0

    return v2

    .line 843
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 844
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

    .line 759
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 760
    const-string/jumbo v1, "com.sec.EnhancedDataManagement"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.sec.NetworkPowerSaving"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 759
    if-eqz v1, :cond_1

    .line 761
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 759
    :cond_1
    return v0
.end method

.method public static isPowerSavingModeAllowed(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 817
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 818
    .local v1, "edmUri":Landroid/net/Uri;
    const/4 v8, 0x1

    .line 819
    .local v8, "isPowerSavingModeAllowed":Z
    const-string/jumbo v3, "isPowerSavingModeAllowed"

    .line 820
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "false"

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 821
    .local v4, "selectionArgsFalse":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 822
    .local v7, "edmCr":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 824
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 826
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

    .line 830
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 833
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

    .line 834
    return v8

    .line 826
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 827
    :catch_0
    move-exception v6

    .line 828
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

    .line 830
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 829
    .end local v6    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    .line 830
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 829
    throw v0
.end method

.method public static isRestrictBackDataEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 751
    const/4 v0, 0x1

    .line 752
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

    .line 755
    :cond_0
    :goto_0
    return v0

    .line 753
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVideoCallActive(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 574
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 576
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 577
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

    .line 578
    return-object v1

    .line 579
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method public static isVoLTECall(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 586
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 587
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v2, "volte"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    .line 588
    .local v0, "result":Z
    const-string/jumbo v2, "PSMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVoLTECall() returns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return v0
.end method

.method private static sendSAlogging(Landroid/content/Context;I)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v9, 0x1

    .line 912
    if-nez p1, :cond_0

    .line 913
    return-void

    .line 915
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v10

    add-int/lit8 v10, v10, -0x5a

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, "brightnessValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 917
    .local v6, "resolutionValue":Ljava/lang/String;
    const-string/jumbo v10, "WQHD,FHD,HD"

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 918
    const-string/jumbo v10, "screen_resolution_state"

    invoke-static {p0, v10, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v5

    .line 919
    .local v5, "resolution":I
    if-ne v5, v12, :cond_6

    .line 920
    const-string/jumbo v6, "WQ"

    .line 927
    .end local v5    # "resolution":I
    .end local v6    # "resolutionValue":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v0, v2

    .line 928
    .local v0, "LoggingString":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 929
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

    .line 931
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_sp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 932
    const-string/jumbo v11, "restricted_device_performance"

    invoke-static {p0, v11, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    .line 931
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 934
    const/4 v3, -0x1

    .line 935
    .local v3, "dataStatus":I
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 936
    packed-switch p1, :pswitch_data_0

    .line 945
    :goto_1
    if-nez v3, :cond_8

    const/4 v3, 0x1

    .line 951
    :cond_3
    :goto_2
    const/4 v10, -0x1

    if-eq v3, v10, :cond_4

    .line 952
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

    .line 955
    :cond_4
    const-string/jumbo v10, "psm_always_on_display_mode"

    invoke-static {p0, v10, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    .line 956
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

    .line 958
    if-ne p1, v9, :cond_a

    .line 959
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MID_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 964
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

    .line 966
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 967
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "key"

    const-string/jumbo v9, "powerSavingMode"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string/jumbo v8, "value"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "content://com.samsung.android.sm/Logging"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :goto_4
    return-void

    .line 921
    .end local v0    # "LoggingString":Ljava/lang/String;
    .end local v1    # "aodStatus":I
    .end local v3    # "dataStatus":I
    .end local v7    # "values":Landroid/content/ContentValues;
    .restart local v5    # "resolution":I
    .restart local v6    # "resolutionValue":Ljava/lang/String;
    :cond_6
    if-ne v5, v9, :cond_7

    .line 922
    const-string/jumbo v6, "FH"

    .local v6, "resolutionValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 924
    .local v6, "resolutionValue":Ljava/lang/String;
    :cond_7
    const-string/jumbo v6, "HD"

    .local v6, "resolutionValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 938
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

    .line 941
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "ultra_power_mode_back_data_off"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_1

    .line 945
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 947
    :cond_9
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 948
    const-string/jumbo v10, "psm_network_power_saving"

    invoke-static {p0, v10, v12, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    goto/16 :goto_2

    .line 961
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

    .line 971
    .restart local v7    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 972
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "PSMUtils"

    const-string/jumbo v9, "setPerformanceMode() has occured IllegalArgumentException with SMLogging"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 936
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
    .line 881
    const-string/jumbo v2, "last_psm_brightness_value"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 882
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 883
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "last_psm_brightness_value"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 884
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 879
    return-void
.end method

.method private static setLastPSMmode(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 849
    const-string/jumbo v3, "last_psm_mode"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 850
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 851
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x1

    .line 852
    .local v1, "lastMode":I
    if-nez p1, :cond_1

    .line 853
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    .line 857
    :cond_0
    :goto_0
    const-string/jumbo v3, "PSMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLastPSMmode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string/jumbo v3, "last_psm_mode"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 859
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 847
    return-void

    .line 854
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 855
    move v1, p1

    goto :goto_0
.end method

.method public static setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 730
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 731
    .local v0, "fontScale":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, v2, v3

    .line 729
    .local v1, "fontSize":F
    const v2, 0x3f99999a    # 1.2f

    .line 733
    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 729
    const v0, 0x3f99999a    # 1.2f

    .line 736
    :cond_0
    mul-float v2, v1, v0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 728
    return-void
.end method

.method private static setPSMMaxBrightness(Landroid/content/Context;II)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevMode"    # I
    .param p2, "afterMode"    # I

    .prologue
    .line 245
    invoke-static {p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isCMCCupsm(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    const-string/jumbo v10, "power"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 250
    .local v7, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "screen_brightness"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 252
    .local v2, "curBrightness":I
    int-to-float v10, v2

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v5, v10, v11

    .line 253
    .local v5, "onePercent":F
    if-ne p1, p2, :cond_5

    .line 254
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMbrightness(Landroid/content/Context;)I

    move-result v10

    .line 253
    :goto_0
    add-int/lit8 v10, v10, 0xa

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v8, v11, v10

    .line 255
    .local v8, "prevModeBrightness":F
    if-ne p1, p2, :cond_6

    .line 256
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMbrightness(Landroid/content/Context;)I

    move-result v10

    .line 255
    :goto_1
    add-int/lit8 v9, v10, -0x5a

    .line 258
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

    .line 259
    int-to-float v10, v2

    int-to-float v11, v9

    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v11, v12

    mul-float/2addr v11, v5

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 260
    .local v6, "orgBrightness":I
    const/16 v10, 0xff

    if-le v6, v10, :cond_1

    const/16 v6, 0xff

    .line 261
    :cond_1
    if-gez v6, :cond_2

    const/4 v6, 0x0

    .line 265
    :cond_2
    invoke-static {p0, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v0

    .line 266
    .local v0, "afterModeBrightness":I
    add-int/lit8 v1, v0, -0x5a

    .line 267
    .local v1, "afterScale":I
    int-to-float v10, v6

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v5, v10, v11

    .line 268
    int-to-float v10, v6

    int-to-float v11, v1

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 269
    .local v4, "newBrightness":I
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

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 270
    const-string/jumbo v12, ", orgBrightness="

    .line 269
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {p0}, Lcom/android/settings/Utils;->isBrightnessManualMode(Landroid/content/Context;)Z

    move-result v3

    .line 273
    .local v3, "isManualMode":Z
    const-string/jumbo v10, "PSMUtils"

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

    .line 275
    if-eqz v3, :cond_4

    .line 276
    if-gez v4, :cond_3

    const/4 v4, 0x0

    .line 277
    :cond_3
    const-string/jumbo v10, "PSMUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPSMMaxBrightness() screen_brightness: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "screen_brightness"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    :cond_4
    const-string/jumbo v10, "PSMUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPSMMaxBrightness() auto_brightness_limit: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "auto_brightness_limit"

    invoke-static {v10, v11, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    invoke-static {p0, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setLastPSMbrightness(Landroid/content/Context;I)V

    .line 244
    return-void

    .line 254
    .end local v0    # "afterModeBrightness":I
    .end local v1    # "afterScale":I
    .end local v3    # "isManualMode":Z
    .end local v4    # "newBrightness":I
    .end local v6    # "orgBrightness":I
    .end local v8    # "prevModeBrightness":F
    .end local v9    # "prevScale":I
    :cond_5
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v10

    goto/16 :goto_0

    .line 256
    .restart local v8    # "prevModeBrightness":F
    :cond_6
    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v10

    goto/16 :goto_1
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

    .line 185
    if-nez p3, :cond_0

    .line 186
    return-void

    .line 189
    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    .line 191
    .local v1, "valueArray":[Ljava/lang/String;
    if-ne p2, v6, :cond_4

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "valueString":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 199
    const-string/jumbo v2, "0, 0"

    .line 201
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 203
    if-ne p3, v6, :cond_5

    .line 204
    aget-object v3, v1, p3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p3

    .line 208
    :cond_2
    :goto_1
    add-int/lit8 v3, p3, -0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 210
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
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

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 215
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

    .line 217
    if-eqz v0, :cond_3

    .line 218
    if-ne p2, v6, :cond_6

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    :cond_3
    :goto_2
    return-void

    .line 195
    .end local v0    # "setValue":Ljava/lang/String;
    .end local v2    # "valueString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "valueString":Ljava/lang/String;
    goto :goto_0

    .line 205
    :cond_5
    if-ne p3, v4, :cond_2

    .line 206
    add-int/lit8 v3, p3, -0x2

    add-int/lit8 v4, p3, -0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 222
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
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;IZ)V

    .line 299
    return-void
.end method

.method public static setPowerSavingMode(Landroid/content/Context;IZ)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "fromExPopup"    # Z

    .prologue
    .line 306
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setLastPSMmode(Landroid/content/Context;I)V

    .line 309
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v3

    .line 310
    .local v3, "currentMode":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v3, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMMaxBrightness(Landroid/content/Context;II)V

    .line 313
    const/4 v9, 0x0

    .line 314
    .local v9, "multiResolutionChange":Z
    move/from16 v11, p1

    .line 315
    .local v11, "resolution":I
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v4

    .line 318
    .local v4, "currentResolution":I
    const-string/jumbo v14, "WQHD,FHD,HD"

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 319
    const-string/jumbo v14, "screen_resolution_state"

    const/4 v15, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v14, v15, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    .line 321
    if-eq v4, v11, :cond_0

    .line 322
    const/4 v9, 0x1

    .line 326
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "low_power"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_6

    const/4 v7, 0x1

    .line 327
    .local v7, "lowPowerMode":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "ultra_powersaving_mode"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_7

    const/4 v12, 0x1

    .line 329
    .local v12, "ultraPowerMode":Z
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 330
    const-string/jumbo v14, "psm_network_power_saving"

    const/4 v15, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v14, v15, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v14

    if-eqz v14, :cond_8

    const/4 v10, 0x1

    .line 331
    .local v10, "npsmchecked":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "low_power_back_data_off"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "ultra_power_mode_back_data_off"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 334
    .local v8, "mIntent":Landroid/content/Intent;
    const-string/jumbo v14, "com.sec.NetworkPowerSaving"

    const-string/jumbo v15, "com.sec.NetworkPowerSaving.NetworkPowerSavingService"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    if-eqz v10, :cond_9

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "sm_connectivity_disable"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 338
    const-string/jumbo v14, "PSMUtils"

    const-string/jumbo v15, "NPSM started"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v8    # "mIntent":Landroid/content/Intent;
    .end local v10    # "npsmchecked":Z
    :cond_1
    :goto_3
    if-eqz p1, :cond_2

    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_f

    .line 347
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "low_power"

    if-nez p1, :cond_a

    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_4

    if-eqz v7, :cond_3

    if-eqz v12, :cond_4

    .line 349
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "low_power_trigger_level"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    :cond_4
    if-eqz v12, :cond_c

    .line 354
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v14, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v14, "enabled"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    const-string/jumbo v14, "flag"

    const/16 v15, 0x200

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string/jumbo v14, "skipdialog"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    const/high16 v14, 0x10000000

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 359
    const-string/jumbo v15, "ResolutiON-CHANGE"

    if-eqz v9, :cond_b

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v6, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    sget-object v14, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 397
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_6
    const-string/jumbo v14, "psm_always_on_display_mode"

    const/4 v15, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v14, v15, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    .line 398
    .local v2, "aodStatus":I
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v14, "com.samsung.android.app.aodservice.PSM_APPLY"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v14, "isPSM"

    move/from16 v0, p1

    invoke-virtual {v6, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    const-string/jumbo v14, "isAODEnable"

    invoke-virtual {v6, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string/jumbo v14, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 402
    const-string/jumbo v14, "PSMUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Send broadcast for AOD. ExtraValue - isAODEnable:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isPSM:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->sendSAlogging(Landroid/content/Context;I)V

    .line 303
    return-void

    .line 326
    .end local v2    # "aodStatus":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "lowPowerMode":Z
    .end local v12    # "ultraPowerMode":Z
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "lowPowerMode":Z
    goto/16 :goto_0

    .line 327
    :cond_7
    const/4 v12, 0x0

    .restart local v12    # "ultraPowerMode":Z
    goto/16 :goto_1

    .line 330
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "npsmchecked":Z
    goto/16 :goto_2

    .line 340
    .restart local v8    # "mIntent":Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "sm_connectivity_disable"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 342
    const-string/jumbo v14, "PSMUtils"

    const-string/jumbo v15, "NPSM stoped"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 347
    .end local v8    # "mIntent":Landroid/content/Intent;
    .end local v10    # "npsmchecked":Z
    :cond_a
    const/4 v14, 0x1

    goto/16 :goto_4

    .line 359
    .restart local v6    # "intent":Landroid/content/Intent;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 362
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_c
    const-string/jumbo v14, "WQHD,FHD,HD"

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 363
    if-nez p2, :cond_5

    .line 364
    if-nez p1, :cond_e

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "easy_mode_switch"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_d

    .line 366
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v14}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    goto/16 :goto_6

    .line 369
    :cond_d
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v13

    .line 370
    .local v13, "windowManager":Landroid/view/IWindowManager;
    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/view/IWindowManager;->clearForcedDisplaySizeDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 371
    .end local v13    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v5

    .line 372
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "PSMUtils"

    const-string/jumbo v15, "clearForcedDisplaySizeDensity() for Normal mode has occured exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 375
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_e
    if-eqz p1, :cond_5

    if-eqz v9, :cond_5

    .line 376
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v14}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    goto/16 :goto_6

    .line 381
    :cond_f
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    const-string/jumbo v15, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 383
    const-string/jumbo v14, "com.android.settings"

    const-string/jumbo v15, "UPSO"

    const-string/jumbo v16, "ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_10
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v14, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v14, "enabled"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    const-string/jumbo v14, "flag"

    const/16 v15, 0x200

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string/jumbo v14, "skipdialog"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    const/high16 v14, 0x10000000

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    const-string/jumbo v15, "ResolutiON-CHANGE"

    if-eqz v9, :cond_11

    const/4 v14, 0x1

    :goto_7
    invoke-virtual {v6, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    sget-object v14, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_6

    .line 392
    :cond_11
    const/4 v14, 0x0

    goto :goto_7
.end method

.method public static showTurnOffBoost(Landroid/content/Context;Landroid/app/AlertDialog;ILjava/lang/String;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mAD"    # Landroid/app/AlertDialog;
    .param p2, "mPowerSavingMode"    # I
    .param p3, "fromWhere"    # Ljava/lang/String;

    .prologue
    .line 766
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
    const v6, 0x7f0b0cba

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 771
    if-eqz p1, :cond_0

    .line 772
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 773
    const/4 p1, 0x0

    .line 776
    .end local p1    # "mAD":Landroid/app/AlertDialog;
    :cond_0
    if-ne p2, v4, :cond_1

    .line 777
    const v1, 0x7f0b0ca3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "mode":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 782
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 783
    aput-object v0, v2, v5

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 782
    const v3, 0x7f0b0cc7

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 784
    new-array v2, v4, [Ljava/lang/Object;

    .line 785
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 784
    const v3, 0x7f0b0cc6

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 786
    new-instance v2, Lcom/samsung/android/settings/powersaving/PSMUtils$1;

    invoke-direct {v2, p4, p0, p2, p3}, Lcom/samsung/android/settings/powersaving/PSMUtils$1;-><init>(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Landroid/content/Context;ILjava/lang/String;)V

    const v3, 0x7f0b0d43

    .line 781
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 801
    new-instance v2, Lcom/samsung/android/settings/powersaving/PSMUtils$2;

    invoke-direct {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils$2;-><init>()V

    const/high16 v3, 0x1040000

    .line 781
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 805
    new-instance v2, Lcom/samsung/android/settings/powersaving/PSMUtils$3;

    invoke-direct {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils$3;-><init>()V

    .line 781
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 812
    .restart local p1    # "mAD":Landroid/app/AlertDialog;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 813
    return-object p1

    .line 779
    .end local v0    # "mode":Ljava/lang/String;
    .end local p1    # "mAD":Landroid/app/AlertDialog;
    :cond_1
    const v1, 0x7f0b0ca4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0
.end method

.method public static startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "psmMode"    # I
    .param p2, "fromWhere"    # Ljava/lang/String;

    .prologue
    .line 438
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v6

    .line 440
    .local v6, "batteryNormalTime":I
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v20, "com.samsung.android.sm.ACTION_POWER_SAVING_ANIMATION"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v19, "viIntent":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 443
    const-string/jumbo v20, "limit_brightness_state"

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v7

    .line 445
    .local v7, "brightnessStatus":I
    add-int/lit8 v20, v7, -0x50

    div-int/lit8 v20, v20, 0x5

    .line 444
    add-int/lit8 v20, v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v20

    sub-int v8, v20, v6

    .line 446
    .local v8, "brightnessTime":I
    const-string/jumbo v20, "key_item_brightness"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 448
    const-string/jumbo v20, "WQHD,FHD,HD"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 449
    const-string/jumbo v20, "screen_resolution_state"

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v16

    .line 451
    .local v16, "resolutionStatus":I
    add-int/lit8 v20, v16, 0xc

    .line 450
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v20

    sub-int v17, v20, v6

    .line 452
    .local v17, "resolutionTime":I
    const-string/jumbo v20, "key_item_resolution"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 454
    if-eqz p2, :cond_6

    const-string/jumbo v20, "smartmanager"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 471
    .end local v16    # "resolutionStatus":I
    .end local v17    # "resolutionTime":I
    :cond_0
    :goto_0
    const-string/jumbo v20, "restricted_device_performance"

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v14

    .line 472
    .local v14, "performanceStatus":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_8

    .line 473
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v20

    sub-int v15, v20, v6

    .line 474
    .local v15, "performanceTime":I
    :goto_1
    const-string/jumbo v20, "key_item_device_performance"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 476
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 477
    const-string/jumbo v20, "psm_always_on_display_mode"

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    .line 478
    .local v4, "aodStatus":I
    int-to-long v0, v6

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v4, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getChangeBatteryTimeAodMode(Landroid/content/Context;IJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v5, v0

    .line 479
    .local v5, "aodStatusTime":I
    const-string/jumbo v20, "key_item_aod"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 482
    .end local v4    # "aodStatus":I
    .end local v5    # "aodStatusTime":I
    :cond_1
    const/4 v9, 0x0

    .line 483
    .local v9, "dataStatus":I
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 484
    packed-switch p1, :pswitch_data_0

    .line 495
    :goto_2
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_9

    .line 496
    const/16 v20, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v20

    sub-int v10, v20, v6

    .line 498
    .local v10, "dataStatusTime":I
    :goto_3
    const-string/jumbo v20, "key_item_bg_network"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 509
    .end local v10    # "dataStatusTime":I
    :cond_2
    :goto_4
    const/16 v20, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    if-nez p1, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 510
    :cond_3
    const/4 v12, 0x0

    .line 511
    .local v12, "locationStatus":I
    if-nez p1, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 512
    const/4 v12, 0x1

    .line 514
    :cond_4
    const-string/jumbo v20, "key_item_location"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 518
    .end local v12    # "locationStatus":I
    :cond_5
    const-string/jumbo v20, "key_current_battery"

    new-instance v21, Lcom/samsung/android/settings/powersaving/BatteryWorker;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/powersaving/BatteryWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/powersaving/BatteryWorker;->getBatteryLevel()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string/jumbo v20, "key_next_psm_mode"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    const-string/jumbo v21, "key_init_battery_time"

    const/16 v20, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    const/16 v20, 0x0

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const-string/jumbo v20, "key_extended_battery_time_delta"

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v21

    sub-int v21, v21, v6

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string/jumbo v20, "key_button_type"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 523
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v13

    .line 525
    .local v13, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 436
    return-void

    .line 455
    .end local v9    # "dataStatus":I
    .end local v13    # "options":Landroid/app/ActivityOptions;
    .end local v14    # "performanceStatus":I
    .end local v15    # "performanceTime":I
    .restart local v16    # "resolutionStatus":I
    .restart local v17    # "resolutionTime":I
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 456
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v20, "android.intent.category.HOME"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const/high16 v20, 0x10200000

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/high16 v21, 0x10000

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 461
    .local v18, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 462
    new-instance v20, Landroid/os/UserHandle;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 466
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 473
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "resolutionStatus":I
    .end local v17    # "resolutionTime":I
    .end local v18    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "performanceStatus":I
    :cond_8
    const/4 v15, 0x0

    .restart local v15    # "performanceTime":I
    goto/16 :goto_1

    .line 486
    .restart local v9    # "dataStatus":I
    :pswitch_0
    const/4 v9, 0x0

    .line 487
    goto/16 :goto_2

    .line 489
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "low_power_back_data_off"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_2

    .line 492
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "ultra_power_mode_back_data_off"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_2

    .line 496
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "dataStatusTime":I
    goto/16 :goto_3

    .line 500
    .end local v10    # "dataStatusTime":I
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 501
    const-string/jumbo v20, "psm_network_power_saving"

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v9

    .line 502
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_b

    .line 503
    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v21

    sub-int v10, v20, v21

    .line 505
    .restart local v10    # "dataStatusTime":I
    :goto_6
    const-string/jumbo v20, "key_item_restrict_network"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 503
    .end local v10    # "dataStatusTime":I
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "dataStatusTime":I
    goto :goto_6

    .line 520
    .end local v10    # "dataStatusTime":I
    :cond_c
    const/16 v20, 0x1

    goto/16 :goto_5

    .line 484
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
    .line 410
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 409
    return-void
.end method

.method public static startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "fromWhere"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 414
    if-eqz p1, :cond_1

    .line 415
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string/jumbo v1, "battery_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    if-eqz p2, :cond_0

    .line 419
    const-string/jumbo v1, "fromWhere"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 413
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-static {p0, v1, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 424
    invoke-static {p0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;I)V

    goto :goto_0
.end method
