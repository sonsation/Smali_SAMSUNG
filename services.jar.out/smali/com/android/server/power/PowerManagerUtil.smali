.class public final Lcom/android/server/power/PowerManagerUtil;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerUtil$Sales;,
        Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;,
        Lcom/android/server/power/PowerManagerUtil$TraceDumper;
    }
.end annotation


# static fields
.field public static final A8SKT_PROJECT:Z

.field public static final A8X_PROJECT:Z

.field public static final A9XPRO_PROJECT:Z

.field public static final AUTO_BRIGHTNESS_LIMIT_PERFORMANCE_MODE_NORMAL:I = 0x5a

.field public static final AUTO_BRIGHTNESS_TYPE:I

.field public static final AX_PROJECT:Z

.field public static final CHAGALLATT_PROJECT:Z

.field private static final DEBUG_LOW:Z

.field private static final DEBUG_UNKNOWN:Z

.field public static final DREAM_PROJECT:Z

.field public static final ENABLE_SENSOR_WITH_DELAY:Z

.field public static final GALAXY_VIEW_LTE:Z

.field public static final GALAXY_VIEW_WIFI:Z

.field public static final GRACE_PROJECT:Z

.field public static final GT58_PROJECT:Z

.field public static final GTS2_PROJECT:Z

.field public static final GT_PROJECT:Z

.field public static final HERO_PROJECT:Z

.field public static final MATISSE10WIFI_PROJECT:Z

.field public static final NOBLE_PROJECT:Z

.field public static final NOVEL_PROJECT:Z

.field public static final QCOM_PROJECT:Z

.field public static final SEC_FEATURE_BATTERY_SAVER_V2:Z

.field public static final SEC_FEATURE_BATTERY_SIMULATION:Z

.field public static final SEC_FEATURE_DECOUPLE_FOR_DOZE:Z = false

.field public static final SEC_FEATURE_DIM_BRIGHTNESS_BELOW_BATTERY_LEVEL_1:Z

.field public static SEC_FEATURE_EXTENDED_BRIGHTNESS:Z = false

.field public static final SEC_FEATURE_FORCE_ADJUST_MANUAL_BRIGHTNESS_IN_LOW_LUX:Z

.field public static final SEC_FEATURE_HALF_BRIGHTNESS_LOW_BATTERY:Z

.field public static final SEC_FEATURE_MARKER_TRACKER:Z

.field public static final SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

.field public static final SEC_FEATURE_SUPPORT_PERFORMANCE_MODE:Z

.field public static final SEC_FEATURE_USE_GED_SETINTERACTIVE_ORDER:Z

.field public static final SEC_FEATURE_USE_HBM_AT_MANUAL_MAX:Z

.field public static final SEC_FEATURE_USE_LOCKZONE:Z

.field public static final SEC_FEATURE_USE_PMS_LOG:Z

.field public static final SEC_FEATURE_VZW_DEVICE_QUALITY_STATISTICS_DATA:Z

.field public static final SEC_FEATURE_ZEROLUX_MINUSSTEP:Z

.field public static final SEC_MANUALTABLE_1:Z

.field public static final SEC_MANUALTABLE_2:Z

.field private static final SHIP_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "PowerManagerUtil"

.field public static final T_PROJECT:Z

.field public static final T_TMO_PROJECT:Z

.field public static final USE_AUTO_BRIGHTNESS_DETAIL:Z

.field public static final USE_EBOOK_AUTO_BRIGHTNESS_TABLE:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

.field public static final USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

.field public static final ZERO2_PROJECT:Z

.field public static final ZERO_PROJECT:Z

.field private static final mBoardPlatform:Ljava/lang/String;

.field public static final mIsMocha:Z

.field private static final mProductName:Ljava/lang/String;

.field public static final mSCafeName:Ljava/lang/String;

.field public static final mSCafeVersion:Ljava/lang/String;

