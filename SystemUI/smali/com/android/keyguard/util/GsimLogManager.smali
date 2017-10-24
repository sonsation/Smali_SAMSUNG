.class public final Lcom/android/keyguard/util/GsimLogManager;
.super Ljava/lang/Object;
.source "GsimLogManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Integer;

    .prologue
    .line 240
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "app_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eqz p2, :cond_0

    .line 244
    const-string/jumbo v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    if-eqz p3, :cond_1

    .line 246
    const-string/jumbo v1, "value"

    invoke-virtual {p3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    :cond_1
    return-object v0
.end method

.method public static sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Integer;

    .prologue
    .line 197
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_GSIM_LOG:Z

    if-nez v1, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/keyguard/util/GsimLogManager;->buildContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v0

    .line 201
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-static {p0, v1, v0, v2}, Lcom/android/keyguard/util/GsimLogManager;->sendLogBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private static sendLogBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "pkName"    # Ljava/lang/String;

    .prologue
    .line 251
    new-instance v0, Lcom/android/keyguard/util/GsimLogManager$1;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/keyguard/util/GsimLogManager$1;-><init>(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/GsimLogManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 250
    return-void
.end method

.method public static sendStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Integer;

    .prologue
    .line 216
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_GSIM_LOG:Z

    if-nez v1, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/keyguard/util/GsimLogManager;->buildContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v0

    .line 220
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-static {p0, v1, v0, v2}, Lcom/android/keyguard/util/GsimLogManager;->sendLogBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 215
    return-void
.end method
