.class public Lcom/samsung/android/rlc/util/PreferencesUtil;
.super Ljava/lang/Object;
.source "PreferencesUtil.java"


# static fields
.field public static final BACKOFF_MAX_VALUE:I = 0x36ee80

.field public static final CALL_CHECK_API:Ljava/lang/String; = "callcheckapi"

.field public static final CHECK_BACKOFF:Ljava/lang/String; = "check_backoff"

.field private static final CLEAR_RLC_KEY:Ljava/lang/String; = "clear_rlc"

.field public static final DEFAULT_BACKOFF:Ljava/lang/String; = "1000"

.field public static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final DEFAULT_VALUE_BOOLEAN:Z = false

.field public static final DELIVERY_BACKOFF:Ljava/lang/String; = "delivery_backoff"

.field private static final DELIVERY_URLKEY:Ljava/lang/String; = "delivery_urlkey"

.field private static final DM_URLKEY:Ljava/lang/String; = "dm_urlkey"

.field public static final DOWNLOAD_ICON:Ljava/lang/String; = "image_url"

.field private static final EMPTY:I = -0x1

.field private static final FALSE:I = 0x0

.field public static final GCM_BACKOFF:Ljava/lang/String; = "gcm_backoff"

.field public static final GCM_MG_REGISTRATION_BACKOFF:Ljava/lang/String; = "gcm_mg_registration_backoff"

.field private static final MG_STATE_REGISTRATION:Ljava/lang/String; = "MGRegistered"

.field private static final PCW_CLIENT_VERSION:Ljava/lang/String; = "rlc_client_version"

.field private static final PREFERENCE:Ljava/lang/String; = "com.samsung.android.rlc"

.field private static final REGISTRATION:Ljava/lang/String; = "registration"

.field public static final RESULT_REPORT_BACKOFF:Ljava/lang/String; = "report_backoff"

.field public static final SPP_BACKOFF:Ljava/lang/String; = "spp_backoff"

.field public static final SPP_MG_REGISTRATION_BACKOFF:Ljava/lang/String; = "spp_mg_registration_backoff"

.field public static final TAG:Ljava/lang/String;

.field private static final TRUE:I = 0x1

.field public static final UNLOCK_BACKOFF:Ljava/lang/String; = "unlock_backoff"

.field public static final VALID_ID:Ljava/lang/String; = "valid_Id"

.field static handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/rlc/util/PreferencesUtil;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCheckBackoff(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 226
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string/jumbo v1, "check_backoff"

    const-string/jumbo v2, "1000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static clearDeliveryBackoff(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 239
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string/jumbo v1, "delivery_backoff"

    const-string/jumbo v2, "1000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    return-void

    .line 240
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static clearGCMBackoff(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 165
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string/jumbo v1, "gcm_backoff"

    const-string/jumbo v2, "1000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    return-void

    .line 166
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static clearGCMMgRegistrationBackoff(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 195
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string/jumbo v1, "gcm_mg_registration_backoff"

    const-string/jumbo v2, "1000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    return-void

    .line 196
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static clearRegistraionID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "registration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static clearSPPBackoff(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 180
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string/jumbo v1, "spp_backoff"

    const-string/jumbo v2, "1000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    return-void

    .line 181
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static clearSPPMgRegistrationBackoff(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 211
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string/jumbo v1, "spp_mg_registration_backoff"

    const-string/jumbo v2, "1000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    return-void

    .line 212
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string/jumbo v1, "GCM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getDeliveryURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0

    .line 115
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static getRegistraionID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "registration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 249
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 247
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "1000"

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 322
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    sget-object v1, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Get Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-object v0

    .line 320
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static declared-synchronized isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/samsung/android/rlc/util/PreferencesUtil;

    monitor-enter v1

    .line 293
    :try_start_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 297
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->isRegistered(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Y"

    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v1

    .line 304
    return v3

    .line 294
    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    .line 299
    return v3

    .line 302
    :cond_2
    const/4 v0, 0x1

    monitor-exit v1

    return v0
.end method

.method public static isRlcClear(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string/jumbo v1, "clear_rlc"

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized markMGRegistered(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const-class v0, Lcom/samsung/android/rlc/util/PreferencesUtil;

    monitor-enter v0

    const/4 v1, 0x1

    .line 284
    :try_start_0
    invoke-static {p0, v1, p1, p2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->saveMGRegistrationStatus(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 285
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static saveMGRegistrationStatus(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 276
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    sget-object v1, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string/jumbo v0, "N"

    :goto_1
    invoke-virtual {v1, v0, p2, p3}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->updateRegStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void

    .line 277
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Y"

    goto :goto_1
.end method

.method public static setRegistraionID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "registration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    return-void

    .line 259
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static setRlcClear(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 131
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRlcClear  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    sget-object v1, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string/jumbo v2, "clear_rlc"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "false"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    return-void

    .line 133
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "true"

    goto :goto_1
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 338
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-eqz v0, :cond_0

    .line 341
    :goto_0
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 342
    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get Key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void

    .line 339
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    goto :goto_0
.end method

.method public static declared-synchronized unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const-class v1, Lcom/samsung/android/rlc/util/PreferencesUtil;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v2, ""

    .line 288
    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->saveMGRegistrationStatus(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 289
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
