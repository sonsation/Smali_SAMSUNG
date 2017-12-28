.class public final Lcom/samsung/android/scloud/oem/lib/FileTool;
.super Ljava/lang/Object;
.source "FileTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileTool"

.field private static mMessageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/FileTool;->mMessageDigest:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 383
    :try_start_0
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 385
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 397
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 387
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 393
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 395
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getByteArr(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 361
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 363
    .local v1, "byteOpStream":Ljava/io/ByteArrayOutputStream;
    new-array v0, v5, [B

    .line 365
    .local v0, "buff":[B
    :goto_0
    invoke-virtual {p0, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "len":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 367
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 371
    return-object v0
.end method

.method public static declared-synchronized getMessageDigest(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "fis"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 111
    const-class v7, Lcom/samsung/android/scloud/oem/lib/FileTool;

    monitor-enter v7

    const/4 v0, 0x0

    .line 113
    .local v0, "bHex":I
    const/16 v6, 0x2000

    :try_start_0
    new-array v1, v6, [B

    .line 115
    .local v1, "buff":[B
    sget-object v6, Lcom/samsung/android/scloud/oem/lib/FileTool;->mMessageDigest:Ljava/security/MessageDigest;

    if-nez v6, :cond_0

    .line 117
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/scloud/oem/lib/FileTool;->mMessageDigest:Ljava/security/MessageDigest;

    .line 125
    :goto_0
    const/4 v4, 0x0

    .line 127
    .local v4, "len":I
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 129
    sget-object v6, Lcom/samsung/android/scloud/oem/lib/FileTool;->mMessageDigest:Ljava/security/MessageDigest;

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 111
    .end local v1    # "buff":[B
    .end local v4    # "len":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 121
    .restart local v1    # "buff":[B
    :cond_0
    :try_start_1
    sget-object v6, Lcom/samsung/android/scloud/oem/lib/FileTool;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    goto :goto_0

    .line 133
    .restart local v4    # "len":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 135
    sget-object v6, Lcom/samsung/android/scloud/oem/lib/FileTool;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 137
    .local v5, "md5Data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v2, "checksum":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v6, v5

    if-ge v3, v6, :cond_3

    .line 143
    aget-byte v6, v5, v3

    and-int/lit16 v0, v6, 0xff

    .line 145
    const/16 v6, 0xf

    if-gt v0, v6, :cond_2

    .line 149
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 157
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    monitor-exit v7

    return-object v6
.end method

.method public static declared-synchronized getMessageDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 97
    const-class v2, Lcom/samsung/android/scloud/oem/lib/FileTool;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "fis":Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/FileTool;->getMessageDigest(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 97
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getMessageDigestFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 81
    const-class v2, Lcom/samsung/android/scloud/oem/lib/FileTool;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 85
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/FileTool;->getMessageDigest(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 81
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isSameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "checkSum"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 201
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/FileTool;->getMessageDigest(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 215
    .local v1, "fileChecksum":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    const/4 v2, 0x1

    .line 221
    .end local v1    # "fileChecksum":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 203
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static isSameFileInputStream(Ljava/io/FileInputStream;Ljava/lang/String;)Z
    .locals 4
    .param p0, "fis"    # Ljava/io/FileInputStream;
    .param p1, "checkSum"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 169
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/FileTool;->getMessageDigest(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 183
    .local v1, "fileChecksum":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const/4 v2, 0x1

    .line 189
    .end local v1    # "fileChecksum":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 171
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static makeFolder(Ljava/lang/String;)V
    .locals 8
    .param p0, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, "split":[Ljava/lang/String;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v1, v4, v5

    .line 413
    .local v1, "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "folderPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 421
    const-string v5, "FileTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating folder : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 427
    .local v3, "result":Z
    if-nez v3, :cond_0

    .line 431
    const-string v5, "FileTool"

    const-string v6, "ORSMetaResponse.fromBinaryFile(): Can not create directory. "

    invoke-static {v5, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 439
    .end local v3    # "result":Z
    :cond_0
    return-void
.end method

.method public static writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "size"    # J
    .param p3, "fileOpStream"    # Ljava/io/FileOutputStream;
    .param p4, "handler"    # Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    :try_start_0
    const-string v3, "FileTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeToFile - start Write with stream : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/high16 v3, 0x20000

    new-array v0, v3, [B

    .line 241
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 243
    .local v2, "len":I
    const-wide/16 v4, 0x0

    .line 245
    .local v4, "sum":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    .line 247
    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 251
    if-eqz p4, :cond_0

    .line 253
    invoke-interface {p4, v4, v5, p1, p2}, Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;->transferred(JJ)V

    .line 255
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    .end local v4    # "sum":J
    :catch_0
    move-exception v1

    .line 261
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz p0, :cond_1

    .line 267
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 269
    :cond_1
    if-eqz p3, :cond_2

    .line 271
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v3

    .line 265
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    .restart local v4    # "sum":J
    :cond_3
    if-eqz p0, :cond_4

    .line 267
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 269
    :cond_4
    if-eqz p3, :cond_5

    .line 271
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 275
    :cond_5
    return-void
.end method

.method public static writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    .locals 11
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "size"    # J
    .param p3, "filepath"    # Ljava/lang/String;
    .param p4, "handler"    # Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 283
    const-string v6, "FileTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeToFile - start Write with stream : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v6, "/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "split":[Ljava/lang/String;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v1, v5, v6

    .line 293
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p3, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "folderPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 301
    const-string v6, "FileTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating folder : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 307
    .local v4, "result":Z
    if-nez v4, :cond_0

    .line 311
    const-string v6, "FileTool"

    const-string v7, "ORSMetaResponse.fromBinaryFile(): Can not create directory. "

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 321
    .end local v4    # "result":Z
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 325
    .local v2, "fileOpStream":Ljava/io/FileOutputStream;
    invoke-static {p0, p1, p2, v2, p4}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V

    .line 329
    return-void
.end method

.method public static writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    .locals 3
    .param p0, "inputFile"    # Ljava/lang/String;
    .param p1, "size"    # J
    .param p3, "outputStream"    # Ljava/io/FileOutputStream;
    .param p4, "handler"    # Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 345
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 349
    .local v1, "inputStream":Ljava/io/FileInputStream;
    invoke-static {v1, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V

    .line 351
    return-void
.end method
