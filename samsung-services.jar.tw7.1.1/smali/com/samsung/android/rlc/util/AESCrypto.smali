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
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/rlc/util/AESCrypto;->iv:[B

    .line 19
    return-void

    .line 23
    :array_0
    .array-data 1
        0x3et
        -0x4bt
        0x1t
        0x45t
        -0x1ct
        -0x8t
        0x75t
        0x3ft
        0x8t
        -0x63t
        -0x61t
        0x57t
        0x3bt
        0x63t
        -0x11t
        0x4bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v6, 0x0

    .line 41
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    const-string v8, "AESCrypto"

    const-string v9, "decryptAES begin"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 45
    .local v2, "inp":[B
    if-nez v2, :cond_0

    .line 46
    return-object v6

    .line 48
    :cond_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 49
    const-string v9, "AES/CBC/PKCS5Padding"

    .line 48
    invoke-direct {v4, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 50
    .local v4, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lcom/samsung/android/rlc/util/AESCrypto;->iv:[B

    invoke-direct {v3, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 52
    .local v3, "ivParam":Ljavax/crypto/spec/IvParameterSpec;
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 53
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 56
    .local v5, "output":[B
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v7, "result":Ljava/lang/String;
    :try_start_1
    const-string v8, "AESCrypto"

    .end local v6    # "result":Ljava/lang/String;
    const-string v9, "decryptAES end"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    return-object v7

    .line 59
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "inp":[B
    .end local v3    # "ivParam":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v5    # "output":[B
    .end local v7    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 60
    .end local v6    # "result":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    throw v1

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v2    # "inp":[B
    .restart local v3    # "ivParam":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v4    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5    # "output":[B
    .restart local v7    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v5, 0x0

    .line 81
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    const-string v7, "AESCrypto"

    const-string v8, "encryptAES begin"

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-direct {v3, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 84
    .local v3, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v7, Lcom/samsung/android/rlc/util/AESCrypto;->iv:[B

    invoke-direct {v2, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 86
    .local v2, "ivParam":Ljavax/crypto/spec/IvParameterSpec;
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 87
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 88
    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 90
    .local v4, "output":[B
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v6, "result":Ljava/lang/String;
    :try_start_1
    const-string v7, "AESCrypto"

    .end local v5    # "result":Ljava/lang/String;
    const-string v8, "encryptAES end"

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    return-object v6

    .line 93
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ivParam":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "output":[B
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 94
    .end local v5    # "result":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    throw v1

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v2    # "ivParam":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v3    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4    # "output":[B
    .restart local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "result":Ljava/lang/String;
    .local v5, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static generateContentKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v3, 0x0

    .line 113
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/samsung/android/rlc/util/SecureStringData;->CONTENT_ENCRYPT_KEY_SEED_TEXT:[B

    invoke-static {v6}, Lcom/samsung/android/rlc/util/SecureStringData;->getSecureString([B)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "seedText":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "uniqueKey":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "key":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/rlc/util/SecureStringData;->MD5:[B

    invoke-static {v6}, Lcom/samsung/android/rlc/util/SecureStringData;->getSecureString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 117
    .local v0, "MD5":Ljava/security/MessageDigest;
    const-string v6, "UTF-8"

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 118
    new-instance v3, Ljava/lang/String;

    .end local v3    # "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v3, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .local v3, "result":Ljava/lang/String;
    return-object v3

    .line 119
    .end local v0    # "MD5":Ljava/security/MessageDigest;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "seedText":Ljava/lang/String;
    .end local v5    # "uniqueKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    throw v1
.end method
