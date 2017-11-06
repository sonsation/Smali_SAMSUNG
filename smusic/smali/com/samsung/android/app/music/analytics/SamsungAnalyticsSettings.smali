.class public Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;
.super Ljava/lang/Object;
.source "SamsungAnalyticsSettings.java"


# static fields
.field private static final DEFAULT_SPEED:F = 1.0f

.field private static final HIGH:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungAnalyticsSettings"

.field private static final LOW:I = 0x0

.field private static final MIDDLE:I = 0x1

.field private static final ONE_DAY:J = 0x5265c00L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;->getMusicServicePref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # F

    .prologue
    .line 47
    invoke-static {p0}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;->getPlaySpeedText(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;->getMusicUiPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getMusicServicePref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v0, "music_service_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getMusicUiPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getPlaySpeedText(F)Ljava/lang/String;
    .locals 6
    .param p0, "playSpeed"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 69
    const-string/jumbo v0, "x%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    .line 70
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 69
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDailyLogging(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    const-string v0, "SamsungAnalyticsSettings"

    const-string/jumbo v1, "setDailyLogging"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {v0}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;->start()V

    .line 353
    return-void
.end method

.method public static setSettingsAnalytics(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const-string v1, "SamsungAnalyticsSettings"

    const-string/jumbo v2, "setSettingsAnalytics"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->getPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "is_default_setting_value"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 76
    .local v0, "isSetDefaultValue":Z
    if-eqz v0, :cond_0

    .line 77
    const-string v1, "SamsungAnalyticsSettings"

    const-string/jumbo v2, "setSettingsAnalytics - isSetDefaultValue is true"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {v1}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$1;->start()V

    goto :goto_0
.end method
