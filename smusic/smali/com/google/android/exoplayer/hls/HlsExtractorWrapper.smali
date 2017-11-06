.class public final Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;
.super Ljava/lang/Object;
.source "HlsExtractorWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/ExtractorOutput;


# instance fields
.field private final adaptiveMaxHeight:I

.field private final adaptiveMaxWidth:I

.field private allocator:Lcom/google/android/exoplayer/upstream/Allocator;

.field private final extractor:Lcom/google/android/exoplayer/extractor/Extractor;

.field public final format:Lcom/google/android/exoplayer/chunk/Format;

.field private prepared:Z

.field private sampleQueueFormats:[Lcom/google/android/exoplayer/MediaFormat;

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldSpliceIn:Z

.field private spliceConfigured:Z

.field public final startTimeUs:J

.field private volatile tracksBuilt:Z

.field public final trigger:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/extractor/Extractor;ZII)V
    .locals 1
    .param p1, "trigger"    # I
    .param p2, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p3, "startTimeUs"    # J
    .param p5, "extractor"    # Lcom/google/android/exoplayer/extractor/Extractor;
    .param p6, "shouldSpliceIn"    # Z
    .param p7, "adaptiveMaxWidth"    # I
    .param p8, "adaptiveMaxHeight"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->trigger:I

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 64
    iput-wide p3, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->startTimeUs:J

    .line 65
    iput-object p5, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    .line 66
    iput-boolean p6, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->shouldSpliceIn:Z

    .line 67
    iput p7, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxWidth:I

    .line 68
    iput p8, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxHeight:I

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    .line 70
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->clear()V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public final configureSpliceTo(Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;)V
    .locals 6
    .param p1, "nextExtractor"    # Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 149
    iget-boolean v5, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->spliceConfigured:Z

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->shouldSpliceIn:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v3, 0x1

    .line 155
    .local v3, "spliceConfigured":Z
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->getTrackCount()I

    move-result v4

    .line 156
    .local v4, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 157
    iget-object v5, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 158
    .local v0, "currentSampleQueue":Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    iget-object v5, p1, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    .line 159
    .local v2, "nextSampleQueue":Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->configureSpliceTo(Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    .end local v0    # "currentSampleQueue":Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    .end local v2    # "nextSampleQueue":Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    :cond_2
    iput-boolean v3, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->spliceConfigured:Z

    goto :goto_0
.end method

.method public discardUntil(IJ)V
    .locals 2
    .param p1, "track"    # I
    .param p2, "timeUs"    # J

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->discardUntil(J)V

    .line 215
    return-void
.end method

.method public drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 0
    .param p1, "drmInit"    # Lcom/google/android/exoplayer/drm/DrmInitData;

    .prologue
    .line 267
    return-void
.end method

.method public endTracks()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->tracksBuilt:Z

    .line 257
    return-void
.end method

.method public getLargestParsedTimestampUs()J
    .locals 6

    .prologue
    .line 123
    const-wide/high16 v2, -0x8000000000000000L

    .line 124
    .local v2, "largestParsedTimestampUs":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-wide v2
.end method

.method public getMediaFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSample(ILcom/google/android/exoplayer/SampleHolder;)Z
    .locals 1
    .param p1, "track"    # I
    .param p2, "holder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getSample(Lcom/google/android/exoplayer/SampleHolder;)Z

    move-result v0

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public hasSamples(I)Z
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->isPrepared()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 1
    .param p1, "allocator"    # Lcom/google/android/exoplayer/upstream/Allocator;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/extractor/Extractor;->init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    .line 80
    return-void
.end method

.method public isPrepared()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 88
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->tracksBuilt:Z

    if-eqz v2, :cond_4

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->hasFormat()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const/4 v2, 0x0

    .line 105
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 89
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    .line 95
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer/MediaFormat;

    iput-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lcom/google/android/exoplayer/MediaFormat;

    .line 96
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lcom/google/android/exoplayer/MediaFormat;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->getFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 98
    .local v0, "format":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v2, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxWidth:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxHeight:I

    if-eq v2, v4, :cond_3

    .line 100
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxWidth:I

    iget v3, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->adaptiveMaxHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->copyWithMaxVideoDimensions(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueueFormats:[Lcom/google/android/exoplayer/MediaFormat;

    aput-object v0, v2, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    .end local v0    # "format":Lcom/google/android/exoplayer/MediaFormat;
    .end local v1    # "i":I
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->prepared:Z

    goto :goto_1
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    .locals 4
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 240
    iget-object v2, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/google/android/exoplayer/extractor/Extractor;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I

    move-result v0

    .line 241
    .local v0, "result":I
    if-eq v0, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 242
    return v0

    .line 241
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Lcom/google/android/exoplayer/extractor/SeekMap;

    .prologue
    .line 262
    return-void
.end method

.method public track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 249
    new-instance v0, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 250
    .local v0, "sampleQueue":Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsExtractorWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    return-object v0
.end method
