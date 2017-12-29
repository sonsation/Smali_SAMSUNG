.class Lcom/android/server/cover/ContextLoggingManager;
.super Ljava/lang/Object;
.source "ContextLoggingManager.java"


# static fields
.field private static final CT_SURVEY_ACTION:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final CT_SURVEY_APP_ID:Ljava/lang/String; = "com.sec.android.cover"

.field private static final CT_SURVEY_CONTENT_VALUE_KEY_APP_ID:Ljava/lang/String; = "app_id"

.field private static final CT_SURVEY_CONTENT_VALUE_KEY_EXTRA:Ljava/lang/String; = "extra"

.field private static final CT_SURVEY_CONTENT_VALUE_KEY_FEATURE:Ljava/lang/String; = "feature"

.field private static final CT_SURVEY_CONTENT_VALUE_KEY_VALUE:Ljava/lang/String; = "value"

.field private static final CT_SURVEY_EXTRA_KEY_DATA:Ljava/lang/String; = "data"

.field static final CT_SURVEY_FEATURE_COVER_ATTACHED:Ljava/lang/String; = "CM03"

.field static final CT_SURVEY_FEATURE_COVER_CLOSE:Ljava/lang/String; = "CM02"

.field static final CT_SURVEY_FEATURE_COVER_OPEN:Ljava/lang/String; = "CM01"

.field private static final CT_SURVEY_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final CT_SURVEY_SERIAL_NUMBER_EXTRA:Ljava/lang/String; = "SERIAL_NUMBER"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/cover/ContextLoggingManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/ContextLoggingManager;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static sendContextServiceLog(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 69
    :cond_0
    return-void

    .line 71
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method static sendContextServiceLogForFeature(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 50
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :cond_0
    return-void

    .line 53
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    sget-object v1, Lcom/android/server/cover/ContextLoggingManager;->TAG:Ljava/lang/String;

    const-string v2, "sendContextServiceLogForFeature - servey mode feature not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 60
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "app_id"

    const-string v2, "com.sec.android.cover"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {p0, v0}, Lcom/android/server/cover/ContextLoggingManager;->sendContextServiceLog(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 49
    return-void
.end method

.method static sendContextServiceLogForSerialNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    return-void

    .line 33
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    sget-object v1, Lcom/android/server/cover/ContextLoggingManager;->TAG:Ljava/lang/String;

    const-string v2, "sendContextServiceLogForSerialNumber - servey mode feature not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 40
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "app_id"

    const-string v2, "com.sec.android.cover"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "feature"

    const-string v2, "CM03"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "extra"

    const-string v2, "SERIAL_NUMBER"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, v0}, Lcom/android/server/cover/ContextLoggingManager;->sendContextServiceLog(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 29
    return-void
.end method
