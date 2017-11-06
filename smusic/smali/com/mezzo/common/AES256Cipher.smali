.class public Lcom/mezzo/common/AES256Cipher;
.super Ljava/lang/Object;
.source "AES256Cipher.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field public static IV:Ljava/lang/String; = null

.field public static final MASTERPASSWORD:Ljava/lang/String; = "mezzomedia20160801ncjenm20170801"

.field public static len:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "CJENMNMEZZOMEDIA"

    sput-object v0, Lcom/mezzo/common/AES256Cipher;->IV:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/mezzo/common/AES256Cipher;->len:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AES_Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "decode":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 40
    .local v1, "decodeBase64Byte":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "mezzomedia20160801ncjenm20170801"

    sget-object v4, Lcom/mezzo/common/AES256Cipher;->IV:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/mezzo/common/AES256Cipher;->aesDecryptCbc(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method public static AES_Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 29
    sput v5, Lcom/mezzo/common/AES256Cipher;->len:I

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "url":Ljava/lang/String;
    const-string v3, "mezzomedia20160801ncjenm20170801"

    sget-object v4, Lcom/mezzo/common/AES256Cipher;->IV:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/mezzo/common/AES256Cipher;->aesEncryptCbc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 32
    .local v0, "securityByte":[B
    array-length v3, v0

    sput v3, Lcom/mezzo/common/AES256Cipher;->len:I

    .line 33
    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "securityStr":Ljava/lang/String;
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static aesDecryptCbc(Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 10
    .param p0, "sKey"    # Ljava/lang/String;
    .param p1, "encrypted"    # [B
    .param p2, "sInitVector"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v6, 0x0

    .line 75
    .local v6, "key":[B
    const/4 v5, 0x0

    .line 76
    .local v5, "iv":[B
    const/4 v2, 0x0

    .line 77
    .local v2, "decrypted":[B
    const/16 v0, 0x100

    .line 80
    .local v0, "AES_KEY_SIZE_128":I
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 81
    const/16 v7, 0x20

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    .line 82
    if-eqz p2, :cond_0

    .line 83
    const-string v7, "UTF-8"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 84
    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 85
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(I)V

    .line 86
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 87
    .local v1, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 88
    .local v4, "ips":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v7, 0x2

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v6, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v7, v8, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 89
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 102
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "ips":Ljavax/crypto/spec/IvParameterSpec;
    :goto_0
    return-object v2

    .line 92
    :cond_0
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 93
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x2

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v6, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 94
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 97
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 99
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static aesEncryptCbc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p0, "sKey"    # Ljava/lang/String;
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "sInitVector"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v6, 0x0

    .line 45
    .local v6, "key":[B
    const/4 v7, 0x0

    .line 46
    .local v7, "text":[B
    const/4 v5, 0x0

    .line 47
    .local v5, "iv":[B
    const/4 v3, 0x0

    .line 48
    .local v3, "encrypted":[B
    const/16 v0, 0x100

    .line 50
    .local v0, "AES_KEY_SIZE_128":I
    :try_start_0
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 51
    const/16 v8, 0x20

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    .line 52
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 53
    if-eqz p2, :cond_0

    .line 54
    const-string v8, "UTF-8"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 55
    const/16 v8, 0x10

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 56
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 57
    .local v1, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 58
    .local v4, "ips":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x1

    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "AES"

    invoke-direct {v9, v6, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v8, v9, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    invoke-virtual {v1, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 70
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "ips":Ljavax/crypto/spec/IvParameterSpec;
    :goto_0
    return-object v3

    .line 61
    :cond_0
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 62
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "AES"

    invoke-direct {v9, v6, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 63
    invoke-virtual {v1, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 65
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 67
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
