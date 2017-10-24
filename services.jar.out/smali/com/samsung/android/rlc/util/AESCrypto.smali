.class public Lcom/samsung/android/rlc/util/AESCrypto;
.super Ljava/lang/Object;
.source "AESCrypto.java"


# static fields
.field private static final AESCrypto_Log:Ljava/lang/String; = "AESCrypto"

.field private static final UTF:Ljava/lang/String; = "UTF-8"

.field private static final algorithm:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/16 v0, 0x10

    .line 23
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, -0x4b

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    aput-byte v4, v0, v4

    const/16 v1, 0x9

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    sput-object v0, Lcom/samsung/android/rlc/util/AESCrypto;->iv:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "AESCrypto"

    const-string/jumbo v1, "decryptAES begin"

    .line 41
    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UTF-8"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 50
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/samsung/android/rlc/util/AESCrypto;->iv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    .line 52
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    .line 53
    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v0, "AESCrypto"

    const-string/jumbo v2, "decryptAES end"

    .line 58
    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object v1

    .line 46
    :cond_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    throw v0
.end method

.method public static encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v0, "AESCrypto"

    const-string/jumbo v1, "encryptAES begin"

    .line 81
    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 84
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/samsung/android/rlc/util/AESCrypto;->iv:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    .line 86
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    .line 87
    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string/jumbo v0, "UTF-8"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v0, "AESCrypto"

    const-string/jumbo v2, "encryptAES end"

    .line 91
    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    throw v0
.end method

.method public static generateContentKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    sget-object v0, Lcom/samsung/android/rlc/util/SecureStringData;->CONTENT_ENCRYPT_KEY_SEED_TEXT:[B

    invoke-static {v0}, Lcom/samsung/android/rlc/util/SecureStringData;->getSecureString([B)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/samsung/android/rlc/util/SecureStringData;->MD5:[B

    invoke-static {v1}, Lcom/samsung/android/rlc/util/SecureStringData;->getSecureString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    throw v0
.end method
