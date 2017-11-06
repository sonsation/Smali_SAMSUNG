.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;
.super Ljava/lang/Object;
.source "FloatingFeatures.java"


# static fields
.field public static final AUDIO_CONFIG_SOUNDALIVE:Ljava/lang/String;

.field public static final CONFIG_NOTIFICATION_BG_COLOR:Ljava/lang/String;

.field public static final FLAG_SUPPORT_INTERNAL_SOUNDALIVE:Z

.field public static final QUICKCONNECT_CONFIG_PACKAGE_NAME:Ljava/lang/String;

.field public static final SPLIT_LIST_VIEW_ENABLED:Z

.field public static final SUPPORT_BARGE_IN:Z

.field public static final SUPPORT_BIXBY:Z

.field public static final SUPPORT_COVER_FLOW_3D_AUDIO:Z

.field public static final SUPPORT_COVER_FLOW_NEXT_PREV_VI:Z

.field public static final SUPPORT_EDGE_LIGHTING_EFFECT:Z

.field public static final SUPPORT_FW_AUTO_RECOMMENDATION:Z

.field public static final SUPPORT_FW_FEATURE_LOGGING:Z

.field public static final SUPPORT_MILK_LINK_MENU:Z

.field public static final SUPPORT_MOBILE_TO_TV:Z = true

.field public static final SUPPORT_SCREEN_OFF_MUSIC:Z

.field public static final SUPPORT_SEPARATE_APP_SOUND:Z

.field public static final SUPPORT_SHOW_BUTTON_BG:Z = true

.field public static final SUPPORT_SMART_MIRRORING_DIALOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 10
    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 11
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_FW_FEATURE_LOGGING:Z

    .line 14
    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_MUSIC_AUTO_RECOMMENDATION"

    .line 15
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_FW_AUTO_RECOMMENDATION:Z

    .line 17
    const-string v1, "SEC_FLOATING_FEATURE_MUSICPLAYER_SUPPORT_COVER_FLOW_NEXT_PREV_VI"

    .line 18
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_COVER_FLOW_NEXT_PREV_VI:Z

    .line 20
    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_MUSIC_ALBUMART_3DAUDIO"

    .line 21
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_COVER_FLOW_3D_AUDIO:Z

    .line 27
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SPLIT_LIST_VIEW_ENABLED:Z

    .line 33
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_MILK_DEEP_INTEG"

    .line 34
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_MILK_LINK_MENU:Z

    .line 36
    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_SOUNDALIVE"

    .line 37
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->AUDIO_CONFIG_SOUNDALIVE:Ljava/lang/String;

    .line 39
    const-string v1, "SEC_FLOATING_FEATURE_MUSICPLAYER_SUPPORT_SCREEN_OFF_MUSIC"

    .line 40
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_SCREEN_OFF_MUSIC:Z

    .line 42
    const-string v1, "SEC_FLOATING_FEATURE_MUSICPLAYER_SUPPORT_INTERNAL_SOUNDALIVE"

    .line 43
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->FLAG_SUPPORT_INTERNAL_SOUNDALIVE:Z

    .line 45
    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_NOTIFICATION_BG_COLOR"

    .line 46
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->CONFIG_NOTIFICATION_BG_COLOR:Ljava/lang/String;

    .line 48
    const-string v1, "SEC_FLOATING_FEATURE_QUICKCONNECT_CONFIG_PACKAGE_NAME"

    .line 49
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->QUICKCONNECT_CONFIG_PACKAGE_NAME:Ljava/lang/String;

    .line 51
    const-string v1, "SEC_FLOATING_FEATURE_MUSICPLAYER_SUPPORT_BARGEIN"

    .line 52
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_BARGE_IN:Z

    .line 54
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY"

    .line 55
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_BIXBY:Z

    .line 63
    const-string v1, "com.samsung.android.smartmirroring"

    const-string v2, "SEC_FLOATING_FEATURE_MMFW_CONFIG_SMART_MIRRORING_PACKAGE_NAME"

    .line 65
    invoke-static {v2}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_SMART_MIRRORING_DIALOG:Z

    .line 67
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    const-string v2, "edgelighting"

    .line 68
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->stringContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SEC_FLOATING_FEATURE_MUSICPLAYER_SUPPORT_EDGE_LIGHT"

    .line 70
    invoke-static {v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_EDGE_LIGHTING_EFFECT:Z

    .line 72
    const-string v0, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_MULTI_DEVICE_SOUND"

    .line 73
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_SEPARATE_APP_SOUND:Z

    .line 72
    return-void
.end method
