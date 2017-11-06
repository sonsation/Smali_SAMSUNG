.class public final Lcom/samsung/android/app/musiclibrary/core/utils/PerformanceModeUtils;
.super Ljava/lang/Object;
.source "PerformanceModeUtils.java"


# static fields
.field private static final DISPLAY:I = 0x3

.field private static final ENTERTAINMENT:I = 0x2

.field private static final GAME:I = 0x1

.field private static final NORMAL:I = 0x0

.field private static final ULTIMATE:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method private static getPerformanceMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    sget-object v1, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Secure;->PERFORMANCE_MODE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Secure;->PERFORMANCE_MODE:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static isEntertainmentMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/PerformanceModeUtils;->getPerformanceMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
