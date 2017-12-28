.class Lcom/android/launcher3/util/logging/GSIMLogging$PreferencesLogging;
.super Ljava/lang/Object;
.source "GSIMLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/logging/GSIMLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferencesLogging"
.end annotation


# static fields
.field static final prefName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/logging/GSIMLogging$PreferencesLogging;->prefName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWeekOfYearNumber()I
    .locals 5

    .prologue
    .line 276
    sget-object v2, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/launcher3/util/logging/GSIMLogging$PreferencesLogging;->prefName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "week_of_year_number"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 278
    .local v1, "weekofyear":I
    return v1
.end method

.method public static getZeroPageStayTime()J
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    .line 290
    sget-object v3, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 292
    .local v0, "endTime":J
    sget-object v3, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    sget-object v8, Lcom/android/launcher3/util/logging/GSIMLogging$PreferencesLogging;->prefName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 294
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v3, "ZPST"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 295
    .local v4, "startTime":J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v8, "ZPST"

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    cmp-long v3, v4, v0

    if-gtz v3, :cond_0

    .line 298
    sub-long v6, v0, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 301
    :cond_0
    return-wide v6
.end method

.method public static setWeekOfYearNumber(I)V
    .locals 5
    .param p0, "weekofyear"    # I

    .prologue
    .line 268
    sget-object v2, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/launcher3/util/logging/GSIMLogging$PreferencesLogging;->prefName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 269
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "week_of_year_number"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 272
    return-void
.end method

.method public static setZeroPageStartTime()V
    .locals 7

    .prologue
    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 283
    .local v2, "startTime":J
    sget-object v4, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher3/util/logging/GSIMLogging$PreferencesLogging;->prefName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 284
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "ZPST"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    return-void
.end method
