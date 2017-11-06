.class public Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
.super Ljava/lang/Object;
.source "PrefManager.java"


# static fields
.field private static final DEREG_SEND_DONE:Ljava/lang/String; = "dereg_send_done"

.field private static final DEREG_STATE:Ljava/lang/String; = "dereg_state"

.field private static final IDS_AID:Ljava/lang/String; = "aid"

.field private static final IDS_PID:Ljava/lang/String; = "pid"

.field private static final IDS_PPMTID:Ljava/lang/String; = "ppmtid"

.field private static final IDS_PTYE:Ljava/lang/String; = "ptype"

.field private static final IDS_UID:Ljava/lang/String; = "uid"

.field public static final KEY_COUNTRY_ISO_CODE:Ljava/lang/String; = "ciso"

.field public static final KEY_DEVICE_ID_TYPE:Ljava/lang/String; = "dType"

.field private static final KEY_IS_FIRST_INITIALIZE:Ljava/lang/String; = "isFirstInit"

.field public static final KEY_PUSH_AGREE_CHANGED_TIME:Ljava/lang/String; = "bAgreementDate"

.field private static final KEY_TERMS_AND_CONDITIONS_AGREED:Ljava/lang/String; = "tncAgreed"

.field private static final NOTI_SOUND_ENABLED:Ljava/lang/String; = "noti_sound_enabled"

.field private static final NOTI_SOUND_URI:Ljava/lang/String; = "noti_sound_uri"

.field private static final NOTI_VIBRATE_ENABLED:Ljava/lang/String; = "noti_vibrate_enabled"

.field private static final NOTI_VIBRATE_PATTERN:Ljava/lang/String; = "noti_vibrate_pattern"

.field private static final RETRY_COUNT_CUMULATIVE_DATA:Ljava/lang/String; = "retry_count_cumulative_data"

.field private static final RETRY_COUNT_DEREG:Ljava/lang/String; = "retry_count_dereg"

.field private static final RETRY_COUNT_UPDATED_DATA:Ljava/lang/String; = "retry_count_updated_data"

.field private static sPrefManager:Lcom/samsung/android/sdk/ppmt/storage/PrefManager;


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "Sppmt"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->mPref:Landroid/content/SharedPreferences;

    .line 46
    return-void
.end method

.method private declared-synchronized getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 102
    monitor-enter p0

    if-nez p1, :cond_0

    .line 106
    .end local p2    # "defaultValue":Ljava/lang/Boolean;
    :goto_0
    monitor-exit p0

    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Boolean;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-class v1, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->sPrefManager:Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->sPrefManager:Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    .line 53
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->sPrefManager:Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 110
    monitor-enter p0

    if-nez p1, :cond_0

    .line 114
    .end local p2    # "defaultValue":Ljava/lang/Integer;
    :goto_0
    monitor-exit p0

    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defautValue"    # Ljava/lang/String;

    .prologue
    .line 94
    monitor-enter p0

    if-nez p1, :cond_0

    .line 98
    .end local p2    # "defautValue":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object p2

    .restart local p2    # "defautValue":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    monitor-enter p0

    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_1
    if-eqz p2, :cond_0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 82
    monitor-enter p0

    if-nez p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    if-eqz p2, :cond_0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    monitor-enter p0

    if-nez p1, :cond_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 62
    :try_start_0
    const-string p2, ""

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    monitor-enter p0

    if-nez p1, :cond_0

    .line 123
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getAID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    const-string v0, "aid"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    const-string v0, "ciso"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCumulativeDataRetryCount()I
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "retry_count_cumulative_data"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeregRetryCount()I
    .locals 2

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "retry_count_dereg"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeregSendDone()Z
    .locals 2

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    const-string v0, "dereg_send_done"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeregState()Z
    .locals 2

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    const-string v0, "dereg_state"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceIDType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    const-string v0, "dType"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    const-string v0, "pid"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    const-string v0, "ptype"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPpmtID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    const-string v0, "ppmtid"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPushAgreementTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    const-string v0, "bAgreementDate"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSoundEnabled()Z
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    const-string v0, "noti_sound_enabled"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSoundUriString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    const-string v0, "noti_sound_uri"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "uid"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpdatedDataRetryCount()I
    .locals 2

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "retry_count_updated_data"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVibrateEnabled()Z
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    const-string v0, "noti_vibrate_enabled"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVibratePattern()[J
    .locals 8

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    const-string v5, "noti_vibrate_pattern"

    const-string v6, ""

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 150
    .local v3, "patternString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 152
    .local v4, "returnValue":[J
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, "patternArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v4, v5, [J

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 155
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v4, v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    .end local v2    # "patternArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    monitor-exit p0

    return-object v4

    .line 149
    .end local v3    # "patternString":Ljava/lang/String;
    .end local v4    # "returnValue":[J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public isFirstInit()Z
    .locals 2

    .prologue
    .line 243
    const-string v0, "isFirstInit"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTncAgreed()Z
    .locals 2

    .prologue
    .line 250
    const-string/jumbo v0, "tncAgreed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeCumulativeDataRetryCount()V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "retry_count_cumulative_data"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDeregRetryCount()V
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "retry_count_dereg"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removePrefSettingData()V
    .locals 2

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getDeregState()Z

    move-result v0

    .line 270
    .local v0, "deregStage":Z
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 271
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setDeregState(Z)V

    .line 272
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setDeregSendDone(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 268
    .end local v0    # "deregStage":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeUpdatedDataRetryCount()V
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "retry_count_updated_data"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAID(Ljava/lang/String;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    const-string v0, "aid"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCountryIso(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    const-string v0, "ciso"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCumulativeDataRetryCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "retry_count_cumulative_data"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeregRetryCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "retry_count_dereg"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeregSendDone(Z)V
    .locals 2
    .param p1, "done"    # Z

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    const-string v0, "dereg_send_done"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeregState(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    const-string v0, "dereg_state"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceIDType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    const-string v0, "dType"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsFirstInit(Z)V
    .locals 2
    .param p1, "isFirst"    # Z

    .prologue
    .line 240
    const-string v0, "isFirstInit"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    return-void
.end method

.method public declared-synchronized setPID(Ljava/lang/String;)V
    .locals 1
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    const-string v0, "pid"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPType(Ljava/lang/String;)V
    .locals 1
    .param p1, "pType"    # Ljava/lang/String;

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    const-string v0, "ptype"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPpmtID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    const-string v0, "ppmtid"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPushAgreementTime(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    const-string v0, "bAgreementDate"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSoundEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    const-string v0, "noti_sound_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSoundUriString(Ljava/lang/String;)V
    .locals 1
    .param p1, "uriPath"    # Ljava/lang/String;

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    const-string v0, "noti_sound_uri"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTncAgreed(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 247
    const-string/jumbo v0, "tncAgreed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 248
    return-void
.end method

.method public declared-synchronized setUID(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "uid"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUpdatedDataRetryCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "retry_count_updated_data"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVibrateEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    const-string v0, "noti_vibrate_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVibratePattern([J)V
    .locals 8
    .param p1, "pattern"    # [J

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 143
    .local v5, "patternData":Lorg/json/JSONArray;
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 144
    .local v2, "item":J
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "item":J
    :cond_0
    const-string v6, "noti_vibrate_pattern"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 142
    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "patternData":Lorg/json/JSONArray;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
