.class public final Lcom/google/android/exoplayer/util/FlacUtil;
.super Ljava/lang/Object;
.source "FlacUtil.java"


# direct methods
.method public static extractSampleTimestamp(Lcom/google/android/exoplayer/util/FlacStreamInfo;Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 6
    .param p0, "streamInfo"    # Lcom/google/android/exoplayer/util/FlacStreamInfo;
    .param p1, "frameData"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 42
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 43
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUTF8EncodedLong()J

    move-result-wide v0

    .line 44
    .local v0, "sampleNumber":J
    iget v2, p0, Lcom/google/android/exoplayer/util/FlacStreamInfo;->minBlockSize:I

    iget v3, p0, Lcom/google/android/exoplayer/util/FlacStreamInfo;->maxBlockSize:I

    if-ne v2, v3, :cond_0

    .line 46
    iget v2, p0, Lcom/google/android/exoplayer/util/FlacStreamInfo;->minBlockSize:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 48
    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    iget v4, p0, Lcom/google/android/exoplayer/util/FlacStreamInfo;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    return-wide v2
.end method
