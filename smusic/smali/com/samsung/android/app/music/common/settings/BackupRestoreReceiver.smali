.class public Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupRestoreReceiver.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/settings/BackupRestoreConstant;


# static fields
.field private static final AES:Ljava/lang/String; = "AES"

.field private static final AES_FIXED_BLOCK_SIZE:I = 0x10

.field private static final CIPHER_TRANSFORMATION:Ljava/lang/String; = "AES/CBC/NoPadding"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-Backup"

.field private static final NAME_SPACE:Ljava/lang/String; = "http://www.samsung.com/app/music/settings"

.field private static final PBKDF2_SHA1:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final READ_BUFFER:I = 0x400

.field private static final ROOT_TAG:Ljava/lang/String; = "MusicSettings"

.field private static final SETTING_FILE_NAME:Ljava/lang/String; = "music_settings.xml"

.field private static final SHA_256:Ljava/lang/String; = "SHA-256"

.field private static final TEST_MODE_ENCRYPTION_MAKE_FILE:Z = false

.field private static final TEST_MODE_NO_ENCRYPTION:Z = false

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->handleBackupRequest(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;Landroid/content/Context;IIILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->sendBackupResponse(Landroid/content/Context;IIILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->handleRestoreRequest(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;Landroid/content/Context;IIILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->sendRestoreResponse(Landroid/content/Context;IIILandroid/os/Bundle;)V

    return-void
.end method

.method private backupStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->getMusicSettings(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 265
    .local v0, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->saveEncryptedFile(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 422
    const-string v5, "AES/CBC/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 425
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v1, v5, [B

    .line 426
    .local v1, "iv":[B
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 428
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 431
    .local v4, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    if-lez p3, :cond_0

    .line 432
    const/16 v5, 0x10

    new-array v3, v5, [B

    .line 433
    .local v3, "salt":[B
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 434
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->generatePBKDF2SecretKey(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .line 441
    .end local v3    # "salt":[B
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 442
    new-instance v5, Ljavax/crypto/CipherInputStream;

    invoke-direct {v5, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v5

    .line 437
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .restart local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0
.end method

.method private encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 368
    const-string v5, "AES/CBC/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 371
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v1, v5, [B

    .line 372
    .local v1, "iv":[B
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 373
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 376
    .local v4, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 379
    if-lez p3, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->generateEncryptSalt()[B

    move-result-object v3

    .line 381
    .local v3, "salt":[B
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 382
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->generatePBKDF2SecretKey(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .line 389
    .end local v3    # "salt":[B
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 390
    new-instance v5, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v5, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v5

    .line 385
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .restart local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0
.end method

.method private generateEncryptSalt()[B
    .locals 3

    .prologue
    .line 402
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 403
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 404
    .local v0, "salt":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 405
    return-object v0
.end method

.method private generatePBKDF2SecretKey(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 410
    const/16 v1, 0x3e8

    .line 411
    .local v1, "iterationCount":I
    const/16 v4, 0x100

    .line 412
    .local v4, "keyLength":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 414
    .local v0, "chars":[C
    const-string v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 415
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, v0, p2, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 416
    .local v5, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 417
    .local v2, "key":Ljavax/crypto/SecretKey;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method private generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 394
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 395
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 396
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 397
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private getMusicSettings(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 527
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->getServicePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 528
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "play_speed"

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    .line 529
    .local v8, "speed":F
    const-string/jumbo v9, "smart_volume"

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 530
    .local v7, "smartVolume":Z
    const-string/jumbo v9, "skip_silences"

    .line 531
    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 532
    .local v6, "skipSilence":Z
    const-string v9, "lock_screen"

    .line 533
    invoke-static {v3, p1}, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->checkLockScreenDefaultValue(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v10

    .line 532
    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 535
    .local v2, "lockScreen":Z
    const-string/jumbo v9, "screen_off_music"

    invoke-interface {v3, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 536
    const-string/jumbo v9, "screen_off_music"

    .line 537
    invoke-interface {v3, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 543
    .local v4, "screenOffMusic":Z
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 544
    .local v5, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "play_speed"

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string/jumbo v9, "smart_volume"

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string/jumbo v9, "skip_silences"

    .line 547
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    .line 546
    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v9, "lock_screen"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string/jumbo v9, "screen_off_music"

    .line 550
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    .line 549
    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/TabUtils;->getEnabledTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "enabledTabs":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/TabUtils;->getAllTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "allTabs":Ljava/lang/String;
    const-string/jumbo v9, "tab_menu_list"

    invoke-virtual {v5, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string/jumbo v9, "tab_menu_list_order"

    invoke-virtual {v5, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v9, "SMUSIC-Backup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Music settings play speed :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " smart volume : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " lock screen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " screen off music : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tab : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " allTab "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-object v5

    .line 539
    .end local v0    # "allTabs":Ljava/lang/String;
    .end local v1    # "enabledTabs":Ljava/lang/String;
    .end local v4    # "screenOffMusic":Z
    .end local v5    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v9

    const-string/jumbo v10, "screen_off_music"

    .line 540
    invoke-virtual {v9, v10, v12}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .restart local v4    # "screenOffMusic":Z
    goto/16 :goto_0
.end method

.method private getServicePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 522
    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getSettingElements(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 447
    .local v0, "node":Lorg/w3c/dom/Element;
    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 448
    return-object v0
.end method

.method private handleBackupRequest(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 243
    const-string v5, "ACTION"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 244
    .local v1, "operation":I
    packed-switch v1, :pswitch_data_0

    .line 255
    :pswitch_0
    const-string v4, "SMUSIC-Backup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Sender\'s extra action is unknown. Please check backup request. operation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v4, 0x3

    .line 260
    :goto_0
    :pswitch_1
    return v4

    .line 246
    :pswitch_2
    const-string v5, "SAVE_PATH"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "path":Ljava/lang/String;
    const-string v5, "SESSION_KEY"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "key":Ljava/lang/String;
    const-string v5, "SECURITY_LEVEL"

    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 249
    .local v3, "securityLevel":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "music_settings.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v0, v3}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->backupStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRestoreRequest(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 137
    const-string v5, "ACTION"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, "operation":I
    packed-switch v1, :pswitch_data_0

    .line 149
    :pswitch_0
    const-string v4, "SMUSIC-Backup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Sender\'s extra action is unknown. Please check restore request. operation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v4, 0x3

    .line 154
    :goto_0
    :pswitch_1
    return v4

    .line 140
    :pswitch_2
    const-string v5, "SAVE_PATH"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "path":Ljava/lang/String;
    const-string v5, "SESSION_KEY"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "key":Ljava/lang/String;
    const-string v5, "SECURITY_LEVEL"

    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 143
    .local v3, "securityLevel":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "music_settings.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v0, v3}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->restoreStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parsingSettingXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 204
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 205
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 207
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 208
    .local v6, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "UTF-8"

    invoke-interface {v6, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 210
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 211
    .local v2, "eventType":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v4, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 213
    .local v0, "currentTag":Ljava/lang/String;
    :goto_0
    if-eq v2, v10, :cond_5

    .line 214
    if-nez v2, :cond_1

    .line 215
    const-string v7, "Backup"

    const-string v8, "Start document"

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 216
    :cond_1
    const/4 v7, 0x2

    if-ne v2, v7, :cond_2

    .line 217
    const-string v7, "Backup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 219
    :cond_2
    const/4 v7, 0x3

    if-ne v2, v7, :cond_3

    .line 220
    const-string v7, "Backup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_3
    const/4 v7, 0x4

    if-ne v2, v7, :cond_0

    .line 222
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "value":Ljava/lang/String;
    const-string v7, "Backup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Text "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 225
    const-string v7, "Backup"

    const-string v8, "Already exist tag!"

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :cond_4
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 232
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "Backup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XmlPullParserException Event type 1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 235
    const-string v7, "Backup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XmlPullParserException Event type 2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    const-string v7, "Backup"

    const-string v8, "End document"

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-object v4
.end method

.method private restoreMusicSettings(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->restoreServiceSettings(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->restoreUiSettings(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private restoreServiceSettings(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->getServicePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 468
    .local v5, "preferences":Landroid/content/SharedPreferences;
    :try_start_0
    const-string/jumbo v9, "play_speed"

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 474
    .local v4, "playSpeed":F
    :goto_0
    :try_start_1
    const-string/jumbo v9, "smart_volume"

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 480
    .local v8, "smartVolume":Z
    :goto_1
    :try_start_2
    const-string/jumbo v9, "skip_silences"

    .line 481
    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 480
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 487
    .local v7, "skipSilence":Z
    :goto_2
    :try_start_3
    const-string v9, "lock_screen"

    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    .line 493
    .local v3, "lockScreen":Z
    :goto_3
    :try_start_4
    const-string/jumbo v9, "screen_off_music"

    .line 494
    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v6

    .line 498
    .local v6, "screenOffMusic":Z
    :goto_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v9

    const-string/jumbo v10, "screen_off_music"

    .line 499
    invoke-virtual {v9, v10, v6}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 501
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.samsung.android.app.music.core.state.SETTING_CHANGED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v2, "i":Landroid/content/Intent;
    const-string/jumbo v9, "play_speed"

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 503
    const-string/jumbo v9, "smart_volume"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 504
    const-string/jumbo v9, "skip_silences"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    const-string v9, "com.sec.android.app.music"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 508
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 510
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "play_speed"

    invoke-interface {v1, v9, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 511
    const-string/jumbo v9, "smart_volume"

    invoke-interface {v1, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 512
    const-string v9, "lock_screen"

    invoke-interface {v1, v9, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 513
    const-string/jumbo v9, "skip_silences"

    invoke-interface {v1, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 514
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 515
    return-void

    .line 469
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "lockScreen":Z
    .end local v4    # "playSpeed":F
    .end local v6    # "screenOffMusic":Z
    .end local v7    # "skipSilence":Z
    .end local v8    # "smartVolume":Z
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "playSpeed":F
    goto/16 :goto_0

    .line 475
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 476
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .restart local v8    # "smartVolume":Z
    goto/16 :goto_1

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 483
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .restart local v7    # "skipSilence":Z
    goto :goto_2

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 489
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v5, p1}, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->checkLockScreenDefaultValue(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v3

    .restart local v3    # "lockScreen":Z
    goto :goto_3

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 496
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    .restart local v6    # "screenOffMusic":Z
    goto :goto_4
.end method

.method private restoreStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I

    .prologue
    const/4 v3, 0x1

    .line 158
    const/4 v1, 0x0

    .line 163
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4, p3, p4}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 182
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->parsingSettingXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    .line 183
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->restoreMusicSettings(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-eqz v1, :cond_0

    .line 193
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return v3

    .line 194
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "SMUSIC-Backup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restore err "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    if-eqz v1, :cond_1

    .line 193
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 194
    :catch_2
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "SMUSIC-Backup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restore err "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    if-eqz v1, :cond_1

    .line 193
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 194
    :catch_4
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 193
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 196
    :cond_2
    :goto_2
    throw v3

    .line 194
    :catch_5
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private restoreUiSettings(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/util/TabUtils;->restoreTabPreferences(Landroid/content/Context;Ljava/util/Map;)V

    .line 519
    return-void
.end method

.method private saveEncryptedFile(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 28
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 274
    .local v10, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 275
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    .line 277
    .local v6, "doc":Lorg/w3c/dom/Document;
    const-string v24, "http://www.samsung.com/app/music/settings"

    const-string v25, "MusicSettings"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v6, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 278
    .local v19, "root":Lorg/w3c/dom/Element;
    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 280
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 281
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v6, v1, v2}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->getSettingElements(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 351
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .line 352
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v24, "SMUSIC-Backup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "saveEncryptedFile err"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/16 v24, 0x1

    .line 363
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    :goto_1
    return v24

    .line 285
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v19    # "root":Lorg/w3c/dom/Element;
    :cond_1
    :try_start_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v23

    .line 286
    .local v23, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v22

    .line 287
    .local v22, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v20, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 290
    .local v20, "source":Ljavax/xml/transform/dom/DOMSource;
    const/4 v13, 0x0

    .line 291
    .local v13, "out":Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 293
    .local v11, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 297
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v24

    if-nez v24, :cond_7

    .line 298
    new-instance v24, Ljava/io/IOException;

    const-string v25, "fail to delete"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    .end local v9    # "f":Ljava/io/File;
    :catch_1
    move-exception v7

    .line 333
    .local v7, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v24, "SMUSIC-Backup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "saveEncryptedFile err "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 334
    const/16 v24, 0x1

    .line 336
    if-eqz v11, :cond_2

    .line 338
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_4 .. :try_end_4} :catch_3

    .line 343
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    if-eqz v13, :cond_0

    .line 345
    :try_start_5
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 346
    :catch_2
    move-exception v7

    .line 347
    .local v7, "e":Ljava/io/IOException;
    :try_start_6
    const-string v25, "SMUSIC-Backup"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fail to close FileOutputStream : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 354
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v19    # "root":Lorg/w3c/dom/Element;
    .end local v20    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v22    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v23    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_3
    move-exception v7

    .line 355
    .local v7, "e":Ljavax/xml/transform/TransformerConfigurationException;
    const-string v24, "SMUSIC-Backup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "saveEncryptedFile err"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljavax/xml/transform/TransformerConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 302
    .end local v7    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    .restart local v19    # "root":Lorg/w3c/dom/Element;
    .restart local v20    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v22    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v23    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_3
    :try_start_7
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 303
    .local v15, "parent":Ljava/io/File;
    if-nez v15, :cond_6

    .line 304
    new-instance v24, Ljava/io/IOException;

    const-string v25, "fail access parent file"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 336
    .end local v9    # "f":Ljava/io/File;
    .end local v15    # "parent":Ljava/io/File;
    :catchall_0
    move-exception v24

    :goto_4
    if-eqz v11, :cond_4

    .line 338
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_8 .. :try_end_8} :catch_3

    .line 343
    :cond_4
    :goto_5
    if-eqz v13, :cond_5

    .line 345
    :try_start_9
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_9 .. :try_end_9} :catch_3

    .line 348
    :cond_5
    :goto_6
    :try_start_a
    throw v24
    :try_end_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_a .. :try_end_a} :catch_3

    .line 306
    .restart local v9    # "f":Ljava/io/File;
    .restart local v15    # "parent":Ljava/io/File;
    :cond_6
    :try_start_b
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 310
    .end local v15    # "parent":Ljava/io/File;
    :cond_7
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 311
    .local v14, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v18, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 312
    .local v18, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 313
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 316
    .end local v11    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    :try_start_c
    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;

    move-result-object v13

    .line 320
    const/16 v24, 0x400

    move/from16 v0, v24

    new-array v4, v0, [B

    .line 321
    .local v4, "buffer":[B
    :cond_8
    :goto_7
    const/16 v24, 0x0

    const/16 v25, 0x400

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v16

    .local v16, "read":I
    const/16 v24, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 322
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v13, v4, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 323
    const/16 v24, 0x400

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 325
    rem-int/lit8 v24, v16, 0x10

    rsub-int/lit8 v17, v24, 0x10

    .line 326
    .local v17, "remain":I
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 327
    .local v21, "temp":[B
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v17

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_7

    .line 330
    .end local v4    # "buffer":[B
    .end local v16    # "read":I
    .end local v17    # "remain":I
    .end local v21    # "temp":[B
    :catch_4
    move-exception v7

    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 336
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v4    # "buffer":[B
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v16    # "read":I
    :cond_9
    if-eqz v12, :cond_a

    .line 338
    :try_start_d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_d .. :try_end_d} :catch_3

    .line 343
    :cond_a
    :goto_8
    if-eqz v13, :cond_b

    .line 345
    :try_start_e
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_e .. :try_end_e} :catch_3

    .line 361
    :cond_b
    :goto_9
    const-string v24, "Backup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " path : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 339
    :catch_5
    move-exception v7

    .line 340
    .local v7, "e":Ljava/io/IOException;
    :try_start_f
    const-string v24, "SMUSIC-Backup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "fail to close InputStream : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 346
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 347
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v24, "SMUSIC-Backup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "fail to close FileOutputStream : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 339
    .end local v4    # "buffer":[B
    .end local v9    # "f":Ljava/io/File;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v14    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "read":I
    .end local v18    # "result":Ljavax/xml/transform/stream/StreamResult;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v7

    .line 340
    .local v7, "e":Ljava/io/IOException;
    const-string v25, "SMUSIC-Backup"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fail to close InputStream : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 339
    .end local v7    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 340
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v25, "SMUSIC-Backup"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fail to close InputStream : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 346
    .end local v7    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 347
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v25, "SMUSIC-Backup"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fail to close FileOutputStream : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_6

    .line 336
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v14    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "result":Ljavax/xml/transform/stream/StreamResult;
    :catchall_1
    move-exception v24

    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_4
.end method

.method private sendBackupResponse(Landroid/content/Context;IIILandroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # I
    .param p3, "errCode"    # I
    .param p4, "size"    # I
    .param p5, "data"    # Landroid/os/Bundle;

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_MUSIC_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    const-string v1, "ERR_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    const-string v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    const-string v1, "SOURCE"

    const-string v2, "SOURCE"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string v1, "EXPORT_SESSION_TIME"

    const-string v2, "EXPORT_SESSION_TIME"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method private sendRestoreResponse(Landroid/content/Context;IIILandroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # I
    .param p3, "errCode"    # I
    .param p4, "size"    # I
    .param p5, "data"    # Landroid/os/Bundle;

    .prologue
    .line 565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_MUSIC_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    const-string v1, "ERR_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    const-string v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 569
    const-string v1, "SOURCE"

    const-string v2, "SOURCE"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 571
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    const-string v2, "SMUSIC-Backup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 108
    .local v1, "data":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 109
    const-string v2, "SMUSIC-Backup"

    const-string v3, " Sender\'s extra values are null. Please check backup request."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v2, "com.samsung.android.intent.action.REQUEST_BACKUP_MUSIC_SETTING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    new-instance v2, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$1;-><init>(Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$1;->start()V

    goto :goto_0

    .line 123
    :cond_2
    const-string v2, "com.samsung.android.intent.action.REQUEST_RESTORE_MUSIC_SETTING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    new-instance v2, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;-><init>(Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;->start()V

    goto :goto_0
.end method
