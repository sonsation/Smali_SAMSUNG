.class public Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;
.super Ljava/lang/Object;
.source "RenderBuilder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final streamType:I

.field protected final uri:Ljava/lang/String;

.field protected final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "streamType"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p3, p0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->uri:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->userAgent:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->context:Landroid/content/Context;

    .line 72
    iput p4, p0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->streamType:I

    .line 73
    return-void
.end method


# virtual methods
.method public buildRenderers(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;)V
    .locals 22
    .param p1, "player"    # Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .prologue
    .line 81
    new-instance v7, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v5, 0x10000

    invoke-direct {v7, v5}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    .line 82
    .local v7, "allocator":Lcom/google/android/exoplayer/upstream/Allocator;
    new-instance v19, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-virtual/range {p1 .. p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 83
    .local v19, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1, v8}, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->createDataSource(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v6

    .line 85
    .local v6, "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v4, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->uri:Ljava/lang/String;

    invoke-static {v5}, Lcom/devbrackets/android/exomedia/util/MediaUtil;->getUriWithProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/high16 v8, 0x1000000

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Lcom/google/android/exoplayer/extractor/Extractor;

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;ILandroid/os/Handler;Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 89
    .local v4, "sampleSource":Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
    new-instance v9, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->context:Landroid/content/Context;

    sget-object v12, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v13, 0x1

    const-wide/16 v14, 0x1388

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v16

    const/16 v18, 0x32

    move-object v11, v4

    move-object/from16 v17, p1

    invoke-direct/range {v9 .. v18}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 91
    .local v9, "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    new-instance v10, Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;

    sget-object v12, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->streamType:I

    move/from16 v18, v0

    move-object v11, v4

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v18}, Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 93
    .local v10, "audioRenderer":Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;
    new-instance v20, Lcom/google/android/exoplayer/text/TextTrackRenderer;

    invoke-virtual/range {p1 .. p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/google/android/exoplayer/text/SubtitleParser;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5, v8}, Lcom/google/android/exoplayer/text/TextTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V

    .line 97
    .local v20, "captionsRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v5, 0x4

    new-array v0, v5, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v21, v0

    .line 98
    .local v21, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v5, 0x0

    aput-object v9, v21, v5

    .line 99
    const/4 v5, 0x1

    aput-object v10, v21, v5

    .line 100
    const/4 v5, 0x2

    aput-object v20, v21, v5

    .line 101
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    .line 102
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method protected createDataSource(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/DataSource;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transferListener"    # Lcom/google/android/exoplayer/upstream/TransferListener;
    .param p3, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;->context:Landroid/content/Context;

    return-object v0
.end method
