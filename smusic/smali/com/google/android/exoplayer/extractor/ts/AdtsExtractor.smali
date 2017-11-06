.class public final Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# static fields
.field private static final ID3_TAG:I


# instance fields
.field private adtsReader:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

.field private final firstSampleTimestampUs:J

.field private final packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 52
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "firstSampleTimestampUs"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    .line 56
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 57
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 3
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 116
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    .line 117
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 118
    sget-object v0, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 119
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 7
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 135
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v4, 0xc8

    invoke-interface {p1, v3, v2, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 136
    .local v0, "bytesRead":I
    if-ne v0, v1, :cond_0

    .line 152
    :goto_0
    return v1

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 142
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 146
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->startedPacket:Z

    if-nez v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->packetStarted(JZ)V

    .line 149
    iput-boolean v6, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    move v1, v2

    .line 152
    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->seek()V

    .line 125
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 12
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v3, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v9, 0xa

    invoke-direct {v3, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 63
    .local v3, "scratch":Lcom/google/android/exoplayer/util/ParsableByteArray;
    new-instance v4, Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v9, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-direct {v4, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 64
    .local v4, "scratchBits":Lcom/google/android/exoplayer/util/ParsableBitArray;
    const/4 v5, 0x0

    .line 66
    .local v5, "startPosition":I
    :goto_0
    iget-object v9, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/16 v11, 0xa

    invoke-interface {p1, v9, v10, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 67
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 68
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v9

    sget v10, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->ID3_TAG:I

    if-eq v9, v10, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 77
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 80
    move v1, v5

    .line 81
    .local v1, "headerPosition":I
    const/4 v8, 0x0

    .line 82
    .local v8, "validFramesSize":I
    const/4 v7, 0x0

    .line 84
    .local v7, "validFramesCount":I
    :goto_1
    iget-object v9, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-interface {p1, v9, v10, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 85
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 86
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 87
    .local v6, "syncBytes":I
    const v9, 0xfff6

    and-int/2addr v9, v6

    const v10, 0xfff0

    if-eq v9, v10, :cond_2

    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v8, 0x0

    .line 90
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 91
    add-int/lit8 v1, v1, 0x1

    sub-int v9, v1, v5

    const/16 v10, 0x2000

    if-lt v9, v10, :cond_1

    .line 92
    const/4 v9, 0x0

    .line 106
    :goto_2
    return v9

    .line 71
    .end local v1    # "headerPosition":I
    .end local v6    # "syncBytes":I
    .end local v7    # "validFramesCount":I
    .end local v8    # "validFramesSize":I
    :cond_0
    iget-object v9, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x6

    aget-byte v9, v9, v10

    and-int/lit8 v9, v9, 0x7f

    shl-int/lit8 v9, v9, 0x15

    iget-object v10, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v11, 0x7

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x7f

    shl-int/lit8 v10, v10, 0xe

    or-int/2addr v9, v10

    iget-object v10, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v11, 0x8

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x7f

    shl-int/lit8 v10, v10, 0x7

    or-int/2addr v9, v10

    iget-object v10, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v11, 0x9

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x7f

    or-int v2, v9, v10

    .line 73
    .local v2, "length":I
    add-int/lit8 v9, v2, 0xa

    add-int/2addr v5, v9

    .line 74
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    .line 94
    .end local v2    # "length":I
    .restart local v1    # "headerPosition":I
    .restart local v6    # "syncBytes":I
    .restart local v7    # "validFramesCount":I
    .restart local v8    # "validFramesSize":I
    :cond_1
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    .line 96
    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x4

    if-lt v7, v9, :cond_3

    const/16 v9, 0xbc

    if-le v8, v9, :cond_3

    .line 97
    const/4 v9, 0x1

    goto :goto_2

    .line 101
    :cond_3
    iget-object v9, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-interface {p1, v9, v10, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 102
    const/16 v9, 0xe

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 103
    const/16 v9, 0xd

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 105
    .local v0, "frameSize":I
    const/4 v9, 0x6

    if-gt v0, v9, :cond_4

    .line 106
    const/4 v9, 0x0

    goto :goto_2

    .line 108
    :cond_4
    add-int/lit8 v9, v0, -0x6

    invoke-interface {p1, v9}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 109
    add-int/2addr v8, v0

    goto/16 :goto_1
.end method
