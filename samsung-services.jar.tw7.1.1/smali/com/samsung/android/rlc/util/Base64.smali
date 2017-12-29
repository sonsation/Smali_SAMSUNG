.class public Lcom/samsung/android/rlc/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 24
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/rlc/util/Base64;->ENCODE_TABLE:[B

    .line 34
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/rlc/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 44
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/android/rlc/util/Base64;->DECODE_TABLE:[B

    .line 19
    return-void

    .line 24
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 34
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 44
    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctInput([B)[B
    .locals 8
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 162
    .local v2, "in2":[B
    :try_start_0
    array-length v5, p0

    rem-int/lit8 v5, v5, 0x4

    rsub-int/lit8 v4, v5, 0x4

    .line 163
    .local v4, "padN":I
    array-length v5, p0

    add-int/2addr v5, v4

    new-array v2, v5, [B

    .line 164
    .local v2, "in2":[B
    array-length v5, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v2, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 165
    array-length v3, v2

    .line 166
    .local v3, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 167
    add-int/lit8 v3, v3, -0x1

    const/16 v5, 0x3d

    aput-byte v5, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "i":I
    .end local v2    # "in2":[B
    .end local v3    # "j":I
    .end local v4    # "padN":I
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    throw v0

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "in2":[B
    .restart local v3    # "j":I
    .restart local v4    # "padN":I
    :cond_0
    return-object v2
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 236
    .local v1, "out":[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/rlc/util/Base64;->decode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 241
    .end local v1    # "out":[B
    :goto_0
    return-object v1

    .line 237
    .restart local v1    # "out":[B
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 13
    .param p0, "in"    # [B

    .prologue
    const/16 v11, 0x3d

    const/4 v12, 0x3

    const/4 v10, 0x1

    .line 185
    const/4 v5, 0x0

    .line 188
    .local v5, "out":[B
    :try_start_0
    array-length v9, p0

    if-nez v9, :cond_0

    .line 189
    const/4 v9, 0x0

    new-array v9, v9, [B

    return-object v9

    .line 191
    :cond_0
    array-length v9, p0

    rem-int/lit8 v9, v9, 0x4

    if-ne v9, v10, :cond_2

    .line 192
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "Input length is invalid."

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 218
    .end local v5    # "out":[B
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v5

    .line 194
    .restart local v5    # "out":[B
    :cond_2
    array-length v9, p0

    rem-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_3

    .line 195
    invoke-static {p0}, Lcom/samsung/android/rlc/util/Base64;->correctInput([B)[B

    move-result-object p0

    .line 198
    :cond_3
    array-length v2, p0

    .line 199
    .local v2, "inN":I
    add-int/lit8 v9, v2, -0x2

    aget-byte v9, p0, v9

    if-ne v9, v11, :cond_4

    const/4 v7, 0x2

    .line 200
    .local v7, "padN":I
    :goto_0
    mul-int/lit8 v9, v2, 0x3

    div-int/lit8 v9, v9, 0x4

    sub-int v6, v9, v7

    .line 202
    .local v6, "outN":I
    new-array v5, v6, [B

    .line 204
    .local v5, "out":[B
    const/4 v9, 0x4

    new-array v8, v9, [B

    .line 205
    .local v8, "temp":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .line 206
    .local v3, "j":I
    const/4 v1, 0x0

    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 207
    rem-int/lit8 v9, v1, 0x4

    sget-object v10, Lcom/samsung/android/rlc/util/Base64;->DECODE_TABLE:[B

    aget-byte v11, p0, v1

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 208
    rem-int/lit8 v9, v1, 0x4

    if-ne v9, v12, :cond_6

    .line 209
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    const/4 v9, 0x0

    aget-byte v9, v8, v9

    shl-int/lit8 v9, v9, 0x2

    and-int/lit16 v9, v9, 0xfc

    const/4 v10, 0x1

    aget-byte v10, v8, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    .line 210
    if-ge v3, v6, :cond_7

    .line 211
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/4 v9, 0x1

    aget-byte v9, v8, v9

    shl-int/lit8 v9, v9, 0x4

    and-int/lit16 v9, v9, 0xf0

    const/4 v10, 0x2

    aget-byte v10, v8, v10

    shr-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    .line 213
    :goto_2
    if-ge v4, v6, :cond_6

    .line 214
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    const/4 v9, 0x2

    aget-byte v9, v8, v9

    shl-int/lit8 v9, v9, 0x6

    and-int/lit16 v9, v9, 0xc0

    const/4 v10, 0x3

    aget-byte v10, v8, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    .line 206
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_1

    .line 199
    .end local v1    # "i":I
    .end local v4    # "j":I
    .end local v6    # "outN":I
    .end local v7    # "padN":I
    .end local v8    # "temp":[B
    .local v5, "out":[B
    :cond_4
    add-int/lit8 v9, v2, -0x1

    aget-byte v9, p0, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v9, v11, :cond_5

    const/4 v7, 0x1

    .restart local v7    # "padN":I
    goto :goto_0

    .end local v7    # "padN":I
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "padN":I
    goto :goto_0

    .restart local v1    # "i":I
    .restart local v4    # "j":I
    .local v5, "out":[B
    .restart local v6    # "outN":I
    .restart local v8    # "temp":[B
    :cond_6
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_3

    :cond_7
    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_2
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 3
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 121
    .local v1, "out":[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/rlc/util/Base64;->encode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    .end local v1    # "out":[B
    :goto_0
    return-object v1

    .line 122
    .restart local v1    # "out":[B
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Z)[B
    .locals 3
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "urlSafe"    # Z

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 142
    .local v1, "out":[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/rlc/util/Base64;->encode([BZ)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    .end local v1    # "out":[B
    :goto_0
    return-object v1

    .line 143
    .restart local v1    # "out":[B
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encode([B)[B
    .locals 1
    .param p0, "in"    # [B

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/Base64;->encode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BZ)[B
    .locals 13
    .param p0, "in"    # [B
    .param p1, "urlSafe"    # Z

    .prologue
    const/4 v12, 0x2

    .line 74
    const/4 v6, 0x0

    .line 77
    .local v6, "out":[B
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/rlc/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 79
    .local v1, "encodeTable":[B
    :goto_0
    array-length v3, p0

    .line 80
    .local v3, "inN":I
    add-int/lit8 v10, v3, 0x2

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v10, v10, 0x3

    sub-int v8, v10, v3

    .line 81
    .local v8, "padN":I
    add-int/lit8 v10, v3, 0x2

    add-int/lit8 v11, v3, 0x2

    rem-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x4

    div-int/lit8 v7, v10, 0x3

    .line 83
    .local v7, "outN":I
    new-array v6, v7, [B

    .line 85
    .local v6, "out":[B
    const/4 v10, 0x3

    new-array v9, v10, [B

    .line 86
    .local v9, "temp":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v4, 0x0

    .line 87
    .local v4, "j":I
    const/4 v2, 0x0

    move v5, v4

    .end local v4    # "j":I
    .local v5, "j":I
    :goto_1
    add-int v10, v3, v8

    if-ge v2, v10, :cond_3

    .line 88
    if-ge v2, v3, :cond_1

    .line 89
    rem-int/lit8 v10, v2, 0x3

    aget-byte v11, p0, v2

    aput-byte v11, v9, v10

    .line 93
    :goto_2
    rem-int/lit8 v10, v2, 0x3

    if-ne v10, v12, :cond_4

    .line 94
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    shr-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v6, v5

    .line 95
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .restart local v5    # "j":I
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    shl-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0x30

    const/4 v11, 0x1

    aget-byte v11, v9, v11

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    aget-byte v10, v1, v10

    aput-byte v10, v6, v4

    .line 96
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    const/4 v10, 0x1

    aget-byte v10, v9, v10

    shl-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x3c

    const/4 v11, 0x2

    aget-byte v11, v9, v11

    shr-int/lit8 v11, v11, 0x6

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    aget-byte v10, v1, v10

    aput-byte v10, v6, v5

    .line 97
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .restart local v5    # "j":I
    const/4 v10, 0x2

    aget-byte v10, v9, v10

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v6, v4

    move v4, v5

    .line 87
    .end local v5    # "j":I
    .restart local v4    # "j":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "j":I
    .restart local v5    # "j":I
    goto :goto_1

    .line 77
    .end local v1    # "encodeTable":[B
    .end local v2    # "i":I
    .end local v3    # "inN":I
    .end local v5    # "j":I
    .end local v7    # "outN":I
    .end local v8    # "padN":I
    .end local v9    # "temp":[B
    .local v6, "out":[B
    :cond_0
    sget-object v1, Lcom/samsung/android/rlc/util/Base64;->ENCODE_TABLE:[B

    .restart local v1    # "encodeTable":[B
    goto :goto_0

    .line 91
    .restart local v2    # "i":I
    .restart local v3    # "inN":I
    .restart local v5    # "j":I
    .local v6, "out":[B
    .restart local v7    # "outN":I
    .restart local v8    # "padN":I
    .restart local v9    # "temp":[B
    :cond_1
    rem-int/lit8 v10, v2, 0x3

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    goto :goto_2

    .line 103
    .end local v1    # "encodeTable":[B
    .end local v2    # "i":I
    .end local v3    # "inN":I
    .end local v5    # "j":I
    .end local v6    # "out":[B
    .end local v7    # "outN":I
    .end local v8    # "padN":I
    .end local v9    # "temp":[B
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v6

    .line 100
    .restart local v1    # "encodeTable":[B
    .restart local v2    # "i":I
    .restart local v3    # "inN":I
    .restart local v5    # "j":I
    .restart local v6    # "out":[B
    .restart local v7    # "outN":I
    .restart local v8    # "padN":I
    .restart local v9    # "temp":[B
    :cond_3
    const/4 v2, 0x0

    move v4, v5

    .end local v5    # "j":I
    .restart local v4    # "j":I
    :goto_4
    if-ge v2, v8, :cond_2

    .line 101
    add-int/lit8 v4, v4, -0x1

    const/16 v10, 0x3d

    aput-byte v10, v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v4    # "j":I
    .restart local v5    # "j":I
    :cond_4
    move v4, v5

    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_3
.end method
