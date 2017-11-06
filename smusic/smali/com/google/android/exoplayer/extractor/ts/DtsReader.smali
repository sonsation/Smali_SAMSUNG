.class final Lcom/google/android/exoplayer/extractor/ts/DtsReader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "DtsReader.java"


# instance fields
.field private bytesRead:I

.field private final headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private syncBytes:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 5
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 60
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xf

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v1, 0x7f

    aput-byte v1, v0, v3

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, -0x2

    aput-byte v1, v0, v4

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, 0x2

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 65
    iput v3, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->state:I

    .line 66
    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z
    .locals 3
    .param p1, "source"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 128
    .local v0, "bytesToRead":I
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 129
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    .line 130
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseHeader()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 157
    .local v0, "frameData":[B
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v1, :cond_0

    .line 158
    const-wide/16 v2, -0x1

    invoke-static {v0, v4, v2, v3, v4}, Lcom/google/android/exoplayer/util/DtsUtil;->parseDtsFormat([BLjava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 161
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/DtsUtil;->getDtsFrameSize([B)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->sampleSize:I

    .line 164
    const-wide/32 v2, 0xf4240

    invoke-static {v0}, Lcom/google/android/exoplayer/util/DtsUtil;->parseDtsAudioSampleCount([B)I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    iget v1, v1, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->sampleDurationUs:J

    .line 166
    return-void
.end method

.method private skipToNextSync(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .locals 3
    .param p1, "pesBuffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v0, 0x0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_1

    .line 142
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    .line 143
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    .line 144
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    const v2, 0x7ffe8001

    if-ne v1, v2, :cond_0

    .line 145
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    .line 146
    const/4 v0, 0x1

    .line 149
    :cond_1
    return v0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 11
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v10, 0xf

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 82
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_1

    .line 83
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->state:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->skipToNextSync(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    .line 87
    iput v4, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-direct {p0, p1, v1, v10}, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->parseHeader()V

    .line 93
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {v1, v2, v10}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 95
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 100
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 101
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    .line 102
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->sampleSize:I

    if-ne v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->timeUs:J

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 104
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->timeUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->timeUs:J

    .line 105
    iput v6, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 110
    .end local v0    # "bytesToRead":I
    :cond_1
    return-void

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->timeUs:J

    .line 78
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->state:I

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    .line 73
    return-void
.end method
