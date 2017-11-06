.class public Lcom/samsung/android/app/music/common/util/AES;
.super Ljava/lang/Object;
.source "AES.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static mUniqueDeviceID:Ljava/lang/String;

.field private static mUniqueMacID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/samsung/android/app/music/common/util/AES;->mUniqueDeviceID:Ljava/lang/String;

    .line 30
    sput-object v0, Lcom/samsung/android/app/music/common/util/AES;->mUniqueMacID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 351
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 352
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "encrypted"    # Ljava/lang/String;

    .prologue
    .line 316
    :try_start_0
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 317
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/16 v8, 0x10

    new-array v3, v8, [B

    .line 318
    .local v3, "keyBytes":[B
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 319
    .local v7, "src":[B
    array-length v5, v7

    .line 320
    .local v5, "len":I
    array-length v8, v3

    if-le v5, v8, :cond_0

    .line 321
    array-length v5, v3

    .line 323
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v4, v3, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 325
    .local v4, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 326
    .local v2, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 328
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/AES;->toByte(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 329
    .local v6, "results":[B
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v6, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "keyBytes":[B
    .end local v4    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v5    # "len":I
    .end local v6    # "results":[B
    .end local v7    # "src":[B
    :goto_0
    return-object v8

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 289
    if-eqz p1, :cond_1

    .line 291
    :try_start_0
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 292
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/16 v8, 0x10

    new-array v3, v8, [B

    .line 293
    .local v3, "keyBytes":[B
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 294
    .local v7, "src":[B
    array-length v5, v7

    .line 296
    .local v5, "len":I
    array-length v8, v3

    if-le v5, v8, :cond_0

    .line 297
    array-length v5, v3

    .line 299
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v4, v3, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 302
    .local v4, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 303
    .local v2, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 305
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 306
    .local v6, "results":[B
    invoke-static {v6}, Lcom/samsung/android/app/music/common/util/AES;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 311
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "keyBytes":[B
    .end local v4    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v5    # "len":I
    .end local v6    # "results":[B
    .end local v7    # "src":[B
    :goto_0
    return-object v8

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static getAccessToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v1, ""

    .line 50
    .local v1, "encMsg":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/common/util/AES;->getTime()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "secureTime":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->initialize(Landroid/content/Context;)I

    .line 53
    invoke-static {p0, v2, p1}, Lcom/samsung/auth/AuthManager;->GetAccessKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 60
    :goto_0
    const-string v3, "AES"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccessToken Access Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Uninitialize()V

    .line 64
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getCPUSerialNumber()Ljava/lang/String;
    .locals 14

    .prologue
    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "cmd":Ljava/lang/ProcessBuilder;
    const-string v4, ""

    .line 231
    .local v4, "cpuInfo":Ljava/lang/String;
    const-string v10, ""

    .line 232
    .local v10, "result":Ljava/lang/String;
    const/4 v11, -0x1

    .line 233
    .local v11, "serialIndex":I
    const/16 v0, 0x11

    .line 234
    .local v0, "CPU_SERIAL_NUM":I
    const/4 v8, 0x0

    .line 235
    .local v8, "process":Ljava/lang/Process;
    const/4 v7, 0x0

    .line 237
    .local v7, "in":Ljava/io/InputStream;
    const/4 v12, 0x2

    :try_start_0
    new-array v1, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "/system/bin/cat"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const-string v13, "/proc/cpuinfo"

    aput-object v13, v1, v12

    .line 238
    .local v1, "args":[Ljava/lang/String;
    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .local v3, "cmd":Ljava/lang/ProcessBuilder;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    .line 240
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 241
    const/16 v12, 0x400

    new-array v9, v12, [B

    .line 243
    .local v9, "readBytes":[B
    :goto_0
    invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    .line 244
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 247
    :cond_0
    const-string v12, "Serial"

    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 248
    const-string v12, ": "

    invoke-virtual {v4, v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    add-int/lit8 v11, v12, 0x2

    .line 249
    add-int/lit8 v12, v11, 0x11

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 254
    if-eqz v7, :cond_1

    .line 255
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 260
    :cond_1
    :goto_1
    if-eqz v8, :cond_c

    .line 262
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 263
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 265
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 266
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 271
    :cond_3
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    move-object v2, v3

    .line 274
    .end local v1    # "args":[Ljava/lang/String;
    .end local v3    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v9    # "readBytes":[B
    .restart local v2    # "cmd":Ljava/lang/ProcessBuilder;
    :cond_4
    :goto_3
    const-string v12, "\n"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 275
    const-string v12, "\r"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 276
    return-object v10

    .line 257
    .end local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v1    # "args":[Ljava/lang/String;
    .restart local v3    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v9    # "readBytes":[B
    :catch_0
    move-exception v5

    .line 258
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 268
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 269
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 250
    .end local v1    # "args":[Ljava/lang/String;
    .end local v3    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "readBytes":[B
    .restart local v2    # "cmd":Ljava/lang/ProcessBuilder;
    :catch_2
    move-exception v6

    .line 251
    .local v6, "ex":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 254
    if-eqz v7, :cond_5

    .line 255
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 260
    :cond_5
    :goto_5
    if-eqz v8, :cond_4

    .line 262
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 263
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 265
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 266
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 271
    :cond_7
    :goto_6
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    goto :goto_3

    .line 257
    :catch_3
    move-exception v5

    .line 258
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 268
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 269
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 253
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 254
    :goto_7
    if-eqz v7, :cond_8

    .line 255
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 260
    :cond_8
    :goto_8
    if-eqz v8, :cond_b

    .line 262
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 263
    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 265
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 266
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 271
    :cond_a
    :goto_9
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_b
    throw v12

    .line 257
    :catch_5
    move-exception v5

    .line 258
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 268
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 269
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 253
    .end local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "args":[Ljava/lang/String;
    .restart local v3    # "cmd":Ljava/lang/ProcessBuilder;
    :catchall_1
    move-exception v12

    move-object v2, v3

    .end local v3    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v2    # "cmd":Ljava/lang/ProcessBuilder;
    goto :goto_7

    .line 250
    .end local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v3    # "cmd":Ljava/lang/ProcessBuilder;
    :catch_7
    move-exception v6

    move-object v2, v3

    .end local v3    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v2    # "cmd":Ljava/lang/ProcessBuilder;
    goto :goto_4

    .end local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v3    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v9    # "readBytes":[B
    :cond_c
    move-object v2, v3

    .end local v3    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v2    # "cmd":Ljava/lang/ProcessBuilder;
    goto/16 :goto_3
.end method

.method public static getDecoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    const-string v0, ""

    .line 45
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->getDecoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 33
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    const-string v0, ""

    .line 37
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getHWSerialNumber()Ljava/lang/String;
    .locals 10

    .prologue
    .line 203
    const/16 v0, 0x14

    .line 204
    .local v0, "MAX_LENGTH":I
    const/4 v5, 0x0

    .line 206
    .local v5, "serialnum":Ljava/lang/String;
    :try_start_0
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 208
    const-string/jumbo v7, "unknown"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 209
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 210
    .local v1, "deviceId":Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "ida":[Ljava/lang/String;
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v1, v4, v7

    .line 213
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 214
    .local v2, "didLength":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 216
    .local v6, "snLength":I
    add-int v7, v2, v6

    const/16 v8, 0x14

    if-le v7, v8, :cond_1

    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    rsub-int/lit8 v9, v6, 0x14

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v2    # "didLength":I
    .end local v4    # "ida":[Ljava/lang/String;
    .end local v6    # "snLength":I
    :cond_0
    :goto_0
    return-object v5

    .line 219
    .restart local v1    # "deviceId":Ljava/lang/String;
    .restart local v2    # "didLength":I
    .restart local v4    # "ida":[Ljava/lang/String;
    .restart local v6    # "snLength":I
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 222
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v2    # "didLength":I
    .end local v4    # "ida":[Ljava/lang/String;
    .end local v6    # "snLength":I
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTime()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 280
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTime()J

    move-result-wide v6

    div-long v0, v6, v8

    .line 281
    .local v0, "currentTime":J
    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    .line 282
    .local v3, "pattern":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 283
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 284
    new-instance v4, Ljava/lang/String;

    mul-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 285
    .local v4, "time":Ljava/lang/String;
    return-object v4
.end method

.method public static getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-object v7, Lcom/samsung/android/app/music/common/util/AES;->mUniqueDeviceID:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 102
    const/4 v5, 0x1

    .line 103
    .local v5, "type":I
    const-string/jumbo v7, "phone"

    .line 104
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 105
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "uniqueId":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "12345678"

    .line 107
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "004999010640000"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "B0000000"

    .line 108
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "00000000000000"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "000000000000000"

    .line 109
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "0000000000000000"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 110
    :cond_0
    const/4 v5, 0x2

    .line 111
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/AES;->getUniqueMacId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "macId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/common/util/AES;->getHWSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "hwSerial":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 123
    .end local v1    # "hwSerial":Ljava/lang/String;
    .end local v2    # "macId":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/AES;->getUserId(Landroid/content/Context;)I

    move-result v3

    .line 124
    .local v3, "mumId":I
    if-eqz v3, :cond_1

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    :cond_1
    const-string v7, "AES"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUniqueDeviceId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sput-object v6, Lcom/samsung/android/app/music/common/util/AES;->mUniqueDeviceID:Ljava/lang/String;

    .line 130
    .end local v3    # "mumId":I
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    .end local v5    # "type":I
    .end local v6    # "uniqueId":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/samsung/android/app/music/common/util/AES;->mUniqueDeviceID:Ljava/lang/String;

    return-object v7

    .line 116
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v5    # "type":I
    .restart local v6    # "uniqueId":Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->initialize(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    invoke-static {v6}, Lcom/samsung/auth/AuthManager;->getEncodingDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Uninitialize()V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getUniqueMacId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "uniqueId":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/app/music/common/util/AES;->mUniqueMacID:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    .line 71
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 72
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 73
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/AES;->toSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/app/music/common/util/AES;->mUniqueMacID:Ljava/lang/String;

    .line 81
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    sget-object v3, Lcom/samsung/android/app/music/common/util/AES;->mUniqueMacID:Ljava/lang/String;

    return-object v3
.end method

.method private static getUserId(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 366
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_0

    .line 380
    :goto_0
    return v2

    .line 370
    :cond_0
    const/4 v2, 0x0

    .line 373
    .local v2, "userHandle":I
    :try_start_0
    const-class v3, Landroid/os/UserManager;

    const-string v4, "getUserHandle"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 374
    .local v1, "getUserHandle":Ljava/lang/reflect/Method;
    const-string/jumbo v3, "user"

    .line 375
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 376
    .end local v1    # "getUserHandle":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 377
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 356
    .local v1, "len":I
    new-array v2, v1, [B

    .line 357
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 358
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-object v2
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 339
    const-string v2, ""

    .line 345
    :goto_0
    return-object v2

    .line 341
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 342
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 343
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/util/AES;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    const-string v2, ""

    .line 88
    .local v2, "sha1":Ljava/lang/String;
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 89
    .local v0, "crypt":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 90
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 91
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/AES;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 97
    .end local v0    # "crypt":Ljava/security/MessageDigest;
    .end local v2    # "sha1":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 92
    .restart local v2    # "sha1":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "sha1":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
