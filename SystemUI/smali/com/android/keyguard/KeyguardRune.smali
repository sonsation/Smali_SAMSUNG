.class public final Lcom/android/keyguard/KeyguardRune;
.super Ljava/lang/Object;
.source "KeyguardRune.java"


# static fields
.field private static final BUILD_CHARACTERISTICS:Ljava/lang/String;

.field private static final CARRIER_SECURITY_POLICY:Ljava/lang/String;

.field private static final CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

.field private static final CMAS_OPERATOR_NAME:Ljava/lang/String;

.field private static final CONFIG_DMN_TYPE:Ljava/lang/String;

.field private static final CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

.field private static final EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

.field public static final HIDE_ROAMING_TEXT_ON_DUAL_CLOCK:Z

.field public static final IS_TABLET_DEVICE:Z

.field public static final SUPPORT_AOSP_LOCKOUT:Z

.field public static final SUPPORT_ATT_LOCK_TIMEOUT:Z

.field public static final SUPPORT_AUTO_LOCK_FOR_GEAR:Z

.field public static final SUPPORT_BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY:Z

.field public static final SUPPORT_CINEMATIC_WALLPAPER:Z

.field public static final SUPPORT_CMAS:Z

.field public static final SUPPORT_DATA_USAGE_REMINDER:Z

.field public static final SUPPORT_DCM_USIM_TEXT:Z

.field private static final SUPPORT_DEAD_ZONE:Ljava/lang/String;

.field public static final SUPPORT_DIRECTIONAL_LOCK:Z

.field public static final SUPPORT_DIRECT_CALL_TO_ECC:Z

.field public static final SUPPORT_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

.field public static final SUPPORT_DISABLE_SPEAK_PASSWORD:Z

.field public static final SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

.field public static final SUPPORT_DISCONNECTION_ADB_IN_LOCK_MODE:Z

.field public static final SUPPORT_GSIM_LOG:Z

.field public static final SUPPORT_HIGH_PERFORMACE_MODE:Z

.field public static final SUPPORT_HOME_WALLPAPER_TILT_EFFECT:Z

.field public static final SUPPORT_KDDI_USIM_TEXT:Z

.field public static final SUPPORT_KOR_EMERGENCY_CALL_BUTTON:Z

.field public static final SUPPORT_KOR_USIM_TEXT:Z

.field public static final SUPPORT_KTT_USIM_TEXT:Z

.field public static final SUPPORT_LAYERED_WALLPAPER:Z

.field public static final SUPPORT_MOBILE_KEYBOARD:Z

.field public static final SUPPORT_MOTION_WALLPAPER:Z

.field public static final SUPPORT_MOVE_TO_EMERGENCY_CALL_LIST:Z

.field public static final SUPPORT_MULTI_SIM_DEVICE:Z

.field public static final SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

.field public static final SUPPORT_OPERATOR_WALLPAPER:Z

.field public static final SUPPORT_PERSIAN_CALENDAR:Z

.field public static final SUPPORT_PRESIDENTIAL_CMAS:Z

.field public static final SUPPORT_RIL_TALLRAT:Z

.field public static final SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

.field public static final SUPPORT_SEC_FINGERPRINT_SENSOR_POSITION_REAR:Z

.field public static final SUPPORT_SEC_WAKE_ON_FINGERPRINT:Z

.field public static final SUPPORT_SEPARATE_FAILED_ATTEMPTS_FOR_BIOMETRIC:Z

.field public static final SUPPORT_SERVICEBOX:Z

.field public static final SUPPORT_SHOWING_SWIPE_BOUNCER:Z

.field public static final SUPPORT_SIM_PERM_DISABLED:Z

.field public static final SUPPORT_SIM_PERSO_LOCK:Z

.field public static final SUPPORT_SIM_UNLOCK_TOAST:Z

.field public static final SUPPORT_SKIP_SHORTCUT_ARROW_SHOWING_VI:Z

