.class public final Lcom/google/android/exoplayer/util/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# static fields
.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x3

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 54
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 59
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    .line 38
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    .line 42
    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    .line 46
    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    .line 50
    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    .line 54
    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    .line 59
    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static getAc3SyncframeAudioSampleCount()I
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x600

    return v0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 4
    .param p0, "fscod"    # I
    .param p1, "frmsizecod"    # I

    .prologue
    .line 226
    sget-object v2, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v1, v2, p0

    .line 227
    .local v1, "sampleRate":I
    const v2, 0xac44

    if-ne v1, v2, :cond_0

    .line 228
    sget-object v2, Lcom/google/android/exoplayer/util/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    div-int/lit8 v3, p1, 0x2

    aget v2, v2, v3

    rem-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    .line 234
    :goto_0
    return v2

    .line 230
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer/util/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    div-int/lit8 v3, p1, 0x2

    aget v0, v2, v3

    .line 231
    .local v0, "bitrate":I
    const/16 v2, 0x7d00

    if-ne v1, v2, :cond_1

    .line 232
    mul-int/lit8 v2, v0, 0x6

    goto :goto_0

    .line 234
    :cond_1
    mul-int/lit8 v2, v0, 0x4

    goto :goto_0
.end method

.method public static parseAc3AnnexFFormat(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 12
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "durationUs"    # J
    .param p4, "language"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v10, v0, 0x6

    .line 75
    .local v10, "fscod":I
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v7, v0, v10

    .line 76
    .local v7, "sampleRate":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 77
    .local v11, "nextByte":I
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v1, v11, 0x38

    shr-int/lit8 v1, v1, 0x3

    aget v6, v0, v1

    .line 78
    .local v6, "channelCount":I
    and-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_0

    .line 79
    add-int/lit8 v6, v6, 0x1

    .line 81
    :cond_0
    const-string v1, "audio/ac3"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v8, 0x0

    move-object v0, p1

    move-wide v4, p2

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static parseAc3SyncframeFormat(Lcom/google/android/exoplayer/util/ParsableBitArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 14
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableBitArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "durationUs"    # J
    .param p4, "language"    # Ljava/lang/String;

    .prologue
    .line 124
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 125
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 126
    .local v11, "fscod":I
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 127
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 128
    .local v10, "acmod":I
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq v10, v0, :cond_0

    .line 129
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 131
    :cond_0
    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 134
    :cond_1
    const/4 v0, 0x2

    if-ne v10, v0, :cond_2

    .line 135
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v12

    .line 138
    .local v12, "lfeon":Z
    const-string v1, "audio/ac3"

    const/4 v2, -0x1

    const/4 v3, -0x1

    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v4, v0, v10

    if-eqz v12, :cond_3

    const/4 v0, 0x1

    :goto_0
    add-int v6, v4, v0

    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v7, v0, v11

    const/4 v8, 0x0

    move-object v0, p1

    move-wide/from16 v4, p2

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 4
    .param p0, "data"    # [B

    .prologue
    const/4 v3, 0x4

    .line 178
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v1, v2, 0x6

    .line 179
    .local v1, "fscod":I
    aget-byte v2, p0, v3

    and-int/lit8 v0, v2, 0x3f

    .line 180
    .local v0, "frmsizecod":I
    invoke-static {v1, v0}, Lcom/google/android/exoplayer/util/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v2

    return v2
.end method

.method public static parseEAc3AnnexFFormat(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 12
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "durationUs"    # J
    .param p4, "language"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v10, v0, 0x6

    .line 102
    .local v10, "fscod":I
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v7, v0, v10

    .line 103
    .local v7, "sampleRate":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 104
    .local v11, "nextByte":I
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v1, v11, 0xe

    shr-int/lit8 v1, v1, 0x1

    aget v6, v0, v1

    .line 105
    .local v6, "channelCount":I
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_0

    .line 106
    add-int/lit8 v6, v6, 0x1

    .line 108
    :cond_0
    const-string v1, "audio/eac3"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v8, 0x0

    move-object v0, p1

    move-wide v4, p2

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v0, v1, 0x6

    .line 221
    .local v0, "fscod":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x6

    :goto_0
    mul-int/lit16 v1, v1, 0x100

    return v1

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer/util/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v2, v2, 0x4

    aget v1, v1, v2

    goto :goto_0
.end method

.method public static parseEAc3SyncframeAudioSampleCount([B)I
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x4

    .line 208
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    mul-int/lit16 v0, v0, 0x100

    return v0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static parseEAc3SyncframeSize([B)I
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 190
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static parseEac3SyncframeFormat(Lcom/google/android/exoplayer/util/ParsableBitArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 14
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableBitArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "durationUs"    # J
    .param p4, "language"    # Ljava/lang/String;

    .prologue
    .line 155
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 157
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 158
    .local v11, "fscod":I
    const/4 v0, 0x3

    if-ne v11, v0, :cond_0

    .line 159
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    aget v7, v0, v1

    .line 164
    .local v7, "sampleRate":I
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 165
    .local v10, "acmod":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v12

    .line 166
    .local v12, "lfeon":Z
    const-string v1, "audio/eac3"

    const/4 v2, -0x1

    const/4 v3, -0x1

    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v4, v0, v10

    if-eqz v12, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int v6, v4, v0

    const/4 v8, 0x0

    move-object v0, p1

    move-wide/from16 v4, p2

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0

    .line 161
    .end local v7    # "sampleRate":I
    .end local v10    # "acmod":I
    .end local v12    # "lfeon":Z
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 162
    sget-object v0, Lcom/google/android/exoplayer/util/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v7, v0, v11

    .restart local v7    # "sampleRate":I
    goto :goto_0

    .line 166
    .restart local v10    # "acmod":I
    .restart local v12    # "lfeon":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
