.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorHelper;
.super Ljava/lang/Object;
.source "SecureXor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XorHelper"
.end annotation


# static fields
.field private static final INDEX_PRIVATE_KEY:I = 0xa

.field private static final INDEX_PRIVATE_KEY_SIZE:I = 0x10

.field private static final OPTIMIZED_BUFFER_SIZE:I = 0x20000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decrypt(Ljava/lang/String;Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "inputFile"    # Ljava/io/FileInputStream;

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorHelper;->generateKey([B)[B

    move-result-object v1

    .line 96
    .local v1, "keys":[B
    const/16 v2, 0xa

    aget-byte v0, v1, v2

    .line 97
    .local v0, "hotKey":B
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorInputStream;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorInputStream;-><init>(Ljava/io/InputStream;B)V

    return-object v2
.end method

.method static encrypt(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorHelper;->generateKey([B)[B

    move-result-object v4

    .line 83
    .local v4, "keys":[B
    const/16 v6, 0xa

    aget-byte v2, v4, v6

    .line 84
    .local v2, "hotKey":B
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor$XorOutputStream;-><init>(Ljava/io/OutputStream;B)V

    .line 85
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 84
    .local v3, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 87
    const/high16 v7, 0x20000

    :try_start_1
    new-array v0, v7, [B

    .line 88
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    .line 89
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    .line 84
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v6

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v7, :cond_6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :goto_2
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 84
    .end local v3    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 91
    :catchall_1
    move-exception v7

    move-object v8, v6

    move-object v6, v7

    :goto_3
    if-eqz v5, :cond_1

    if-eqz v8, :cond_8

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_1
    :goto_4
    throw v6

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v8, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_3
    :goto_5
    if-eqz v5, :cond_4

    if-eqz v8, :cond_7

    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 92
    :cond_4
    :goto_6
    return-void

    .line 91
    :catch_2
    move-exception v7

    :try_start_9
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v3    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v6

    goto :goto_3

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_3
    move-exception v9

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :catch_4
    move-exception v6

    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v3    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v7

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_3
    move-exception v6

    move-object v7, v8

    goto :goto_1
.end method

.method private static generateKey([B)[B
    .locals 4
    .param p0, "raw"    # [B

    .prologue
    const/16 v3, 0x10

    .line 101
    new-array v1, v3, [B

    .line 102
    .local v1, "key":[B
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 103
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 104
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    .line 102
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    int-to-byte v2, v0

    aput-byte v2, v1, v0

    goto :goto_1

    .line 109
    :cond_1
    return-object v1
.end method