.field public static final SUPPORT_SKT_PLMN:Z

.field public static final SUPPORT_SKT_SIM_PERSO_LOCK_PASSWORD_LENGTH:I

.field public static final SUPPORT_SKT_USIM_TEXT:Z

.field public static final SUPPORT_SOFT_PHONE_DEVICE:Z

.field public static final SUPPORT_SPR_USIM_TEXT:Z

.field public static final SUPPORT_USC_USIM_TEXT:Z

.field public static final SUPPORT_USE_CDMA_CARD_TEXT:Z

.field public static final SUPPORT_USE_WFCPLMN_IN_AIRPLANE_MODE:Z

.field public static final SUPPORT_WARNING_FRP_MESSAGE:Z

.field public static final SUPPORT_WHITE_WALLPAPER_AS_DEFAULT:Z

.field public static final WFC_PLMN_INFO_AT_AIRPLANE_MODE:Ljava/lang/String;

.field private static final mConfigDefLcdOnTimeOut:I

.field private static final mConfigLockTimeoutSetting:Ljava/lang/String;

.field private static sWiFiOnlyDevice:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v4, "CscFeature_Setting_SupportDataUsageReminder"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DATA_USAGE_REMINDER:Z

    .line 78
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v4, "CscFeature_Message_CMASOperator"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CMAS:Z

    .line 80
    const-string/jumbo v0, "us-spr"

    sget-object v4, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PRESIDENTIAL_CMAS:Z

    .line 95
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 96
    const-string/jumbo v4, "CscFeature_LockScreen_ConfigCarrierSecurityPolicy"

    .line 95
    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    .line 98
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

    .line 99
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

    .line 100
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    sput v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_SIM_PERSO_LOCK_PASSWORD_LENGTH:I

    .line 102
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WARNING_FRP_MESSAGE:Z

    .line 106
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 107
    const-string/jumbo v2, "CscFeature_LockScreen_SupportToastSimUnlockSuccess"

    .line 106
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_UNLOCK_TOAST:Z

    .line 110
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    .line 120
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 121
    const-string/jumbo v2, "CscFeature_LockScreen_ConfigCarrierTextPolicy"

    .line 120
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_CDMA_CARD_TEXT:Z

    .line 123
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_PLMN:Z

    .line 124
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY:Z

    .line 125
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_a

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    .line 126
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_b

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_USIM_TEXT:Z

    .line 127
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KTT_USIM_TEXT:Z

    .line 128
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DCM_USIM_TEXT:Z

    .line 129
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_e

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KDDI_USIM_TEXT:Z

    .line 130
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_f

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SPR_USIM_TEXT:Z

    .line 131
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USC_USIM_TEXT:Z

    .line 136
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 137
    const-string/jumbo v2, "CscFeature_LockScreen_ConfigEmergencyCallPolicy"

    .line 136
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    if-nez v0, :cond_11

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOVE_TO_EMERGENCY_CALL_LIST:Z

    .line 139
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    if-nez v0, :cond_12

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    .line 142
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 143
    const-string/jumbo v2, "CscFeature_RIL_SupportAllRat"

    .line 142
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_RIL_TALLRAT:Z

    .line 146
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 147
    const-string/jumbo v2, "CscFeature_LockScreen_DirectCallToEcc"

    .line 146
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DIRECT_CALL_TO_ECC:Z

    .line 151
    const-string/jumbo v0, ""

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    .line 152
    const-string/jumbo v4, "CscFeature_Common_ConfigOpBrandingForWFC"

    const-string/jumbo v5, ""

    .line 151
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_WFCPLMN_IN_AIRPLANE_MODE:Z

    .line 155
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 156
    const-string/jumbo v2, "CscFeature_IMS_ConfigMdmnType"

    .line 155
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DMN_TYPE:Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DMN_TYPE:Ljava/lang/String;

    if-nez v0, :cond_14

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SOFT_PHONE_DEVICE:Z

    .line 163
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_RIL_ConfigNetworkNameForEpdg"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->WFC_PLMN_INFO_AT_AIRPLANE_MODE:Ljava/lang/String;

    .line 168
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v3, :cond_15

    move v0, v3

    :goto_14
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MULTI_SIM_DEVICE:Z

    .line 177
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_GSIM_LOG:Z

    .line 192
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_16

    move v0, v3

    :goto_15
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_EMERGENCY_CALL_BUTTON:Z

    .line 196
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 197
    const-string/jumbo v2, "CscFeature_LockScreen_DisableTalkbackForSpeakPassword"

    .line 196
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISABLE_SPEAK_PASSWORD:Z

    .line 216
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 217
    const-string/jumbo v2, "CscFeature_RIL_USIMPersonalizationKOR"

    .line 216
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERSO_LOCK:Z

    .line 228
    const-string/jumbo v0, "2017A"

    const-string/jumbo v2, "ro.build.scafe.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_AOSP_LOCKOUT:Z

    .line 243
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 244
    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SERVICEBOX"

    .line 243
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    .line 269
    const-string/jumbo v0, "US_NORTH"

    .line 270
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v4, "CscFeature_LockScreen_ConfigDisplayShorcutCircleArrow"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    .line 273
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 274
    const-string/jumbo v2, "CscFeature_LockScreen_SupportAutoLockForGear"

    .line 273
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_AUTO_LOCK_FOR_GEAR:Z

    .line 282
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isSupportWakeOnFingerPrint()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_WAKE_ON_FINGERPRINT:Z

    .line 286
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorPosition()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    move v0, v3

    .line 285
    :goto_16
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_FINGERPRINT_SENSOR_POSITION_REAR:Z

    .line 305
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_AOSP_LOCKOUT:Z

    if-eqz v0, :cond_18

    :goto_17
    sput-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEPARATE_FAILED_ATTEMPTS_FOR_BIOMETRIC:Z

    .line 314
    const-string/jumbo v0, "NONE"

    .line 315
    const-string/jumbo v2, "LAYERED"

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_LAYERED_WALLPAPER:Z

    .line 318
    const-string/jumbo v0, "NONE"

    .line 319
    const-string/jumbo v2, "CINEMATIC"

    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOTION_WALLPAPER:Z

    .line 322
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 323
    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SEAMLESS_WALLPAPER"

    .line 322
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CINEMATIC_WALLPAPER:Z

    .line 332
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 333
    const-string/jumbo v2, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    .line 332
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DIRECTIONAL_LOCK:Z

    .line 345
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 346
    const-string/jumbo v2, "CscFeature_LockScreen_EnableOperatorWallpaper"

    .line 345
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_OPERATOR_WALLPAPER:Z

    .line 349
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 350
    const-string/jumbo v2, "CscFeature_LockScreen_DisableADBConnDuringSecuredLock"

    .line 349
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISCONNECTION_ADB_IN_LOCK_MODE:Z

    .line 356
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TILT_EFFECT"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_HOME_WALLPAPER_TILT_EFFECT:Z

    .line 362
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 363
    const-string/jumbo v2, "CscFeature_LockScreen_SupportWhiteDefaultWallpaper"

    .line 362
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WHITE_WALLPAPER_AS_DEFAULT:Z

    .line 369
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    .line 402
    const-string/jumbo v0, "US_NORTH"

    .line 403
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_LockScreen_ConfigDisplayShorcutCircleArrow"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKIP_SHORTCUT_ARROW_SHOWING_VI:Z

    .line 416
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->BUILD_CHARACTERISTICS:Ljava/lang/String;

    .line 417
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->BUILD_CHARACTERISTICS:Ljava/lang/String;

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->IS_TABLET_DEVICE:Z

    .line 431
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_LockScreen_ConfigClockDisplayPolicy"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    .line 436
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 437
    const-string/jumbo v2, "CscFeature_LockScreen_HideRoamingTextOnDualClock"

    .line 436
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->HIDE_ROAMING_TEXT_ON_DUAL_CLOCK:Z

    .line 465
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_LockScreen_ConfigDefLcdOnTimeOut"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 464
    sput v0, Lcom/android/keyguard/KeyguardRune;->mConfigDefLcdOnTimeOut:I

    .line 470
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 471
    const-string/jumbo v2, "CscFeature_LockScreen_ConfigLockTimeoutSetting"

    .line 470
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->mConfigLockTimeoutSetting:Ljava/lang/String;

    .line 472
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->mConfigLockTimeoutSetting:Ljava/lang/String;

    if-nez v0, :cond_19

    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_ATT_LOCK_TIMEOUT:Z

    .line 478
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 479
    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    .line 478
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_HIGH_PERFORMACE_MODE:Z

    .line 484
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 485
    const-string/jumbo v2, "CscFeature_Common_SupportPersianCalendar"

    .line 484
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    .line 490
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_TSP_STATE_MANAGER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DEAD_ZONE:Ljava/lang/String;

    .line 603
    const/4 v0, -0x1

    sput v0, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    .line 60
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    const-string/jumbo v4, "us"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 97
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v4, "SupportSimPermanentDisable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_1

    .line 98
    :cond_2
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v4, "UseTMOSIMPINLock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_2

    .line 101
    :cond_3
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v4, "PersoLockPasswdLength(4)"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_3

    .line 102
    :cond_5
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "FactoryResetProtectionWarning"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_4

    .line 110
    :cond_6
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseSamsungAccountAuth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_5

    .line 122
    :cond_7
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseCdmaCardText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_6

    .line 123
    :cond_8
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "DisplayPlmnOnBottom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_7

    .line 124
    :cond_9
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "BlockCarrierTextWhenSimNotReady"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_8

    .line 125
    :cond_a
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "DisplayUsimText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_9

    .line 126
    :cond_b
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseSKTSimText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_a

    .line 127
    :cond_c
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseKTTSimText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_b

    .line 128
    :cond_d
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseDCMSimLockText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_c

    .line 129
    :cond_e
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseKDDISimText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_d

    .line 130
    :cond_f
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseDefaultPlmnValueFromNetwork"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_e

    .line 131
    :cond_10
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseFixedPlmnValueForUSC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_f

    .line 138
    :cond_11
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "MoveToCallList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_10

    .line 139
    :cond_12
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "DisableEmergencyCallWhenOffline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_11

    :cond_13
    move v0, v3

    .line 151
    goto/16 :goto_12

    .line 157
    :cond_14
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DMN_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "Softphone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_13

    :cond_15
    move v0, v1

    .line 168
    goto/16 :goto_14

    :cond_16
    move v0, v1

    .line 192
    goto/16 :goto_15

    :cond_17
    move v0, v1

    .line 286
    goto/16 :goto_16

    :cond_18
    move v3, v1

    .line 305
    goto/16 :goto_17

    .line 472
    :cond_19
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->mConfigLockTimeoutSetting:Ljava/lang/String;

    const-string/jumbo v2, "10min"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_18
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canIgnoreNationalRoamingToShowSingleClock(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 525
    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithoutMNC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming()Z

    move-result v1

    .line 525
    if-eqz v1, :cond_0

    .line 527
    return v4

    .line 529
    :cond_0
    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithMNC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 531
    .local v0, "tpm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "21901"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    return v4

    .line 536
    .end local v0    # "tpm":Landroid/telephony/TelephonyManager;
    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithOptus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    const-string/jumbo v1, "50503"

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 536
    if-eqz v1, :cond_2

    .line 538
    return v4

    .line 540
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static canSetDcmLauncher()Z
    .locals 2

    .prologue
    .line 784
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "UseDCMSimLockText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/keyguard/KeyguardRune;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    const-string/jumbo v0, "  SUPPORT_DISAPPEAR_DEFAULT_PLMN: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 812
    const-string/jumbo v0, "  SUPPORT_SEC_WAKE_ON_FINGERPRINT: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_WAKE_ON_FINGERPRINT:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 813
    const-string/jumbo v0, "  isNationalRoaming: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 814
    const-string/jumbo v0, "  CONFIG_DUAL_CLOCK_DISPLAY_POLICY: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 809
    return-void
.end method

.method public static factoryResetWithoutUI()Z
    .locals 2

    .prologue
    .line 618
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "factoryResetWithoutUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static getCalendarPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 694
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string/jumbo v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClockPackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 675
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    .line 676
    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string/jumbo v4, "com.sec.android.app.clockpackage"

    .line 675
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    .line 678
    const-string/jumbo v3, "CscFeature_Clock_ConfigReplacePackage"

    .line 677
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "packageNameCSC":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 682
    return-object v1

    .line 684
    :cond_0
    return-object v0
.end method

.method public static getDefaultDisplayTimeout()I
    .locals 1

    .prologue
    .line 627
    sget v0, Lcom/android/keyguard/KeyguardRune;->mConfigDefLcdOnTimeOut:I

    if-lez v0, :cond_0

    .line 628
    sget v0, Lcom/android/keyguard/KeyguardRune;->mConfigDefLcdOnTimeOut:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 627
    :goto_0
    return v0

    .line 628
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public static isArabicIndicForClockDigit()Z
    .locals 3

    .prologue
    .line 637
    const-string/jumbo v0, ""

    .line 638
    .local v0, "curLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 639
    .local v1, "locale":Ljava/util/Locale;
    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 642
    :cond_0
    const-string/jumbo v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isDcmLauncher(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 768
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->canSetDcmLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.nttdocomo.android.dhome"

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardRune;->isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeadzoneExist()Z
    .locals 2

    .prologue
    .line 792
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DEAD_ZONE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "deadzone"

    sget-object v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DEAD_ZONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    const/4 v0, 0x1

    return v0

    .line 795
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDownloadableThemeApplied(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    invoke-static {p0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLTRClockLayoutDespiteArabic()Z
    .locals 3

    .prologue
    .line 651
    const-string/jumbo v0, ""

    .line 652
    .local v0, "curLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 653
    .local v1, "locale":Ljava/util/Locale;
    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 656
    :cond_0
    const-string/jumbo v2, "iw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ur"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isNationalRoaming()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 550
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v6, :cond_1

    .line 551
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v7, "gsm.sim.operator.numeric"

    const-string/jumbo v8, ""

    invoke-static {v9, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "sim1Numeric":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v7, "gsm.operator.numeric"

    const-string/jumbo v8, ""

    invoke-static {v9, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "plmn1Numeric":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v7, "gsm.sim.operator.numeric"

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, "sim2Numeric":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v7, "gsm.operator.numeric"

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "plmn2Numeric":Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v4, v1}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    :cond_0
    return v6

    .line 557
    .end local v0    # "plmn1Numeric":Ljava/lang/String;
    .end local v1    # "plmn2Numeric":Ljava/lang/String;
    .end local v3    # "sim1Numeric":Ljava/lang/String;
    .end local v4    # "sim2Numeric":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "gsm.sim.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 558
    .local v5, "simNumeric":Ljava/lang/String;
    const-string/jumbo v6, "gsm.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "plmnNumeric":Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    return v6
.end method

.method private static isNationalRoaming(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "simNumeric"    # Ljava/lang/String;
    .param p1, "plmnNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 564
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    :cond_0
    return v3

    .line 564
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    const/4 v1, 0x0

    .local v1, "simMCC":Ljava/lang/String;
    const/4 v0, 0x0

    .line 566
    .local v0, "plmnMCC":Ljava/lang/String;
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 567
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "simMCC":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 572
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "plmnMCC":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 569
    .local v0, "plmnMCC":Ljava/lang/String;
    .local v1, "simMCC":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "simMCC":Ljava/lang/String;
    goto :goto_0

    .line 574
    :cond_3
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "plmnMCC":Ljava/lang/String;
    goto :goto_1
.end method

.method public static isNavigationBarExist(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 776
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 780
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isReadable(Ljava/lang/String;)Z
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 746
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 748
    .local v2, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 749
    .local v1, "bExist":Z
    const/4 v0, 0x0

    .line 751
    .local v0, "bCanRead":Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 752
    .local v1, "bExist":Z
    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    .line 759
    .local v0, "bCanRead":Z
    if-nez v0, :cond_1

    .line 760
    const-string/jumbo v3, "KeyguardRune"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isReadable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " canRead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return v6

    .line 755
    .local v0, "bCanRead":Z
    :cond_0
    const-string/jumbo v3, "KeyguardRune"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isReadable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return v6

    .line 764
    .local v0, "bCanRead":Z
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static isSupportWakeOnFingerPrint()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 699
    const-string/jumbo v1, "/sys/class/fingerprint/fingerprint/adm"

    invoke-static {v1}, Lcom/android/keyguard/KeyguardRune;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "resultId":Ljava/lang/String;
    const-string/jumbo v1, "KeyguardRune"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWakeOnFingerPrint( resultId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    .line 702
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 703
    return v2

    :cond_0
    move v1, v2

    .line 701
    goto :goto_0

    .line 706
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isWiFiOnlyDevice(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 605
    sget v1, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 606
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 607
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sput v1, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    .line 611
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    sget v1, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    if-ne v1, v3, :cond_2

    :goto_1
    return v3

    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    move v1, v3

    .line 609
    goto :goto_0

    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    move v3, v2

    .line 611
    goto :goto_1
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 710
    invoke-static {p0}, Lcom/android/keyguard/KeyguardRune;->isReadable(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 711
    const-string/jumbo v9, "KeyguardRune"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readFromFile Failed isReadable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-object v12

    .line 715
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 717
    .local v1, "line":Ljava/lang/String;
    const/4 v6, 0x0

    .line 720
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 721
    .local v4, "nStart":J
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    .end local v1    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 724
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 731
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v6, v7

    .line 732
    .end local v4    # "nStart":J
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string/jumbo v9, "KeyguardRune"

    const-string/jumbo v10, "readFromFile"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 734
    if-eqz v6, :cond_1

    .line 736
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 742
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 727
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "nStart":J
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 728
    .local v2, "nEnd":J
    const-string/jumbo v9, "KeyguardRune"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readFromFile finish, time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v12, v2, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 729
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 728
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 734
    if-eqz v7, :cond_3

    .line 736
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_3
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 737
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 738
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "KeyguardRune"

    const-string/jumbo v10, "readFromFile"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 737
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "nEnd":J
    .end local v4    # "nStart":J
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 738
    const-string/jumbo v9, "KeyguardRune"

    const-string/jumbo v10, "readFromFile"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 733
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 734
    :goto_4
    if-eqz v6, :cond_4

    .line 736
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 733
    :cond_4
    :goto_5
    throw v9

    .line 737
    :catch_3
    move-exception v0

    .line 738
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "KeyguardRune"

    const-string/jumbo v11, "readFromFile"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 733
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "nStart":J
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 731
    .end local v4    # "nStart":J
    .local v1, "line":Ljava/lang/String;
    .local v6, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_1
.end method

.method public static shouldAddTimeTextForRoamingTime()Z
    .locals 2

    .prologue
    .line 590
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "ShowRomaingTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static shouldBeAsiaSeoulAsDefaultHomecityTimezone()Z
    .locals 2

    .prologue
    .line 582
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "SetAutoTimeAsiaSeoul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 664
    const-string/jumbo v0, "lockscreen.rot_override"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldShowSeoulTextForHomeTime()Z
    .locals 2

    .prologue
    .line 586
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "SetAsiaSeoulForHome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
