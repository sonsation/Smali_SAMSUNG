.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes$AesHelper;
.super Ljava/lang/Object;
.source "SecureAes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AesHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes$AesHelper$SecureLevel;
    }
.end annotation


# static fields
.field private static final AES:Ljava/lang/String; = "AES"

.field private static final BUFFER_SIZE:I = 0x400

.field private static final BYTES_SIZE_16:I = 0x10

.field private static final CIPHER_TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final ITERATE_COUNT:I = 0x3e8

.field private static final KEY_LENGTH:I = 0x100

.field private static final PBKDF2_SHA1:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final SHA_256:Ljava/lang/String; = "SHA-256"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decrypt(Ljava/lang/String;Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "inputFile"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes$AesHelper;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 190
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v1, v5, [B

    .line 191
    .local v1, "iv":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 193
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 196
    .local v4, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    if-lez p2, :cond_0

    .line 197
    const/16 v5, 0x10

    new-array v3, v5, [B

    .line 198
    .local v3, "salt":[B
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    .line 199
    invoke-static {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes$AesHelper;->generatePBKDF2SecretKey(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .line 206
    .end local v3    # "salt":[B
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 207
    new-instance v5, Ljavax/crypto/CipherInputStream;

    invoke-direct {v5, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v5

    .line 202
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes$AesHelper;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .restart local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0
.end method

.method static encrypt(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 118
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x1

    invoke-static {v4, p0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes$AesHelper;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;

    move-result-object v3

    .line 119
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    .local v2, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 121
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 122
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 123
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    .line 118
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v2, :cond_0

    if-eqz v5, :cond_6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :goto_2
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 118
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    :catchall_1
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    :goto_3
    if-eqz v3, :cond_1

    if-eqz v6, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_1
    :goto_4
    throw v4

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v6, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    if-eqz v6, :cond_7

    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 126
    :cond_4
    :goto_6
    return-void

    .line 125
    :catch_2
    move-exception v5

    :try_start_9
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v4

    goto :goto_3

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_3
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :catch_4
    move-exception v4

    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v5

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_3
    move-exception v4

    move-object v5, v6

    goto :goto_1
.end method

.method private static encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 6
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 137
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v1, v5, [B

    .line 138
    .local v1, "iv":[B
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 139
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 142
    .local v4, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 145
    if-lez p2, :cond_0

    .line 146
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes$AesHelper;->generateEncryptSalt()[B

    move-result-object v3

    .line 147
    .local v3, "salt":[B
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-static {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes$AesHelper;->generatePBKDF2SecretKey(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .line 155
    .end local v3    # "salt":[B
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 156
    new-instance v5, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v5, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v5

    .line 151
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes$AesHelper;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .restart local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0
.end method

.method private static generateEncryptSalt()[B
    .locals 3

    .prologue
    .line 168
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 169
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 170
    .local v0, "salt":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 171
    return-object v0
.end method

.method private static generatePBKDF2SecretKey(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 7
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 178
    .local v0, "chars":[C
    const-string v4, "PBKDF2WithHmacSHA1"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 179
    .local v2, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v4, 0x3e8

    const/16 v5, 0x100

    invoke-direct {v3, v0, p1, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 180
    .local v3, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 181
    .local v1, "key":Ljavax/crypto/SecretKey;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v4
.end method

.method private static generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 160
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 161
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 162
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 163
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method
