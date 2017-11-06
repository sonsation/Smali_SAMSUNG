.class public Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# static fields
.field private static final IV_LENGTH:I = 0x10

.field private static final KEY_LENGTH:I = 0x10

.field protected static final TAG:Ljava/lang/String;

.field private static final TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS5Padding"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "encryptedText"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 90
    .end local p1    # "encryptedText":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 75
    .restart local p1    # "encryptedText":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .line 77
    .local v7, "result":Ljava/lang/String;
    const/16 v9, 0x10

    :try_start_0
    new-array v4, v9, [B

    .line 78
    .local v4, "keyDest":[B
    const/16 v9, 0x10

    new-array v2, v9, [B

    .line 79
    .local v2, "iv":[B
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->getSignature(Landroid/content/Context;)[B

    move-result-object v5

    .line 80
    .local v5, "keySource":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v4

    invoke-static {v5, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    const/16 v9, 0x10

    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v5, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v6, v4, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 83
    .local v6, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 84
    .local v3, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v9, "AES/CBC/PKCS5Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 85
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 86
    new-instance v8, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->toByteFromHex(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "result":Ljava/lang/String;
    .local v8, "result":Ljava/lang/String;
    move-object v7, v8

    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "iv":[B
    .end local v3    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "keyDest":[B
    .end local v5    # "keySource":[B
    .end local v6    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :goto_1
    move-object p1, v7

    .line 90
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static encode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "plainText"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 42
    .end local p1    # "plainText":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 27
    .restart local p1    # "plainText":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .line 29
    .local v7, "result":Ljava/lang/String;
    const/16 v8, 0x10

    :try_start_0
    new-array v4, v8, [B

    .line 30
    .local v4, "keyDest":[B
    const/16 v8, 0x10

    new-array v2, v8, [B

    .line 31
    .local v2, "iv":[B
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->getSignature(Landroid/content/Context;)[B

    move-result-object v5

    .line 32
    .local v5, "keySource":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v4

    invoke-static {v5, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    const/16 v8, 0x10

    const/4 v9, 0x0

    array-length v10, v2

    invoke-static {v5, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v6, v4, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 35
    .local v6, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 36
    .local v3, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 37
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 38
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "iv":[B
    .end local v3    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "keyDest":[B
    .end local v5    # "keySource":[B
    .end local v6    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_1
    move-object p1, v7

    .line 42
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static encodeWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "plainText"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 48
    const/4 v7, 0x0

    .line 66
    :goto_0
    return-object v7

    .line 51
    :cond_0
    const/4 v7, 0x0

    .line 53
    .local v7, "result":Ljava/lang/String;
    const/16 v8, 0x10

    :try_start_0
    new-array v4, v8, [B

    .line 54
    .local v4, "keyDest":[B
    const/16 v8, 0x10

    new-array v2, v8, [B

    .line 55
    .local v2, "iv":[B
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 56
    .local v5, "keySource":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v4

    invoke-static {v5, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    const/16 v8, 0x10

    const/4 v9, 0x0

    array-length v10, v2

    invoke-static {v5, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v6, v4, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 59
    .local v6, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 60
    .local v3, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 61
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 62
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 63
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "iv":[B
    .end local v3    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "keyDest":[B
    .end local v5    # "keySource":[B
    .end local v6    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DID error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getSignature(Landroid/content/Context;)[B
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 134
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 135
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 136
    .local v3, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 140
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "signature":Landroid/content/pm/Signature;
    :goto_0
    return-object v4

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 140
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static toByteFromHex(Ljava/lang/String;)[B
    .locals 6
    .param p0, "encryptText"    # Ljava/lang/String;

    .prologue
    .line 117
    if-nez p0, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 127
    :cond_0
    return-object v0

    .line 120
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 121
    .local v3, "length":I
    div-int/lit8 v3, v3, 0x2

    .line 122
    new-array v0, v3, [B

    .line 123
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 124
    mul-int/lit8 v2, v1, 0x2

    .line 125
    .local v2, "index":I
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    const/16 v6, 0x10

    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 v5, 0x0

    .line 108
    :goto_0
    return-object v5

    .line 103
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v4, "result":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 105
    .local v1, "b":B
    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    and-int/lit8 v5, v1, 0xf

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v1    # "b":B
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
