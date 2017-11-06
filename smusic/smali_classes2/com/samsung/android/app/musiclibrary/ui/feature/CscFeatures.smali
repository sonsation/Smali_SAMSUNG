.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;
.super Ljava/lang/Object;
.source "CscFeatures.java"


# static fields
.field public static final DISABLE_GOOGLE:Z

.field public static final REGIONAL_CHN_PINYIN_ENABLED:Z

.field public static final REGIONAL_KOR_LGT_UWA_CALL_ENABLED:Z

.field public static final SUPPORT_AUTOANSWERING_MEMO:Z

.field public static final SUPPORT_BATTERY_ADC_THRESHOLD:Z

.field public static final SUPPORT_BLOCK_PLAYREADY_DRM:Z

.field public static final SUPPORT_CONFIG_EXTRALYRIC_JP:Z

.field public static final SUPPORT_CONFIG_OPCLOUD_VZW:Z

.field public static final SUPPORT_CONFIG_PLAYLIST_REPEAT_ENDFIRST:Z

.field public static final SUPPORT_CSC_DLNA_DMS:Z

.field public static final SUPPORT_FW_BIGPOND:Z

.field public static final SUPPORT_FW_DLNA:Z

.field public static final SUPPORT_MILK_CONFIG_DEEPLINK_CN:Z

.field public static final SUPPORT_MILK_CONFIG_DEEPLINK_KR:Z

.field public static final SUPPORT_MINIMIZED_SIP:Z

.field public static final SUPPORT_MUSIC_BELLING:Z

.field public static final SUPPORT_MUSIC_DATAPROMPT_POPUP:Z

.field public static final SUPPORT_MUSIC_DISABLE_RESET_SETTINGS:Z

.field public static final SUPPORT_MUSIC_NOITEM_BUBBLE_VIEW:Z

.field public static final SUPPORT_MUSIC_PLAYBACK_DURING_CALL:Z

.field public static final SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

.field public static final SUPPORT_REPLACE_STRING_WIFI:Z

.field public static final SUPPORT_SKTDRM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    const-string v0, "CscFeature_Common_SupportMirrorCall"

    .line 8
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CscFeature_Common_SupportUwaApp"

    .line 9
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->REGIONAL_KOR_LGT_UWA_CALL_ENABLED:Z

    .line 17
    const-string v0, "CscFeature_Music_SupportPinyinSort"

    .line 18
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CHINA"

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->COUNTRY_CODE:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    .line 21
    const-string v0, "CscFeature_Music_EnableBigPondTop10Feeds"

    .line 22
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_FW_BIGPOND:Z

    .line 24
    const-string v0, "CscFeature_Common_DisableGoogle"

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->DISABLE_GOOGLE:Z

    .line 26
    const-string v0, "CscFeature_MMFW_ConfigFileExtension"

    .line 27
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DCF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_SKTDRM:Z

    .line 29
    const-string v0, "CscFeature_Music_SupportMusicBelling"

    .line 30
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_MUSIC_BELLING:Z

    .line 32
    const-string v0, "CscFeature_Common_ReplaceStringWifi"

    .line 33
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "wlan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_REPLACE_STRING_WIFI:Z

    .line 35
    const-string v0, "CscFeature_Music_SupportDataPromptPopup"

    .line 36
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_MUSIC_DATAPROMPT_POPUP:Z

    .line 38
    const-string v0, "CscFeature_Music_SupportPlaybackDuringCall"

    .line 39
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_MUSIC_PLAYBACK_DURING_CALL:Z

    .line 41
    const-string v0, "CscFeature_Music_ConfigExtraLyricEncoding"

    .line 42
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "JP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_CONFIG_EXTRALYRIC_JP:Z

    .line 44
    const-string v0, "CscFeature_Music_ConfigOpCloud"

    .line 45
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "VZW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_CONFIG_OPCLOUD_VZW:Z

    .line 47
    const-string v0, "CscFeature_Music_SupportNoItemBubbleView"

    .line 48
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_MUSIC_NOITEM_BUBBLE_VIEW:Z

    .line 50
    const-string v0, "CscFeature_Music_DisableResetSettings"

    .line 51
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_MUSIC_DISABLE_RESET_SETTINGS:Z

    .line 53
    const-string v0, "CscFeature_Common_SupportMinimizedSip"

    .line 54
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_MINIMIZED_SIP:Z

    .line 56
    const-string v0, "CscFeature_Music_ConfigRulePlayListRepeat"

    .line 57
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "EndFirst"

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_CONFIG_PLAYLIST_REPEAT_ENDFIRST:Z

    .line 60
    const-string v0, "CscFeature_Music_SupportDlnaDms"

    .line 61
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CscFeature_Common_SupportDLNA"

    .line 62
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_CSC_DLNA_DMS:Z

    .line 64
    const-string v0, "CscFeature_VoiceCall_SupportAutoAnsweringMemo"

    .line 65
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_AUTOANSWERING_MEMO:Z

    .line 67
    const-string v0, "CscFeature_Milk_ConfigDeepLinkInMusic"

    .line 68
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_MILK_CONFIG_DEEPLINK_CN:Z

    .line 70
    const-string v0, "CscFeature_Milk_ConfigDeepLinkInMusic"

    .line 71
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "KR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_MILK_CONFIG_DEEPLINK_KR:Z

    .line 73
    const-string v0, "CscFeature_Common_ConfigOperatorDrmReq"

    .line 74
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BlockPlayReadyDRM"

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_BLOCK_PLAYREADY_DRM:Z

    .line 77
    const-string v0, "CscFeature_Music_SupportBatteryAdcThreshold"

    .line 78
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_BATTERY_ADC_THRESHOLD:Z

    .line 86
    const-string v0, "CscFeature_Common_SupportDLNA"

    .line 87
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CscFeature_Common_SupportDLNA"

    .line 88
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DMC_ONLY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_FW_DLNA:Z

    .line 90
    const-string v0, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    .line 91
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    .line 90
    return-void

    :cond_4
    move v0, v1

    .line 9
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 19
    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 62
    goto :goto_2
.end method
