.class public final Lcom/google/android/exoplayer/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;,
        Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final NAL_START_CODE:[B

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    .line 87
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 115
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    .line 82
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 87
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2
    .param p0, "prefixFlags"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 448
    aput-boolean v1, p0, v1

    .line 449
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 450
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 451
    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 174
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 175
    .local v1, "length":I
    const/4 v0, 0x0

    .line 176
    .local v0, "consecutiveZeros":I
    const/4 v2, 0x0

    .line 177
    .local v2, "offset":I
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_3

    .line 178
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v4, v5, 0xff

    .line 179
    .local v4, "value":I
    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 180
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 182
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 183
    .local v3, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 185
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 199
    .end local v3    # "offsetData":Ljava/nio/ByteBuffer;
    .end local v4    # "value":I
    :goto_1
    return-void

    .line 189
    .restart local v4    # "value":I
    :cond_0
    if-nez v4, :cond_1

    .line 190
    add-int/lit8 v0, v0, 0x1

    .line 192
    :cond_1
    if-eqz v4, :cond_2

    .line 193
    const/4 v0, 0x0

    .line 195
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 196
    goto :goto_0

    .line 198
    .end local v4    # "value":I
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I
    .param p3, "prefixFlags"    # [Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 386
    sub-int v1, p2, p1

    .line 388
    .local v1, "length":I
    if-ltz v1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 389
    if-nez v1, :cond_2

    .line 439
    .end local p2    # "endOffset":I
    :cond_0
    :goto_1
    return p2

    .restart local p2    # "endOffset":I
    :cond_1
    move v3, v5

    .line 388
    goto :goto_0

    .line 393
    :cond_2
    if-eqz p3, :cond_5

    .line 394
    aget-boolean v3, p3, v5

    if-eqz v3, :cond_3

    .line 395
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 396
    add-int/lit8 p2, p1, -0x3

    goto :goto_1

    .line 397
    :cond_3
    if-le v1, v4, :cond_4

    aget-boolean v3, p3, v4

    if-eqz v3, :cond_4

    aget-byte v3, p0, p1

    if-ne v3, v4, :cond_4

    .line 398
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 399
    add-int/lit8 p2, p1, -0x2

    goto :goto_1

    .line 400
    :cond_4
    if-le v1, v6, :cond_5

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_5

    aget-byte v3, p0, p1

    if-nez v3, :cond_5

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_5

    .line 402
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 403
    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    .line 407
    :cond_5
    add-int/lit8 v2, p2, -0x1

    .line 410
    .local v2, "limit":I
    add-int/lit8 v0, p1, 0x2

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_9

    .line 411
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xfe

    if-eqz v3, :cond_6

    .line 410
    :goto_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 414
    :cond_6
    add-int/lit8 v3, v0, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_8

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_8

    aget-byte v3, p0, v0

    if-ne v3, v4, :cond_8

    .line 415
    if-eqz p3, :cond_7

    .line 416
    invoke-static {p3}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 418
    :cond_7
    add-int/lit8 p2, v0, -0x2

    goto :goto_1

    .line 422
    :cond_8
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 426
    :cond_9
    if-eqz p3, :cond_0

    .line 428
    if-le v1, v6, :cond_b

    add-int/lit8 v3, p2, -0x3

    aget-byte v3, p0, v3

    if-nez v3, :cond_a

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_a

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_a

    move v3, v4

    :goto_4
    aput-boolean v3, p3, v5

    .line 433
    if-le v1, v4, :cond_10

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_f

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_f

    move v3, v4

    :goto_5
    aput-boolean v3, p3, v4

    .line 436
    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_12

    :goto_6
    aput-boolean v4, p3, v6

    goto/16 :goto_1

    :cond_a
    move v3, v5

    .line 428
    goto :goto_4

    :cond_b
    if-ne v1, v6, :cond_d

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_c

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_c

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_c

    move v3, v4

    goto :goto_4

    :cond_c
    move v3, v5

    goto :goto_4

    :cond_d
    aget-boolean v3, p3, v4

    if-eqz v3, :cond_e

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_e

    move v3, v4

    goto :goto_4

    :cond_e
    move v3, v5

    goto :goto_4

    :cond_f
    move v3, v5

    .line 433
    goto :goto_5

    :cond_10
    aget-boolean v3, p3, v6

    if-eqz v3, :cond_11

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_11

    move v3, v4

    goto :goto_5

    :cond_11
    move v3, v5

    goto :goto_5

    :cond_12
    move v4, v5

    .line 436
    goto :goto_6
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .prologue
    .line 454
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1

    .line 455
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 459
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 454
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 459
    goto :goto_1
.end method

.method public static getH265NalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 232
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 220
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B
    .locals 3
    .param p0, "atom"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 206
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 207
    .local v1, "offset":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 208
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public static parsePpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;
    .locals 4
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableBitArray;

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 357
    .local v1, "picParameterSetId":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 358
    .local v2, "seqParameterSetId":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 359
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 360
    .local v0, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v3, Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/exoplayer/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v3
.end method

.method public static parseSpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;
    .locals 40
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableBitArray;

    .prologue
    .line 244
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v30

    .line 245
    .local v30, "profileIdc":I
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 248
    .local v3, "seqParameterSetId":I
    const/4 v15, 0x1

    .line 249
    .local v15, "chromaFormatIdc":I
    const/4 v7, 0x0

    .line 250
    .local v7, "separateColorPlaneFlag":Z
    const/16 v2, 0x64

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x6e

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7a

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0xf4

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2c

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x56

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x76

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x80

    move/from16 v0, v30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8a

    move/from16 v0, v30

    if-ne v0, v2, :cond_5

    .line 253
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 254
    const/4 v2, 0x3

    if-ne v15, v2, :cond_1

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 257
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 259
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v34

    .line 261
    .local v34, "seqScalingMatrixPresentFlag":Z
    if-eqz v34, :cond_5

    .line 262
    const/4 v2, 0x3

    if-eq v15, v2, :cond_3

    const/16 v25, 0x8

    .line 263
    .local v25, "limit":I
    :goto_0
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v33

    .line 265
    .local v33, "seqScalingListPresentFlag":Z
    if-eqz v33, :cond_2

    .line 266
    const/4 v2, 0x6

    move/from16 v0, v24

    if-ge v0, v2, :cond_4

    const/16 v2, 0x10

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/util/NalUnitUtil;->skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 263
    :cond_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 262
    .end local v24    # "i":I
    .end local v25    # "limit":I
    .end local v33    # "seqScalingListPresentFlag":Z
    :cond_3
    const/16 v25, 0xc

    goto :goto_0

    .line 266
    .restart local v24    # "i":I
    .restart local v25    # "limit":I
    .restart local v33    # "seqScalingListPresentFlag":Z
    :cond_4
    const/16 v2, 0x40

    goto :goto_2

    .line 272
    .end local v24    # "i":I
    .end local v25    # "limit":I
    .end local v33    # "seqScalingListPresentFlag":Z
    .end local v34    # "seqScalingMatrixPresentFlag":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v9, v2, 0x4

    .line 273
    .local v9, "frameNumLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 274
    .local v10, "picOrderCntType":I
    const/4 v11, 0x0

    .line 275
    .local v11, "picOrderCntLsbLength":I
    const/4 v12, 0x0

    .line 276
    .local v12, "deltaPicOrderAlwaysZeroFlag":Z
    if-nez v10, :cond_a

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v11, v2, 0x4

    .line 288
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 289
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v29, v2, 0x1

    .line 292
    .local v29, "picWidthInMbs":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v28, v2, 0x1

    .line 293
    .local v28, "picHeightInMapUnits":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v8

    .line 294
    .local v8, "frameMbsOnlyFlag":Z
    if-eqz v8, :cond_b

    const/4 v2, 0x1

    :goto_3
    rsub-int/lit8 v2, v2, 0x2

    mul-int v23, v2, v28

    .line 295
    .local v23, "frameHeightInMbs":I
    if-nez v8, :cond_7

    .line 296
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 299
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 300
    mul-int/lit8 v4, v29, 0x10

    .line 301
    .local v4, "frameWidth":I
    mul-int/lit8 v5, v23, 0x10

    .line 302
    .local v5, "frameHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v22

    .line 303
    .local v22, "frameCroppingFlag":Z
    if-eqz v22, :cond_8

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 305
    .local v19, "frameCropLeftOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 306
    .local v20, "frameCropRightOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    .line 307
    .local v21, "frameCropTopOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 309
    .local v18, "frameCropBottomOffset":I
    if-nez v15, :cond_d

    .line 310
    const/16 v16, 0x1

    .line 311
    .local v16, "cropUnitX":I
    if-eqz v8, :cond_c

    const/4 v2, 0x1

    :goto_4
    rsub-int/lit8 v17, v2, 0x2

    .line 318
    .local v17, "cropUnitY":I
    :goto_5
    add-int v2, v19, v20

    mul-int v2, v2, v16

    sub-int/2addr v4, v2

    .line 319
    add-int v2, v21, v18

    mul-int v2, v2, v17

    sub-int/2addr v5, v2

    .line 322
    .end local v16    # "cropUnitX":I
    .end local v17    # "cropUnitY":I
    .end local v18    # "frameCropBottomOffset":I
    .end local v19    # "frameCropLeftOffset":I
    .end local v20    # "frameCropRightOffset":I
    .end local v21    # "frameCropTopOffset":I
    :cond_8
    const/high16 v6, 0x3f800000    # 1.0f

    .line 323
    .local v6, "pixelWidthHeightRatio":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v37

    .line 324
    .local v37, "vuiParametersPresentFlag":Z
    if-eqz v37, :cond_9

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v14

    .line 326
    .local v14, "aspectRatioInfoPresentFlag":Z
    if-eqz v14, :cond_9

    .line 327
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 328
    .local v13, "aspectRatioIdc":I
    const/16 v2, 0xff

    if-ne v13, v2, :cond_11

    .line 329
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v32

    .line 330
    .local v32, "sarWidth":I
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v31

    .line 331
    .local v31, "sarHeight":I
    if-eqz v32, :cond_9

    if-eqz v31, :cond_9

    .line 332
    move/from16 v0, v32

    int-to-float v2, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v6, v2, v38

    .line 342
    .end local v13    # "aspectRatioIdc":I
    .end local v14    # "aspectRatioInfoPresentFlag":Z
    .end local v31    # "sarHeight":I
    .end local v32    # "sarWidth":I
    :cond_9
    :goto_6
    new-instance v2, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;-><init>(IIIFZZIIIZ)V

    return-object v2

    .line 279
    .end local v4    # "frameWidth":I
    .end local v5    # "frameHeight":I
    .end local v6    # "pixelWidthHeightRatio":F
    .end local v8    # "frameMbsOnlyFlag":Z
    .end local v22    # "frameCroppingFlag":Z
    .end local v23    # "frameHeightInMbs":I
    .end local v28    # "picHeightInMapUnits":I
    .end local v29    # "picWidthInMbs":I
    .end local v37    # "vuiParametersPresentFlag":Z
    :cond_a
    const/4 v2, 0x1

    if-ne v10, v2, :cond_6

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v12

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v26, v0

    .line 284
    .local v26, "numRefFramesInPicOrderCntCycle":J
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_7
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v38, v0

    cmp-long v2, v38, v26

    if-gez v2, :cond_6

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    .line 284
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 294
    .end local v24    # "i":I
    .end local v26    # "numRefFramesInPicOrderCntCycle":J
    .restart local v8    # "frameMbsOnlyFlag":Z
    .restart local v28    # "picHeightInMapUnits":I
    .restart local v29    # "picWidthInMbs":I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 311
    .restart local v4    # "frameWidth":I
    .restart local v5    # "frameHeight":I
    .restart local v16    # "cropUnitX":I
    .restart local v18    # "frameCropBottomOffset":I
    .restart local v19    # "frameCropLeftOffset":I
    .restart local v20    # "frameCropRightOffset":I
    .restart local v21    # "frameCropTopOffset":I
    .restart local v22    # "frameCroppingFlag":Z
    .restart local v23    # "frameHeightInMbs":I
    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    .line 313
    .end local v16    # "cropUnitX":I
    :cond_d
    const/4 v2, 0x3

    if-ne v15, v2, :cond_e

    const/16 v36, 0x1

    .line 314
    .local v36, "subWidthC":I
    :goto_8
    const/4 v2, 0x1

    if-ne v15, v2, :cond_f

    const/16 v35, 0x2

    .line 315
    .local v35, "subHeightC":I
    :goto_9
    move/from16 v16, v36

    .line 316
    .restart local v16    # "cropUnitX":I
    if-eqz v8, :cond_10

    const/4 v2, 0x1

    :goto_a
    rsub-int/lit8 v2, v2, 0x2

    mul-int v17, v35, v2

    .restart local v17    # "cropUnitY":I
    goto/16 :goto_5

    .line 313
    .end local v16    # "cropUnitX":I
    .end local v17    # "cropUnitY":I
    .end local v35    # "subHeightC":I
    .end local v36    # "subWidthC":I
    :cond_e
    const/16 v36, 0x2

    goto :goto_8

    .line 314
    .restart local v36    # "subWidthC":I
    :cond_f
    const/16 v35, 0x1

    goto :goto_9

    .line 316
    .restart local v16    # "cropUnitX":I
    .restart local v35    # "subHeightC":I
    :cond_10
    const/4 v2, 0x0

    goto :goto_a

    .line 334
    .end local v16    # "cropUnitX":I
    .end local v18    # "frameCropBottomOffset":I
    .end local v19    # "frameCropLeftOffset":I
    .end local v20    # "frameCropRightOffset":I
    .end local v21    # "frameCropTopOffset":I
    .end local v35    # "subHeightC":I
    .end local v36    # "subWidthC":I
    .restart local v6    # "pixelWidthHeightRatio":F
    .restart local v13    # "aspectRatioIdc":I
    .restart local v14    # "aspectRatioInfoPresentFlag":Z
    .restart local v37    # "vuiParametersPresentFlag":Z
    :cond_11
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v2

    if-ge v13, v2, :cond_12

    .line 335
    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v6, v2, v13

    goto :goto_6

    .line 337
    :cond_12
    const-string v2, "NalUnitUtil"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Unexpected aspect_ratio_idc value: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V
    .locals 5
    .param p0, "bitArray"    # Lcom/google/android/exoplayer/util/ParsableBitArray;
    .param p1, "size"    # I

    .prologue
    .line 463
    const/16 v2, 0x8

    .line 464
    .local v2, "lastScale":I
    const/16 v3, 0x8

    .line 465
    .local v3, "nextScale":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 466
    if-eqz v3, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    .line 468
    .local v0, "deltaScale":I
    add-int v4, v2, v0

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v3, v4, 0x100

    .line 470
    .end local v0    # "deltaScale":I
    :cond_0
    if-nez v3, :cond_1

    .line 465
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 470
    goto :goto_1

    .line 472
    :cond_2
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 14
    .param p0, "data"    # [B
    .param p1, "limit"    # I

    .prologue
    .line 129
    sget-object v12, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 130
    const/4 v4, 0x0

    .line 131
    .local v4, "position":I
    const/4 v6, 0x0

    .local v6, "scratchEscapeCount":I
    move v7, v6

    .line 132
    .end local v6    # "scratchEscapeCount":I
    .local v7, "scratchEscapeCount":I
    :cond_0
    :goto_0
    if-ge v4, p1, :cond_2

    .line 133
    :try_start_0
    invoke-static {p0, v4, p1}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v4

    .line 134
    if-ge v4, p1, :cond_0

    .line 135
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v11, v11

    if-gt v11, v7, :cond_1

    .line 137
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v13, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    sput-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    .line 140
    :cond_1
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "scratchEscapeCount":I
    .restart local v6    # "scratchEscapeCount":I
    :try_start_1
    aput v4, v11, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    add-int/lit8 v4, v4, 0x3

    move v7, v6

    .end local v6    # "scratchEscapeCount":I
    .restart local v7    # "scratchEscapeCount":I
    goto :goto_0

    .line 145
    :cond_2
    sub-int v8, p1, v7

    .line 146
    .local v8, "unescapedLength":I
    const/4 v1, 0x0

    .line 147
    .local v1, "escapedPosition":I
    const/4 v9, 0x0

    .line 148
    .local v9, "unescapedPosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 149
    :try_start_2
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v3, v11, v2

    .line 150
    .local v3, "nextEscapePosition":I
    sub-int v0, v3, v1

    .line 151
    .local v0, "copyLength":I
    invoke-static {p0, v1, p0, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/2addr v9, v0

    .line 153
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "unescapedPosition":I
    .local v10, "unescapedPosition":I
    const/4 v11, 0x0

    aput-byte v11, p0, v9

    .line 154
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "unescapedPosition":I
    .restart local v9    # "unescapedPosition":I
    const/4 v11, 0x0

    aput-byte v11, p0, v10

    .line 155
    add-int/lit8 v11, v0, 0x3

    add-int/2addr v1, v11

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    .end local v0    # "copyLength":I
    .end local v3    # "nextEscapePosition":I
    :cond_3
    sub-int v5, v8, v9

    .line 159
    .local v5, "remainingLength":I
    invoke-static {p0, v1, p0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v8

    .line 161
    .end local v1    # "escapedPosition":I
    .end local v2    # "i":I
    .end local v5    # "remainingLength":I
    .end local v8    # "unescapedLength":I
    .end local v9    # "unescapedPosition":I
    :catchall_0
    move-exception v11

    move v6, v7

    .end local v7    # "scratchEscapeCount":I
    .restart local v6    # "scratchEscapeCount":I
    :goto_2
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    :catchall_1
    move-exception v11

    goto :goto_2
.end method