.field public static final upgradeLollipop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    const-string/jumbo v0, "ro.product.device"

    const-string/jumbo v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "ro.board.platform"

    const-string/jumbo v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mBoardPlatform:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mBoardPlatform:Ljava/lang/String;

    const-string/jumbo v3, "msm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->QCOM_PROJECT:Z

    .line 46
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zero"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 47
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "marinelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 46
    if-nez v0, :cond_8

    .line 48
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SCV31"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 46
    if-nez v0, :cond_8

    .line 49
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "404SC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 46
    if-nez v0, :cond_8

    .line 50
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SC-04G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 46
    if-nez v0, :cond_8

    .line 51
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SC-05G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 46
    :goto_0
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    .line 52
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tblte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->T_PROJECT:Z

    .line 53
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gts2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GT_PROJECT:Z

    .line 54
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gvwifi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GALAXY_VIEW_WIFI:Z

    .line 55
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gvlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GALAXY_VIEW_LTE:Z

    .line 56
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt58"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt5note8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GT58_PROJECT:Z

    .line 57
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "chagalllteatt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->CHAGALLATT_PROJECT:Z

    .line 58
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "a8elteskt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A8SKT_PROJECT:Z

    .line 59
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "trltetmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 60
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tbltetmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 59
    if-nez v0, :cond_b

    .line 61
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "trltetmofrp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 59
    if-nez v0, :cond_b

    .line 62
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tbltetmofrp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 59
    :goto_3
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->T_TMO_PROJECT:Z

    .line 63
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "matisse10wifikx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->MATISSE10WIFI_PROJECT:Z

    .line 64
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "novel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOVEL_PROJECT:Z

    .line 65
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "noble"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    .line 66
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    .line 67
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "hero"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 68
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SGH-N611"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 67
    if-nez v0, :cond_c

    .line 69
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SC-02H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 67
    if-nez v0, :cond_c

    .line 70
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SGH-KSU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 67
    if-nez v0, :cond_c

    .line 71
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SCV33"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 67
    :goto_4
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->HERO_PROJECT:Z

    .line 72
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "a3x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "a5x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 73
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "a7x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 72
    if-nez v0, :cond_d

    .line 73
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "a9x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 72
    :goto_5
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->AX_PROJECT:Z

    .line 74
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "grace"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GRACE_PROJECT:Z

    .line 75
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gts2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gts210ve"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_0
    move v0, v2

    .line 75
    :goto_6
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GTS2_PROJECT:Z

    .line 78
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "a9xpro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A9XPRO_PROJECT:Z

    .line 79
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "a8x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A8X_PROJECT:Z

    .line 80
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "dream"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DREAM_PROJECT:Z

    .line 84
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GALAXY_VIEW_WIFI:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GALAXY_VIEW_LTE:Z

    if-eqz v0, :cond_10

    :cond_1
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_LOCKZONE:Z

    .line 89
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GT58_PROJECT:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->CHAGALLATT_PROJECT:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A8SKT_PROJECT:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->T_TMO_PROJECT:Z

    .line 88
    :goto_8
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DIM_BRIGHTNESS_BELOW_BATTERY_LEVEL_1:Z

    .line 93
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->MATISSE10WIFI_PROJECT:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HALF_BRIGHTNESS_LOW_BATTERY:Z

    .line 98
    const-string/jumbo v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    .line 100
    sget v0, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    if-ne v0, v1, :cond_12

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    .line 102
    sget v0, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_13

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    .line 103
    sget v0, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_14

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    .line 104
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_MARKER_TRACKER:Z

    .line 106
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

    .line 107
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-eqz v0, :cond_15

    move v0, v2

    :goto_c
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_EBOOK_AUTO_BRIGHTNESS_TABLE:Z

    .line 110
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v0, :cond_16

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    :goto_d
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_MANUALTABLE_1:Z

    .line 111
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->HERO_PROJECT:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_MANUALTABLE_2:Z

    .line 117
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    const-string/jumbo v3, "mocha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->mIsMocha:Z

    .line 119
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    const-string/jumbo v3, "americano"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gprimelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_2
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->mIsMocha:Z

    :goto_e
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->upgradeLollipop:Z

    .line 123
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->upgradeLollipop:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->VZW:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GTS2_PROJECT:Z

    if-eqz v0, :cond_18

    :cond_3
    move v0, v2

    :goto_f
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_HBM_AT_MANUAL_MAX:Z

    .line 127
    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FORCE_ADJUST_MANUAL_BRIGHTNESS_IN_LOW_LUX:Z

    .line 132
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    :goto_10
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ZEROLUX_MINUSSTEP:Z

    .line 136
    const-string/jumbo v0, "Unknown"

    const-string/jumbo v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    .line 137
    const-string/jumbo v0, "0x4f4c"

    const-string/jumbo v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    .line 138
    const-string/jumbo v0, "true"

    const-string/jumbo v3, "ro.product_ship"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    .line 140
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    if-eqz v0, :cond_1c

    :cond_4
    move v0, v2

    :goto_13
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    .line 141
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    if-eqz v0, :cond_1d

    :cond_5
    move v0, v2

    :goto_14
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SIMULATION:Z

    .line 145
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    if-eqz v0, :cond_1e

    :cond_6
    move v0, v2

    :goto_15
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    .line 149
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A9XPRO_PROJECT:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A8X_PROJECT:Z

    :goto_16
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_SETINTERACTIVE_ORDER:Z

    .line 153
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->HERO_PROJECT:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->QCOM_PROJECT:Z

    :goto_17
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ENABLE_SENSOR_WITH_DELAY:Z

    .line 157
    const-string/jumbo v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeVersion:Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeVersion:Ljava/lang/String;

    const-string/jumbo v3, "2016B"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_21

    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SAVER_V2:Z

    .line 160
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 159
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_PERFORMANCE_MODE:Z

    .line 166
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->VZW:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "dream"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "j3pop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "j7pop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 165
    :cond_7
    :goto_19
    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_VZW_DEVICE_QUALITY_STATISTICS_DATA:Z

    .line 180
    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 37
    return-void

    :cond_8
    move v0, v1

    .line 46
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 53
    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 56
    goto/16 :goto_2

    :cond_b
    move v0, v1

    .line 59
    goto/16 :goto_3

    :cond_c
    move v0, v1

    .line 67
    goto/16 :goto_4

    :cond_d
    move v0, v1

    .line 72
    goto/16 :goto_5

    .line 77
    :cond_e
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gts28ve"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto/16 :goto_6

    :cond_f
    move v0, v1

    goto/16 :goto_6

    :cond_10
    move v0, v1

    .line 84
    goto/16 :goto_7

    :cond_11
    move v0, v1

    .line 89
    goto/16 :goto_8

    :cond_12
    move v0, v2

    .line 100
    goto/16 :goto_9

    :cond_13
    move v0, v2

    .line 102
    goto/16 :goto_a

    :cond_14
    move v0, v2

    .line 103
    goto/16 :goto_b

    :cond_15
    move v0, v1

    .line 107
    goto/16 :goto_c

    :cond_16
    move v0, v1

    .line 110
    goto/16 :goto_d

    :cond_17
    move v0, v1

    .line 119
    goto/16 :goto_e

    :cond_18
    move v0, v1

    .line 123
    goto/16 :goto_f

    :cond_19
    move v0, v1

    .line 132
    goto/16 :goto_10

    :cond_1a
    move v0, v2

    .line 136
    goto/16 :goto_11

    :cond_1b
    move v0, v2

    .line 137
    goto/16 :goto_12

    :cond_1c
    move v0, v1

    .line 140
    goto/16 :goto_13

    .line 141
    :cond_1d
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez v0, :cond_5

    move v0, v1

    goto/16 :goto_14

    .line 145
    :cond_1e
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez v0, :cond_6

    move v0, v1

    goto/16 :goto_15

    :cond_1f
    move v0, v1

    .line 149
    goto/16 :goto_16

    :cond_20
    move v0, v2

    .line 153
    goto/16 :goto_17

    :cond_21
    move v0, v2

    .line 158
    goto/16 :goto_18

    :cond_22
    move v1, v2

    .line 166
    goto :goto_19
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileExist(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 191
    .local v1, "exist":Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    .end local v1    # "exist":Z
    :goto_0
    const-string/jumbo v2, "PowerManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fileExist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v1

    .line 193
    .restart local v1    # "exist":Z
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 203
    const/4 v3, 0x0

    .line 204
    .local v3, "out":Ljava/io/FileOutputStream;
    const-string/jumbo v5, "PowerManagerUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fileWriteInt to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 212
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 202
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 208
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void

    .line 213
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 214
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 217
    :catch_2
    move-exception v2

    .line 218
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 213
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, "out":Ljava/io/FileOutputStream;
    const-string/jumbo v5, "PowerManagerUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fileWriteString to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 233
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 223
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 229
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void

    .line 234
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 235
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 237
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 238
    :catch_2
    move-exception v2

    .line 239
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
