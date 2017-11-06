.class final Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;
.super Ljava/lang/Thread;
.source "SamsungAnalyticsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    const-string v2, "SamsungAnalyticsPreference"

    const-string/jumbo v3, "setValue - run"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->val$context:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->val$key:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->val$value:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->getPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 71
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->val$value:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
