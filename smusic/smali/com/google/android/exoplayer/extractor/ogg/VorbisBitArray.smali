.class final Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field public final data:[B

.field private limit:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 39
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;-><init>([BI)V

    .line 40
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->data:[B

    .line 50
    mul-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->limit:I

    .line 51
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 13
    .param p1, "numBits"    # I

    .prologue
    const/16 v12, 0xff

    const/4 v7, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v6

    add-int/2addr v6, p1

    iget v8, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->limit:I

    if-gt v6, v8, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 76
    if-nez p1, :cond_1

    .line 106
    :goto_1
    return v7

    :cond_0
    move v6, v7

    .line 75
    goto :goto_0

    .line 79
    :cond_1
    const/4 v5, 0x0

    .line 80
    .local v5, "result":I
    const/4 v0, 0x0

    .line 81
    .local v0, "bitCount":I
    iget v6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    if-eqz v6, :cond_2

    .line 82
    iget v6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v6, v6, 0x8

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 83
    rsub-int/lit8 v6, v0, 0x8

    ushr-int v3, v12, v6

    .line 84
    .local v3, "mask":I
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v6, v6, v8

    iget v8, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    ushr-int/2addr v6, v8

    and-int v5, v6, v3

    .line 85
    iget v6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 86
    iget v6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_2

    .line 87
    iget v6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 88
    iput v7, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 92
    .end local v3    # "mask":I
    :cond_2
    sub-int v6, p1, v0

    const/4 v7, 0x7

    if-le v6, v7, :cond_3

    .line 93
    sub-int v6, p1, v0

    div-int/lit8 v4, v6, 0x8

    .line 94
    .local v4, "numBytes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 95
    int-to-long v6, v5

    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->data:[B

    iget v9, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v8, v8, v9

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    long-to-int v5, v6

    .line 96
    add-int/lit8 v0, v0, 0x8

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 100
    .end local v2    # "i":I
    .end local v4    # "numBytes":I
    :cond_3
    if-le p1, v0, :cond_4

    .line 101
    sub-int v1, p1, v0

    .line 102
    .local v1, "bitsOnNextByte":I
    rsub-int/lit8 v6, v1, 0x8

    ushr-int v3, v12, v6

    .line 103
    .restart local v3    # "mask":I
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v3

    shl-int/2addr v6, v0

    or-int/2addr v5, v6

    .line 104
    iget v6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    .end local v1    # "bitsOnNextByte":I
    .end local v3    # "mask":I
    :cond_4
    move v7, v5

    .line 106
    goto :goto_1
.end method

.method public skipBits(I)V
    .locals 2
    .param p1, "numberOfBits"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->limit:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 116
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 117
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 119
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 122
    :cond_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
