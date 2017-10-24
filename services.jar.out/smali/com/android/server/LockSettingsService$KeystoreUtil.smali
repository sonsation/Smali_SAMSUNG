.class Lcom/android/server/LockSettingsService$KeystoreUtil;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeystoreUtil"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$KeystoreUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$KeystoreUtil;-><init>(Lcom/android/server/LockSettingsService;)V

    return-void
.end method

.method private doMDFPPKeystoreMigration(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 466
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 467
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "password"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string/jumbo v2, "userHandle"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 469
    iget-object v1, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1, p1, p2, v4}, Lcom/android/server/LockSettingsService;->-wrap0(Lcom/android/server/LockSettingsService;Ljava/lang/String;IZ)Z

    move-result v0

    .line 470
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Migration - Result from MDFPP keystore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 471
    return v0
.end method

.method private doUnlock(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 443
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 444
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "password"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string/jumbo v2, "userId"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v0

    .line 449
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Result of keystore unlock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 450
    return v0

    .line 447
    :cond_0
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0
.end method

.method private doUpdate(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 432
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 433
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "password"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "userId"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 435
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 437
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v1

    .line 438
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Result of keystore update : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 439
    return v1
.end method


# virtual methods
.method adjustPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceKeyAdjustment(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method adjustPasswordHash(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 368
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceHashAdjustment(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method adjustPattern(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 323
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "zeroBased":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceKeyAdjustment(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method adjustPatternHash(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 364
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceHashAdjustment(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method doBruteForceHashAdjustment(Ljava/lang/String;II)Z
    .locals 11
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 372
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 373
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "credential"

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    const-string/jumbo v7, "userId"

    aput-object v7, v6, v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-string/jumbo v7, "lockType"

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 375
    const/4 v3, 0x0

    .line 376
    .local v3, "result":Z
    const/4 v2, 0x0

    .line 377
    .local v2, "matched":Z
    const/4 v1, 0x0

    .line 378
    .local v1, "hash":[B
    const/4 v0, 0x0

    .line 380
    .local v0, "encodedCredential":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v6, p2, p3}, Lcom/android/server/LockSettingsService;->-wrap1(Lcom/android/server/LockSettingsService;II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v4

    .line 381
    .local v4, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v6, :cond_2

    .line 382
    :cond_0
    const-string/jumbo v6, "Adjustment - Failed to read hash..."

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 427
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "hash":[B
    .end local v2    # "matched":Z
    .end local v3    # "result":Z
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adjustment - Result of forced adjustment : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 428
    return v3

    .line 381
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    .restart local v1    # "hash":[B
    .restart local v2    # "matched":Z
    .restart local v3    # "result":Z
    :cond_2
    iget-object v6, v4, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v6, v6

    if-eqz v6, :cond_0

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 384
    const-string/jumbo v6, "Adjustment - Empty credential..."

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_3
    if-ne p3, v9, :cond_6

    .line 388
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 387
    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    .line 395
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "hash":[B
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 396
    iget-object v6, v4, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 397
    .end local v2    # "matched":Z
    :cond_5
    if-nez v2, :cond_7

    .line 398
    const-string/jumbo v6, "Adjustment - Credential mismatch..."

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    .restart local v1    # "hash":[B
    .restart local v2    # "matched":Z
    :cond_6
    if-ne p3, v10, :cond_4

    .line 390
    iget-object v6, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v6, p1, p2}, Lcom/android/server/LockSettingsService;->-wrap2(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "encodedCredential":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 392
    iget-object v6, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v6}, Lcom/android/server/LockSettingsService;->-get5(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    .local v1, "hash":[B
    goto :goto_1

    .line 400
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "hash":[B
    .end local v2    # "matched":Z
    :cond_7
    const-string/jumbo v6, "Adjustment - Credential matched..."

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 408
    if-ne p3, v9, :cond_8

    .line 410
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, "zeroBased":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 412
    invoke-direct {p0, v5, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v6

    .line 411
    if-eqz v6, :cond_8

    .line 413
    const/4 v3, 0x1

    goto :goto_0

    .line 416
    .end local v5    # "zeroBased":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v3

    .local v3, "result":Z
    if-nez v3, :cond_1

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 418
    const-string/jumbo v6, "_nullPassword012"

    invoke-direct {p0, v6, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 419
    const-string/jumbo v6, "Adjustment - Unlock failed..."

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 420
    const-string/jumbo v6, "Adjustment - Resetting the keystore..."

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 423
    .end local v3    # "result":Z
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v3, 0x0

    .local v3, "result":Z
    goto/16 :goto_0

    .end local v3    # "result":Z
    :cond_a
    const/4 v3, 0x1

    .restart local v3    # "result":Z
    goto/16 :goto_0
.end method

.method doBruteForceHashMigration(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 295
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 296
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "credential"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "userId"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v2, p1, p2}, Lcom/android/server/LockSettingsService;->-wrap2(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "encodedCredential":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 301
    const-string/jumbo v2, "Migration - Failed to retrieve hash..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 317
    .end local v1    # "result":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Migration - Result of forced migration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 318
    return v1

    .line 303
    .restart local v1    # "result":Z
    :cond_0
    const-string/jumbo v2, "Migration - Passward has been hashed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    :cond_1
    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 311
    .local v1, "result":Z
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    const-string/jumbo v2, "_nullPassword012"

    invoke-direct {p0, v2, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 313
    const-string/jumbo v2, "Migration - Recovery failed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method doBruteForceKeyAdjustment(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 332
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 333
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "credential"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "userId"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v2, p1, p2}, Lcom/android/server/LockSettingsService;->-wrap2(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "encodedCredential":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 338
    const-string/jumbo v2, "Adjustment - Unverified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 359
    .end local v1    # "result":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Migration - Result of forced adjustment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 360
    return v1

    .line 340
    .restart local v1    # "result":Z
    :cond_0
    const-string/jumbo v2, "Adjustment - Verified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    :cond_1
    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 349
    .local v1, "result":Z
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    const-string/jumbo v2, "_nullPassword012"

    invoke-direct {p0, v2, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    const-string/jumbo v2, "Adjustment - Unlock failed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v2, "Adjustment - Resetting the keystore..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 353
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/security/KeyStore;->onUserRemoved(I)V

    goto :goto_1
.end method

.method doBruteForceKeyMigration(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 256
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 257
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "credential"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "userId"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/LockSettingsService$KeystoreUtil;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v2, p1, p2}, Lcom/android/server/LockSettingsService;->-wrap2(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "encodedCredential":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 262
    const-string/jumbo v2, "Migration - Unverified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 280
    .end local v1    # "result":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Migration - Result of forced migration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 281
    return v1

    .line 264
    .restart local v1    # "result":Z
    :cond_0
    const-string/jumbo v2, "Migration - Verified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    :cond_1
    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 272
    .local v1, "result":Z
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    const-string/jumbo v2, "_nullPassword012"

    invoke-direct {p0, v2, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    const-string/jumbo v2, "Migration - Recovery failed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 275
    const-string/jumbo v2, "Migration - Removing the old keystore..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/security/KeyStore;->resetMDFPP(I)Z

    goto :goto_1
.end method

.method isLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 462
    sget-object v0, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isUninitialized(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 454
    sget-object v0, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isUnlocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 458
    sget-object v0, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method migratePassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceKeyMigration(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method migratePasswordHash(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceHashMigration(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method migratePattern(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 247
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "zeroBased":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceKeyMigration(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method migratePatternHash(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 286
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "zeroBased":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->doBruteForceHashMigration(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method
