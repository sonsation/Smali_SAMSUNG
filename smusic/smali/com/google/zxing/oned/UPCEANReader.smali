.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field static final END_PATTERN:[I

.field static final L_AND_G_PATTERNS:[[I

.field static final L_PATTERNS:[[I

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 53
    new-array v4, v9, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 58
    new-array v4, v10, [I

    fill-array-data v4, :array_1

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 62
    new-array v4, v11, [I

    fill-array-data v4, :array_2

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    .line 66
    const/16 v4, 0xa

    new-array v4, v4, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_3

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-array v6, v7, [I

    fill-array-data v6, :array_4

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_5

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_6

    aput-object v5, v4, v9

    new-array v5, v7, [I

    fill-array-data v5, :array_7

    aput-object v5, v4, v7

    new-array v5, v7, [I

    fill-array-data v5, :array_8

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_9

    aput-object v5, v4, v11

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_a

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_b

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v6, v7, [I

    fill-array-data v6, :array_c

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 85
    const/16 v4, 0x14

    new-array v4, v4, [[I

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 86
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    const/16 v6, 0xa

    invoke-static {v4, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_1

    .line 88
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v5, v0, -0xa

    aget-object v3, v4, v5

    .line 89
    .local v3, "widths":[I
    array-length v4, v3

    new-array v2, v4, [I

    .line 90
    .local v2, "reversedWidths":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 91
    array-length v4, v3

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    aput v4, v2, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_0
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v2, v4, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "j":I
    .end local v2    # "reversedWidths":[I
    .end local v3    # "widths":[I
    :cond_1
    return-void

    .line 53
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 62
    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 66
    :array_3
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/4 v4, 0x0

    .line 264
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 265
    .local v2, "length":I
    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v4

    .line 269
    :cond_1
    const/4 v3, 0x0

    .line 270
    .local v3, "sum":I
    add-int/lit8 v1, v2, -0x2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 271
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    .line 272
    .local v0, "digit":I
    if-ltz v0, :cond_2

    if-le v0, v6, :cond_3

    .line 273
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 275
    :cond_3
    add-int/2addr v3, v0

    .line 270
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 277
    .end local v0    # "digit":I
    :cond_4
    mul-int/lit8 v3, v3, 0x3

    .line 278
    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_7

    .line 279
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    .line 280
    .restart local v0    # "digit":I
    if-ltz v0, :cond_5

    if-le v0, v6, :cond_6

    .line 281
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 283
    :cond_6
    add-int/2addr v3, v0

    .line 278
    add-int/lit8 v1, v1, -0x2

    goto :goto_2

    .line 285
    .end local v0    # "digit":I
    :cond_7
    rem-int/lit8 v5, v3, 0xa

    if-nez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method
