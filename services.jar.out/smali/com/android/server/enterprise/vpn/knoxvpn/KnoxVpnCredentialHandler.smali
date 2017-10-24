.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
.super Ljava/lang/Object;
.source "KnoxVpnCredentialHandler.java"


# static fields
.field private static final DBG:Z

.field private static final ECRYPTFS_KEY_LENGTH:I = 0x20

.field private static KEYSTORE_FILE_PATH:Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String; = "KnoxVpnCredentialHandler"

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String;

.field private static final USER_ID:I

.field private static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

.field private static mTimaService:Landroid/service/tima/ITimaService;

.field private static timaVersion20:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    .line 51
    const-string/jumbo v0, "FipsTimaKeyStore"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "/data/system/vpn/key"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    .line 55
    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 57
    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "N/A"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 59
    return-void
.end method

.method private deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 4
    .param p1, "in"    # Ljava/io/FileInputStream;
    .param p2, "ks"    # Ljava/security/KeyStore;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 478
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    new-instance p1, Ljava/io/FileInputStream;

    .end local p1    # "in":Ljava/io/FileInputStream;
    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 483
    .restart local p1    # "in":Ljava/io/FileInputStream;
    :cond_0
    invoke-virtual {p2, p1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 485
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 489
    :cond_1
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 490
    .local v0, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    .line 491
    if-eqz p1, :cond_2

    .line 492
    const-string/jumbo v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "deleteing key store file."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 476
    :cond_2
    return-void
.end method

.method private generateEcryptfsKey(Ljava/lang/String;)[B
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 358
    if-nez p1, :cond_0

    .line 359
    return-object v5

    .line 361
    :cond_0
    const/4 v1, 0x0

    .line 363
    .local v1, "ecryptfsKey":[B
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->generateSalt()[B

    move-result-object v4

    .line 364
    .local v4, "salt":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "HmacSHA256"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 365
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v5, "HmacSHA256"

    const-string/jumbo v6, "AndroidOpenSSL"

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 366
    .local v2, "hmac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 373
    .end local v1    # "ecryptfsKey":[B
    .end local v2    # "hmac":Ljavax/crypto/Mac;
    .end local v3    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "salt":[B
    :goto_0
    return-object v1

    .line 369
    .restart local v1    # "ecryptfsKey":[B
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    :cond_1
    const-string/jumbo v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "Error inside generateCMK "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateSalt()[B
    .locals 3

    .prologue
    .line 388
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 389
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x20

    new-array v1, v2, [B

    .line 390
    .local v1, "salt":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 391
    return-object v1
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "password":Ljava/lang/String;
    const/4 v1, 0x0

    .line 379
    .local v1, "pwd":[C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 380
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 381
    .local v1, "pwd":[C
    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v2

    .line 383
    .local v1, "pwd":[C
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 397
    :cond_0
    const/4 v2, 0x0

    .line 398
    .local v2, "ks":Ljava/security/KeyStore;
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStoreName()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "tksName":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 401
    .local v2, "ks":Ljava/security/KeyStore;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    return-object v2

    .line 405
    .end local v2    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to load TKS instance..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    throw v0

    .line 402
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 403
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get TKS instance..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    throw v1
.end method

.method private getTimaKeyStoreName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 293
    const-string/jumbo v0, "N/A"

    .line 294
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    const-string/jumbo v0, "TIMAKeyStore"

    .line 302
    :cond_0
    :goto_0
    const-string/jumbo v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaKeyStoreName() - Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-object v0

    .line 294
    :cond_1
    const-string/jumbo v2, "FIPS3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string/jumbo v0, "FipsTimaKeyStore"

    goto :goto_0
.end method

.method private static getTimaService()Landroid/service/tima/ITimaService;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    .line 75
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    return-object v0
.end method

.method private getTimaStatus()I
    .locals 6

    .prologue
    .line 307
    const/4 v2, -0x1

    .line 308
    .local v2, "timaStatus":I
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v4, "N/A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 311
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 312
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v4, "2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 314
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v2

    .line 315
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    :cond_1
    :goto_0
    const-string/jumbo v3, "KnoxVpnCredentialHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimaStatus() - Tima Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v2

    .line 312
    :cond_2
    :try_start_1
    const-string/jumbo v4, "3.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 318
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->KeyStore3_init()I

    move-result v2

    goto :goto_0

    .line 312
    :cond_3
    const-string/jumbo v4, "FIPS3.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 321
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I

    move-result v2

    goto :goto_0

    .line 324
    :cond_4
    const-string/jumbo v3, "KnoxVpnCredentialHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V
    .locals 2
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "in"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 468
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    new-instance p2, Ljava/io/FileInputStream;

    .end local p2    # "in":Ljava/io/FileInputStream;
    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 472
    .restart local p2    # "in":Ljava/io/FileInputStream;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 467
    return-void
.end method

.method private retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x20

    .line 414
    const/4 v5, 0x0

    .line 415
    .local v5, "ret":Ljava/lang/String;
    const/4 v3, 0x0

    .line 416
    .local v3, "key":[B
    new-array v0, v7, [B

    .line 417
    .local v0, "ecryptfsKey":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 418
    .local v8, "token":J
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    .line 419
    .local v6, "timaService":Landroid/service/tima/ITimaService;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 420
    .local v4, "profileIndex":I
    if-eqz v6, :cond_1

    .line 422
    :try_start_0
    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    .line 423
    .local v1, "error":I
    const-string/jumbo v7, "KnoxVpnCredentialHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "retrieveCredentialsFromTima20 errorCode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez v1, :cond_0

    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 425
    invoke-interface {v6, v4}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v3

    .line 426
    .local v3, "key":[B
    if-eqz v3, :cond_0

    const/4 v7, 0x0

    aget-byte v7, v3, v7

    if-nez v7, :cond_0

    .line 427
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x20

    invoke-static {v3, v7, v0, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 428
    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 431
    .end local v3    # "key":[B
    .end local v5    # "ret":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    .end local v1    # "error":I
    :goto_0
    return-object v5

    .line 432
    :catch_0
    move-exception v2

    .line 433
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 434
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    .line 435
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    throw v7

    .line 439
    .local v3, "key":[B
    .restart local v5    # "ret":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method private storeCredentials(Ljava/lang/String;[B)Z
    .locals 12
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    const/4 v11, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    .local v5, "result":Z
    const/4 v4, 0x0

    .line 99
    .local v4, "ks":Ljava/security/KeyStore;
    const/4 v2, 0x0

    .line 101
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 124
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "Tima status is unknown"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 126
    .local v4, "ks":Ljava/security/KeyStore;
    invoke-direct {p0, v4, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    .line 129
    :goto_0
    if-eqz p2, :cond_2

    .line 130
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v8, ""

    invoke-direct {v6, p2, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 131
    .local v6, "secretKey":Ljavax/crypto/SecretKey;
    new-instance v7, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v7, v6}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 132
    .local v7, "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v4, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 133
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "An entry is already present, deleting it and updating the name"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    invoke-virtual {v4, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 136
    :cond_1
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v8

    invoke-virtual {v4, p1, v7, v8}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    const/4 v5, 0x1

    .line 150
    .end local v6    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v7    # "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_2
    if-nez v4, :cond_3

    .line 151
    :try_start_1
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 157
    .end local v4    # "ks":Ljava/security/KeyStore;
    :cond_3
    :goto_1
    return v5

    .line 103
    .local v4, "ks":Ljava/security/KeyStore;
    :sswitch_0
    :try_start_2
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v9, "2.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentialsForTima20(Ljava/lang/String;[B)Z
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .line 151
    :try_start_3
    const-string/jumbo v9, "KnoxVpnCredentialHandler"

    const-string/jumbo v10, "storeCredentials :: Null keystore..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 105
    :goto_2
    return v8

    .line 103
    :cond_4
    :try_start_4
    const-string/jumbo v9, "3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 107
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    .local v4, "ks":Ljava/security/KeyStore;
    goto :goto_0

    .line 103
    .local v4, "ks":Ljava/security/KeyStore;
    :cond_5
    const-string/jumbo v9, "FIPS3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .local v4, "ks":Ljava/security/KeyStore;
    goto :goto_0

    .line 153
    .local v4, "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v3

    .line 154
    .local v3, "ioe":Ljava/io/IOException;
    const-string/jumbo v9, "KnoxVpnCredentialHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 113
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_6
    :try_start_5
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "unknown TIMA Version"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    :try_start_6
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 114
    :goto_3
    return v11

    .line 153
    :catch_1
    move-exception v3

    .line 154
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 121
    .end local v3    # "ioe":Ljava/io/IOException;
    :sswitch_1
    :try_start_7
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "TIMA Compromised"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 151
    :try_start_8
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 122
    :goto_4
    return v11

    .line 153
    :catch_2
    move-exception v3

    .line 154
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 153
    .end local v3    # "ioe":Ljava/io/IOException;
    .local v4, "ks":Ljava/security/KeyStore;
    :catch_3
    move-exception v3

    .line 154
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 142
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ks":Ljava/security/KeyStore;
    :catch_4
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "Exception occured while trying to store the info inside keystore"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v8, :cond_7

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 150
    :cond_7
    if-nez v4, :cond_3

    .line 151
    :try_start_a
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 153
    :catch_5
    move-exception v3

    .line 154
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 140
    .local v1, "e":Ljava/security/KeyStoreException;
    :try_start_b
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "KeyStoreException occured while trying to store the info inside keystore"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v8, :cond_8

    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 150
    :cond_8
    if-nez v4, :cond_3

    .line 151
    :try_start_c
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_1

    .line 153
    :catch_7
    move-exception v3

    .line 154
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 145
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 150
    if-nez v4, :cond_9

    .line 151
    :try_start_d
    const-string/jumbo v9, "KnoxVpnCredentialHandler"

    const-string/jumbo v10, "storeCredentials :: Null keystore..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 145
    :cond_9
    :goto_5
    throw v8

    .line 153
    :catch_8
    move-exception v3

    .line 154
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string/jumbo v9, "KnoxVpnCredentialHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000c -> :sswitch_1
        0x1000d -> :sswitch_1
        0x1000e -> :sswitch_1
        0x1000f -> :sswitch_1
    .end sparse-switch
.end method

.method private storeCredentialsForTima20(Ljava/lang/String;[B)Z
    .locals 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    const/4 v9, 0x0

    .line 443
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    .line 444
    .local v3, "timaService":Landroid/service/tima/ITimaService;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 445
    .local v2, "profileIndex":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 446
    .local v4, "token":J
    if-eqz v3, :cond_2

    .line 448
    :try_start_0
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v0

    .line 449
    .local v0, "error":I
    const-string/jumbo v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "storeCredentialsForTima20 errorCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    if-nez v0, :cond_0

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 451
    invoke-interface {v3, v2, p2}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    .line 453
    :cond_0
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 460
    const/4 v6, 0x1

    return v6

    .line 454
    .end local v0    # "error":I
    :catch_0
    move-exception v1

    .line 455
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 456
    return v9

    .line 457
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 458
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    throw v6

    .line 462
    :cond_2
    const-string/jumbo v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "storeCredentialsForTima20 failed returning false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return v9
.end method

.method private updateTimaVersion()V
    .locals 4

    .prologue
    .line 338
    const-string/jumbo v1, "N/A"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    .line 339
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    :try_start_0
    const-string/jumbo v1, "2.0"

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    .line 342
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    if-eqz v1, :cond_1

    .line 343
    const-string/jumbo v1, "2.0"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    const-string/jumbo v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTimaVersion() - Tima Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    return-void

    .line 345
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    const-string/jumbo v1, "FIPS3.0"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "re":Ljava/lang/Exception;
    const-string/jumbo v1, "KnoxVpnCredentialHandler"

    const-string/jumbo v2, "updateTimaVersion() : Unable to get tima version"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 348
    .end local v0    # "re":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string/jumbo v1, "3.0"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected deleteCredentialsFromKeystore(Ljava/lang/String;)V
    .locals 14
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 227
    const/4 v5, 0x0

    .line 228
    .local v5, "in":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 229
    .local v7, "ks":Ljava/security/KeyStore;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 231
    .local v8, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 254
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "Tima status is unknown"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 256
    .local v7, "ks":Ljava/security/KeyStore;
    invoke-direct {p0, v5, v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    if-nez v7, :cond_0

    .line 283
    :try_start_1
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 288
    :cond_0
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    return-void

    .line 233
    .local v7, "ks":Ljava/security/KeyStore;
    :sswitch_0
    :try_start_2
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v11, "2.0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-eqz v11, :cond_1

    .line 283
    :try_start_3
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 288
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    return-void

    .line 233
    :cond_1
    :try_start_4
    const-string/jumbo v11, "3.0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 237
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v7

    .line 259
    .local v7, "ks":Ljava/security/KeyStore;
    :goto_2
    if-eqz v7, :cond_2

    invoke-virtual {v7, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 260
    invoke-virtual {v7, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    :cond_2
    if-nez v7, :cond_3

    .line 283
    :try_start_5
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 288
    :cond_3
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    .end local v7    # "ks":Ljava/security/KeyStore;
    :goto_4
    return-void

    .line 233
    .local v7, "ks":Ljava/security/KeyStore;
    :cond_4
    :try_start_6
    const-string/jumbo v11, "FIPS3.0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 240
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    .local v7, "ks":Ljava/security/KeyStore;
    goto :goto_2

    .line 285
    .local v7, "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v6

    .line 286
    .local v6, "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_5
    :try_start_7
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "unknown TIMA Version"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 283
    :try_start_8
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 288
    :goto_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    return-void

    .line 285
    :catch_1
    move-exception v6

    .line 286
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 251
    .end local v6    # "ioe":Ljava/io/IOException;
    :sswitch_1
    :try_start_9
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "TIMA Compromised"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 283
    :try_start_a
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 288
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    return-void

    .line 285
    :catch_2
    move-exception v6

    .line 286
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 285
    .end local v6    # "ioe":Ljava/io/IOException;
    .local v7, "ks":Ljava/security/KeyStore;
    :catch_3
    move-exception v6

    .line 286
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 286
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 274
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v7    # "ks":Ljava/security/KeyStore;
    :catch_5
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    :try_start_b
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    :cond_6
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "Exception occured while trying to delete the info from keystore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 282
    if-nez v7, :cond_7

    .line 283
    :try_start_c
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 288
    :cond_7
    :goto_7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    .line 285
    :catch_6
    move-exception v6

    .line 286
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 271
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/IOException;
    :try_start_d
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v10, :cond_8

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 273
    :cond_8
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "IOException occured while trying to delete the info from keystore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 282
    if-nez v7, :cond_9

    .line 283
    :try_start_e
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 288
    :cond_9
    :goto_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    .line 285
    :catch_8
    move-exception v6

    .line 286
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 268
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 269
    .local v4, "e":Ljava/security/cert/CertificateException;
    :try_start_f
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v10, :cond_a

    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 270
    :cond_a
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "CertificateException occured while trying to delete the info from keystore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 282
    if-nez v7, :cond_b

    .line 283
    :try_start_10
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 288
    :cond_b
    :goto_9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    .line 285
    :catch_a
    move-exception v6

    .line 286
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 265
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_b
    move-exception v3

    .line 266
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_11
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v10, :cond_c

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 267
    :cond_c
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "NoSuchAlgorithmException occured while trying to delete the info from keystore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 282
    if-nez v7, :cond_d

    .line 283
    :try_start_12
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 288
    :cond_d
    :goto_a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    .line 285
    :catch_c
    move-exception v6

    .line 286
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 262
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_d
    move-exception v2

    .line 263
    .local v2, "e":Ljava/security/KeyStoreException;
    :try_start_13
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v10, :cond_e

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 264
    :cond_e
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "KeyStoreException occured while trying to delete the info from keystore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 282
    if-nez v7, :cond_f

    .line 283
    :try_start_14
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e

    .line 288
    :cond_f
    :goto_b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    .line 285
    :catch_e
    move-exception v6

    .line 286
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 277
    .end local v2    # "e":Ljava/security/KeyStoreException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 282
    if-nez v7, :cond_10

    .line 283
    :try_start_15
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v12, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    .line 288
    :cond_10
    :goto_c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    throw v10

    .line 285
    :catch_f
    move-exception v6

    .line 286
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to close input stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000c -> :sswitch_1
        0x1000d -> :sswitch_1
        0x1000e -> :sswitch_1
        0x1000f -> :sswitch_1
    .end sparse-switch
.end method

.method protected retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "retrieveCredentialsFromKeystore alias retrieved is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    const/4 v8, 0x0

    .line 163
    .local v8, "key":Ljava/lang/String;
    const/4 v10, 0x0

    .line 164
    .local v10, "ks":Ljava/security/KeyStore;
    const/4 v6, 0x0

    .line 165
    .local v6, "in":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 167
    .local v12, "token":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 190
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "Tima status is unknown"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    .line 192
    .local v10, "ks":Ljava/security/KeyStore;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    .line 195
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 196
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    check-cast v5, Ljava/security/KeyStore$SecretKeyEntry;

    .line 197
    .local v5, "entry":Ljava/security/KeyStore$SecretKeyEntry;
    if-eqz v5, :cond_1

    .line 198
    invoke-virtual {v5}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v11

    invoke-interface {v11}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 199
    .local v2, "bytesReceived":[B
    if-eqz v2, :cond_1

    .line 200
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v9, "key":Ljava/lang/String;
    move-object v8, v9

    .line 215
    .end local v2    # "bytesReceived":[B
    .end local v5    # "entry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    :cond_1
    if-nez v10, :cond_2

    .line 216
    :try_start_1
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 221
    :cond_2
    :goto_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    .end local v10    # "ks":Ljava/security/KeyStore;
    :goto_2
    return-object v8

    .line 169
    .restart local v8    # "key":Ljava/lang/String;
    .local v10, "ks":Ljava/security/KeyStore;
    :sswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v14, "2.0"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 171
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 216
    :try_start_3
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    const-string/jumbo v15, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 221
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    return-object v11

    .line 169
    :cond_3
    :try_start_4
    const-string/jumbo v14, "3.0"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v10

    .local v10, "ks":Ljava/security/KeyStore;
    goto :goto_0

    .line 169
    .local v10, "ks":Ljava/security/KeyStore;
    :cond_4
    const-string/jumbo v14, "FIPS3.0"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v10

    .local v10, "ks":Ljava/security/KeyStore;
    goto :goto_0

    .line 218
    .local v10, "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v7

    .line 219
    .local v7, "ioe":Ljava/io/IOException;
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to close input stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 179
    .end local v7    # "ioe":Ljava/io/IOException;
    :cond_5
    :try_start_5
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "unknown TIMA Version"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 162
    const/4 v11, 0x0

    .line 216
    :try_start_6
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    const-string/jumbo v15, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 221
    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    return-object v11

    .line 218
    :catch_1
    move-exception v7

    .line 219
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to close input stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 187
    .end local v7    # "ioe":Ljava/io/IOException;
    :sswitch_1
    :try_start_7
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "TIMA Comprimised"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 162
    const/4 v11, 0x0

    .line 216
    :try_start_8
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    const-string/jumbo v15, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 221
    :goto_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    return-object v11

    .line 218
    :catch_2
    move-exception v7

    .line 219
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to close input stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 218
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v8    # "key":Ljava/lang/String;
    .local v10, "ks":Ljava/security/KeyStore;
    :catch_3
    move-exception v7

    .line 219
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to close input stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 207
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v10    # "ks":Ljava/security/KeyStore;
    .restart local v8    # "key":Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 208
    .local v3, "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "Exception occured while trying to retrieve the info from keystore"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v11, :cond_6

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 215
    :cond_6
    if-nez v10, :cond_7

    .line 216
    :try_start_a
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 221
    :cond_7
    :goto_6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 218
    :catch_5
    move-exception v7

    .line 219
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to close input stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 204
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 205
    .local v4, "e":Ljava/security/KeyStoreException;
    :try_start_b
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "KeyStoreException occured while trying to retrieve the info from keystore"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v11, :cond_8

    invoke-virtual {v4}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 215
    :cond_8
    if-nez v10, :cond_9

    .line 216
    :try_start_c
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 221
    :cond_9
    :goto_7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 218
    :catch_7
    move-exception v7

    .line 219
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to close input stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 210
    .end local v4    # "e":Ljava/security/KeyStoreException;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 215
    if-nez v10, :cond_a

    .line 216
    :try_start_d
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    const-string/jumbo v15, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 221
    :cond_a
    :goto_8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    throw v11

    .line 218
    :catch_8
    move-exception v7

    .line 219
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to close input stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000c -> :sswitch_1
        0x1000d -> :sswitch_1
        0x1000e -> :sswitch_1
        0x1000f -> :sswitch_1
    .end sparse-switch
.end method

.method protected storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "status":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 82
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 83
    .local v1, "updatedKey":[B
    if-eqz v1, :cond_1

    .line 84
    const-string/jumbo v4, "N/A"

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 87
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentials(Ljava/lang/String;[B)Z

    move-result v0

    .line 88
    .local v0, "status":Z
    const-string/jumbo v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storeCredentialsInKeystore status key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v0    # "status":Z
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    return v0

    .line 90
    .end local v1    # "updatedKey":[B
    :catchall_0
    move-exception v4

    .line 91
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    throw v4
.end method
