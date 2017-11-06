.class final Lcom/google/android/exoplayer/hls/WebvttExtractor;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# static fields
.field private static final LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;


# instance fields
.field private output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

.field private sampleData:[B

.field private final sampleDataWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private sampleSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "LOCAL:([^,]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "MPEGTS:(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V
    .locals 1
    .param p1, "ptsTimestampAdjuster"    # Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    .line 63
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 64
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    .line 65
    return-void
.end method

.method private buildTrackOutput(J)Lcom/google/android/exoplayer/extractor/TrackOutput;
    .locals 9
    .param p1, "subsampleOffsetUs"    # J

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    .line 167
    .local v8, "trackOutput":Lcom/google/android/exoplayer/extractor/TrackOutput;
    const-string v0, "id"

    const-string/jumbo v1, "text/vtt"

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const-string v5, "en"

    move-wide v6, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 170
    return-object v8
.end method

.method private processSample()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v17, Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    .line 121
    .local v17, "webvttData":Lcom/google/android/exoplayer/util/ParsableByteArray;
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 124
    const-wide/16 v22, 0x0

    .line 125
    .local v22, "vttTimestampUs":J
    const-wide/16 v20, 0x0

    .line 129
    .local v20, "tsTimestampUs":J
    :cond_0
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 130
    const-string v8, "X-TIMESTAMP-MAP"

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 131
    sget-object v8, Lcom/google/android/exoplayer/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 132
    .local v15, "localTimestampMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_1

    .line 133
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 135
    :cond_1
    sget-object v8, Lcom/google/android/exoplayer/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 136
    .local v16, "mediaTimestampMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_2

    .line 137
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 139
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v15, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v22

    .line 140
    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->ptsToUs(J)J

    move-result-wide v20

    .line 142
    goto :goto_0

    .line 146
    .end local v15    # "localTimestampMatcher":Ljava/util/regex/Matcher;
    .end local v16    # "mediaTimestampMatcher":Ljava/util/regex/Matcher;
    :cond_3
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->findNextCueHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 147
    .local v4, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    if-nez v4, :cond_4

    .line 149
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/exoplayer/hls/WebvttExtractor;->buildTrackOutput(J)Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 163
    :goto_1
    return-void

    .line 153
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v12

    .line 154
    .local v12, "firstCueTimeUs":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    add-long v10, v12, v20

    sub-long v10, v10, v22

    invoke-static {v10, v11}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->usToPts(J)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;->adjustTimestamp(J)J

    move-result-wide v6

    .line 156
    .local v6, "sampleTimeUs":J
    sub-long v18, v6, v12

    .line 158
    .local v18, "subsampleOffsetUs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/hls/WebvttExtractor;->buildTrackOutput(J)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v5

    .line 160
    .local v5, "trackOutput":Lcom/google/android/exoplayer/extractor/TrackOutput;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 161
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    invoke-interface {v5, v8, v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 162
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 78
    sget-object v0, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 79
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
    const/4 v3, -0x1

    .line 95
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 98
    .local v1, "currentFileSize":I
    iget v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    array-length v4, v4

    if-ne v2, v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    if-eq v1, v3, :cond_2

    move v2, v1

    :goto_0
    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    iget v4, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    iget-object v5, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    array-length v5, v5

    iget v6, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    sub-int/2addr v5, v6

    invoke-interface {p1, v2, v4, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 105
    .local v0, "bytesRead":I
    if-eq v0, v3, :cond_3

    .line 106
    iget v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    .line 107
    if-eq v1, v3, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleSize:I

    if-eq v2, v1, :cond_3

    .line 108
    :cond_1
    const/4 v2, 0x0

    .line 114
    :goto_1
    return v2

    .line 99
    .end local v0    # "bytesRead":I
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/WebvttExtractor;->sampleData:[B

    array-length v2, v2

    goto :goto_0

    .line 113
    .restart local v0    # "bytesRead":I
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/hls/WebvttExtractor;->processSample()V

    move v2, v3

    .line 114
    goto :goto_1
.end method

.method public release()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
