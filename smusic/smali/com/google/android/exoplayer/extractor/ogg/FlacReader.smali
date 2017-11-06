.class final Lcom/google/android/exoplayer/extractor/ogg/FlacReader;
.super Lcom/google/android/exoplayer/extractor/ogg/StreamReader;
.source "FlacReader.java"


# instance fields
.field private firstAudioPacketProcessed:Z

.field private seekTable:Lcom/google/android/exoplayer/util/FlacSeekTable;

.field private streamInfo:Lcom/google/android/exoplayer/util/FlacStreamInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static verifyBitstreamType(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .locals 4
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 18
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v16

    .line 59
    .local v16, "position":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->oggParser:Lcom/google/android/exoplayer/extractor/ogg/OggParser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer/extractor/ogg/OggParser;->readPacket(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const/4 v2, -0x1

    .line 97
    :goto_0
    return v2

    .line 63
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v12, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 64
    .local v12, "data":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lcom/google/android/exoplayer/util/FlacStreamInfo;

    if-nez v2, :cond_2

    .line 65
    new-instance v2, Lcom/google/android/exoplayer/util/FlacStreamInfo;

    const/16 v3, 0x11

    invoke-direct {v2, v12, v3}, Lcom/google/android/exoplayer/util/FlacStreamInfo;-><init>([BI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lcom/google/android/exoplayer/util/FlacStreamInfo;

    .line 67
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    invoke-static {v12, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 68
    .local v14, "metadata":[B
    const/4 v2, 0x4

    const/16 v3, -0x80

    aput-byte v3, v14, v2

    .line 69
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 71
    .local v10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, 0x0

    const-string v3, "audio/x-flac"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lcom/google/android/exoplayer/util/FlacStreamInfo;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/FlacStreamInfo;->bitRate()I

    move-result v4

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lcom/google/android/exoplayer/util/FlacStreamInfo;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/FlacStreamInfo;->durationUs()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lcom/google/android/exoplayer/util/FlacStreamInfo;

    iget v8, v8, Lcom/google/android/exoplayer/util/FlacStreamInfo;->channels:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lcom/google/android/exoplayer/util/FlacStreamInfo;

    iget v9, v9, Lcom/google/android/exoplayer/util/FlacStreamInfo;->sampleRate:I

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v13

    .line 74
    .local v13, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v2, v13}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 96
    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v13    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    .end local v14    # "metadata":[B
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 97
    const/4 v2, 0x0

    goto :goto_0

    .line 76
    :cond_2
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 77
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->firstAudioPacketProcessed:Z

    if-nez v2, :cond_3

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->seekTable:Lcom/google/android/exoplayer/util/FlacSeekTable;

    if-eqz v2, :cond_4

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->seekTable:Lcom/google/android/exoplayer/util/FlacSeekTable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lcom/google/android/exoplayer/util/FlacStreamInfo;

    iget v6, v6, Lcom/google/android/exoplayer/util/FlacStreamInfo;->sampleRate:I

    int-to-long v6, v6

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v6, v7}, Lcom/google/android/exoplayer/util/FlacSeekTable;->createSeekMap(JJ)Lcom/google/android/exoplayer/extractor/SeekMap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 80
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->seekTable:Lcom/google/android/exoplayer/util/FlacSeekTable;

    .line 84
    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->firstAudioPacketProcessed:Z

    .line 87
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v6

    invoke-interface {v2, v3, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lcom/google/android/exoplayer/util/FlacStreamInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/FlacUtil;->extractSampleTimestamp(Lcom/google/android/exoplayer/util/FlacStreamInfo;Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v4

    .line 90
    .local v4, "timeUs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_1

    .line 82
    .end local v4    # "timeUs":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    sget-object v3, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    goto :goto_2

    .line 92
    :cond_5
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->seekTable:Lcom/google/android/exoplayer/util/FlacSeekTable;

    if-nez v2, :cond_1

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer/util/FlacSeekTable;->parseSeekTable(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/util/FlacSeekTable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer/extractor/ogg/FlacReader;->seekTable:Lcom/google/android/exoplayer/util/FlacSeekTable;

    goto/16 :goto_1
.end method
