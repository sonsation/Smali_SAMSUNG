.class public final Lcom/samsung/android/app/music/common/info/features/AppFeatures;
.super Ljava/lang/Object;
.source "AppFeatures.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/info/features/CHNFeatures;
.implements Lcom/samsung/android/app/music/common/info/features/FrameworkStaticFeatures;
.implements Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;
.implements Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;


# static fields
.field public static final ANIMATED_NEXT_SEEK_BAR:Z = true

.field public static final DREAM_UX:Z = true

.field public static final SCREEN_OFF_MUSIC_ENABLED:Z

.field public static final SUPPORT_ADAPT_SOUND:Z

.field public static final SUPPORT_APP_SKIP_SILENCE:Z = true

.field public static final SUPPORT_APP_UPDATE_BADGE:Z

.field public static final SUPPORT_BARGE_IN:Z

.field public static final SUPPORT_CONTACT_US:Z = true

.field public static final SUPPORT_EDGE_LIGHTING_SETTING_MENU:Z

.field public static final SUPPORT_EDGE_PANEL:Z

.field public static final SUPPORT_FW_SMART_VOLUME:Z

.field public static final SUPPORT_INSTALL_SHORTCUT:Z

.field public static final SUPPORT_MILK:Z

.field public static final SUPPORT_MUSIC_CONTROLLER:Z

.field public static final SUPPORT_MUSIC_DLNA_DMS:Z

.field public static final SUPPORT_NOTIFICATION_BLACK_THEME:Z

.field public static final SUPPORT_TABA_GRID_66:Z

.field public static final TEMP_SHOW_TOAST:Z

.field private static final sSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string v3, "gt510"

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string v3, "gt5note10"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string v3, "gt58"

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string v3, "gt5note8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_TABA_GRID_66:Z

    .line 24
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->IS_MASS_MODEL:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/samsung/sectionmap/SmartVolumeLib;->SMART_VOLUME_ENABLED:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_SMART_VOLUME:Z

    .line 30
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->sSlook:Lcom/samsung/android/sdk/look/Slook;

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->sSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_EDGE_PANEL:Z

    .line 43
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_SCREEN_OFF_MUSIC:Z

    if-eqz v0, :cond_6

    const-string v0, "CHINA"

    sget-object v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->COUNTRY_CODE:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SCREEN_OFF_MUSIC_ENABLED:Z

    .line 47
    const-string v0, "ff272d30"

    sget-object v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->CONFIG_NOTIFICATION_BG_COLOR:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_NOTIFICATION_BLACK_THEME:Z

    .line 50
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isSupportGlobalEffect()Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->FLAG_SUPPORT_INTERNAL_SOUNDALIVE:Z

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-eq v0, v3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ne v0, v3, :cond_7

    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v3, "zero"

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v3, "zen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_ADAPT_SOUND:Z

    .line 56
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_BARGE_IN:Z

    sput-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_BARGE_IN:Z

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_8

    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_CSC_DLNA_DMS:Z

    .line 60
    :goto_4
    sput-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_DLNA_DMS:Z

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v0, v3, :cond_9

    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_INSTALL_SHORTCUT:Z

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v3, "trhplte"

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v3, "trelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v3, "tbelte"

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v3, "trlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v3, "tblte"

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string v3, "SC-01G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string v3, "SCL24"

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v3, "tre3calte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v3, "tr3calte"

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v3, "tre3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string v3, "muscat3calte"

    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_CONTROLLER:Z

    .line 76
    const-string v0, "KOREA"

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->COUNTRY_CODE:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    .line 79
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v3, 0x18f9e

    if-lt v0, v3, :cond_b

    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_b

    :goto_7
    sput-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_APP_UPDATE_BADGE:Z

    return-void

    :cond_4
    move v0, v1

    .line 22
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 24
    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 44
    goto/16 :goto_2

    :cond_7
    move v0, v1

    .line 54
    goto/16 :goto_3

    .line 60
    :cond_8
    invoke-static {}, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->isDlnaDmsSupported()Z

    move-result v0

    goto/16 :goto_4

    :cond_9
    move v0, v1

    .line 63
    goto/16 :goto_5

    :cond_a
    move v0, v1

    .line 72
    goto :goto_6

    :cond_b
    move v2, v1

    .line 79
    goto :goto_7
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method
