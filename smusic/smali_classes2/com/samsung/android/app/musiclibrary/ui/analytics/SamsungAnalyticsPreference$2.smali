.class final Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;
.super Ljava/lang/Thread;
.source "SamsungAnalyticsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;->val$key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;->val$value:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 87
    const-string v2, "SamsungAnalyticsPreference"

    const-string/jumbo v3, "setValue - run"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;->val$context:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;->val$key:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->getPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 91
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;->val$key:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$2;->val$value:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
