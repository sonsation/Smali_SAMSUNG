.class final Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# direct methods
.method public static rechunk(I[J[IJ)Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;
    .locals 25
    .param p0, "fixedSampleSize"    # I
    .param p1, "chunkOffsets"    # [J
    .param p2, "chunkSampleCounts"    # [I
    .param p3, "timestampDeltaInTimeUnits"    # J

    .prologue
    .line 57
    const/16 v2, 0x2000

    div-int v15, v2, p0

    .line 60
    .local v15, "maxSampleCount":I
    const/16 v18, 0x0

    .line 61
    .local v18, "rechunkedSampleCount":I
    move-object/from16 v8, p2

    .local v8, "arr$":[I
    array-length v14, v8

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_0

    aget v11, v8, v13

    .line 62
    .local v11, "chunkSampleCount":I
    invoke-static {v11, v15}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v2

    add-int v18, v18, v2

    .line 61
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 65
    .end local v11    # "chunkSampleCount":I
    :cond_0
    move/from16 v0, v18

    new-array v3, v0, [J

    .line 66
    .local v3, "offsets":[J
    move/from16 v0, v18

    new-array v4, v0, [I

    .line 67
    .local v4, "sizes":[I
    const/4 v5, 0x0

    .line 68
    .local v5, "maximumSize":I
    move/from16 v0, v18

    new-array v6, v0, [J

    .line 69
    .local v6, "timestamps":[J
    move/from16 v0, v18

    new-array v7, v0, [I

    .line 71
    .local v7, "flags":[I
    const/16 v17, 0x0

    .line 72
    .local v17, "originalSampleIndex":I
    const/16 v16, 0x0

    .line 73
    .local v16, "newSampleIndex":I
    const/4 v10, 0x0

    .local v10, "chunkIndex":I
    :goto_1
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v10, v2, :cond_2

    .line 74
    aget v12, p2, v10

    .line 75
    .local v12, "chunkSamplesRemaining":I
    aget-wide v20, p1, v10

    .line 77
    .local v20, "sampleOffset":J
    :goto_2
    if-lez v12, :cond_1

    .line 78
    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 80
    .local v9, "bufferSampleCount":I
    aput-wide v20, v3, v16

    .line 81
    mul-int v2, p0, v9

    aput v2, v4, v16

    .line 82
    aget v2, v4, v16

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 83
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v22, v22, p3

    aput-wide v22, v6, v16

    .line 84
    const/4 v2, 0x1

    aput v2, v7, v16

    .line 86
    aget v2, v4, v16

    int-to-long v0, v2

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    .line 87
    add-int v17, v17, v9

    .line 89
    sub-int/2addr v12, v9

    .line 90
    add-int/lit8 v16, v16, 0x1

    .line 91
    goto :goto_2

    .line 73
    .end local v9    # "bufferSampleCount":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 94
    .end local v12    # "chunkSamplesRemaining":I
    .end local v20    # "sampleOffset":J
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[I)V

    return-object v2
.end method
