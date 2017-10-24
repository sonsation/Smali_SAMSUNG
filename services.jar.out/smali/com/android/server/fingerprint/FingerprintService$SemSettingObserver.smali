.class Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;
.super Landroid/database/ContentObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemSettingObserver"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mIsEnabledFpMotion:Z

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Handler;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2316
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    .line 2317
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2319
    :try_start_0
    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->-get0(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 2320
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "fingerprint_navigation"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;->mIsEnabledFpMotion:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 2320
    goto :goto_0

    .line 2321
    :catch_0
    move-exception v0

    .line 2322
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "SemSettingObserver : failed : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public observe()V
    .locals 4

    .prologue
    .line 2339
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "fingerprint_navigation"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    :goto_0
    return-void

    .line 2340
    :catch_0
    move-exception v0

    .line 2341
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "SemSettingObserver : observe : failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2328
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "fingerprint_navigation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;->mIsEnabledFpMotion:Z

    .line 2329
    const-string/jumbo v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemSettingObserver : onChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;->mIsEnabledFpMotion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;->mIsEnabledFpMotion:Z

    if-eqz v0, :cond_1

    .line 2331
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/16 v2, 0xf

    invoke-static {v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap16(Lcom/android/server/fingerprint/FingerprintService;II)V

    .line 2327
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 2328
    goto :goto_0

    .line 2333
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemSettingObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap16(Lcom/android/server/fingerprint/FingerprintService;II)V

    goto :goto_1
.end method
