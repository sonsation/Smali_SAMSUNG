.class public final Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;
.super Ljava/lang/Object;
.source "SmoothStreamRenderBuilder.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "AsyncRendererBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
        "<",
        "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
        ">;"
    }
.end annotation


# instance fields
.field protected canceled:Z

.field protected final context:Landroid/content/Context;

.field protected final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;"
        }
    .end annotation
.end field

.field protected final player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

.field protected final streamType:I

.field final synthetic this$0:Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;

.field protected final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "player"    # Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;
    .param p6, "streamType"    # I

    .prologue
    .line 107
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->this$0:Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 109
    iput-object p3, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    .line 110
    iput p6, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->streamType:I

    .line 111
    iput-object p5, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .line 112
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;-><init>()V

    .line 113
    .local v0, "parser":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;
    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->createManifestDataSource(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/UriDataSource;

    move-result-object v2

    invoke-direct {v1, p4, v2, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 114
    return-void
.end method


# virtual methods
.method protected buildRenderers(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;)V
    .locals 8
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 145
    .local v0, "drmSessionManager":Lcom/google/android/exoplayer/drm/DrmSessionManager;
    iget-object v1, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    if-eqz v1, :cond_2

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    .line 147
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 152
    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .end local v0    # "drmSessionManager":Lcom/google/android/exoplayer/drm/DrmSessionManager;
    iget-object v1, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    iget-object v1, v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;-><init>(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .restart local v0    # "drmSessionManager":Lcom/google/android/exoplayer/drm/DrmSessionManager;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->buildTrackRenderers(Lcom/google/android/exoplayer/drm/DrmSessionManager;)V

    goto :goto_0

    .line 153
    .end local v0    # "drmSessionManager":Lcom/google/android/exoplayer/drm/DrmSessionManager;
    :catch_0
    move-exception v7

    .line 154
    .local v7, "e":Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v1, v7}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected buildTrackRenderers(Lcom/google/android/exoplayer/drm/DrmSessionManager;)V
    .locals 40
    .param p1, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v4}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v11

    .line 164
    .local v11, "mainHandler":Landroid/os/Handler;
    new-instance v38, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v8, 0x10000

    invoke-direct {v4, v8}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 165
    .local v38, "loadControl":Lcom/google/android/exoplayer/LoadControl;
    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-direct {v2, v11, v4}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 169
    .local v2, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->this$0:Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v8, v2, v9}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->createDataSource(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v6

    .line 170
    .local v6, "dataSourceVideo":Lcom/google/android/exoplayer/upstream/DataSource;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->newVideoInstance(Landroid/content/Context;ZZ)Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    move-result-object v5

    .line 171
    .local v5, "trackSelectorVideo":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;
    new-instance v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    new-instance v7, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;

    invoke-direct {v7, v2}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;-><init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    const-wide/16 v8, 0x7530

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 173
    .local v3, "chunkSourceVideo":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v7, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v10, 0xc80000

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    const/4 v13, 0x0

    move-object v8, v3

    move-object/from16 v9, v38

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 178
    .local v7, "sampleSourceVideo":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->this$0:Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v8, v2, v9}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->createDataSource(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v16

    .line 179
    .local v16, "dataSourceAudio":Lcom/google/android/exoplayer/upstream/DataSource;
    invoke-static {}, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    move-result-object v15

    .line 180
    .local v15, "trackSelectorAudio":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;
    new-instance v13, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    const/16 v17, 0x0

    const-wide/16 v18, 0x7530

    invoke-direct/range {v13 .. v19}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 181
    .local v13, "chunkSourceAudio":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v17, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v20, 0x360000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v18, v13

    move-object/from16 v19, v38

    move-object/from16 v21, v11

    invoke-direct/range {v17 .. v23}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 186
    .local v17, "sampleSourceAudio":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->this$0:Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v8, v2, v9}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->createDataSource(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v22

    .line 187
    .local v22, "dataSourceCC":Lcom/google/android/exoplayer/upstream/DataSource;
    invoke-static {}, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->newTextInstance()Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    move-result-object v21

    .line 188
    .local v21, "trackSelectorCC":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;
    new-instance v19, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v20, v0

    const/16 v23, 0x0

    const-wide/16 v24, 0x7530

    invoke-direct/range {v19 .. v25}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 189
    .local v19, "chunkSourceCC":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v23, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v26, 0x20000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move-object/from16 v24, v19

    move-object/from16 v25, v38

    move-object/from16 v27, v11

    invoke-direct/range {v23 .. v29}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 194
    .local v23, "sampleSourceCC":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    new-instance v25, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v28, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v29, 0x1

    const-wide/16 v30, 0x1388

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v35, v0

    const/16 v36, 0x32

    move-object/from16 v27, v7

    move-object/from16 v32, p1

    move-object/from16 v34, v11

    invoke-direct/range {v25 .. v36}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 196
    .local v25, "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    new-instance v26, Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;

    sget-object v28, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 197
    invoke-static {v4}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->streamType:I

    move/from16 v34, v0

    move-object/from16 v27, v17

    move-object/from16 v29, p1

    move-object/from16 v31, v11

    invoke-direct/range {v26 .. v34}, Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 198
    .local v26, "audioRenderer":Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;
    new-instance v37, Lcom/google/android/exoplayer/text/TextTrackRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lcom/google/android/exoplayer/text/SubtitleParser;

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v8, v9}, Lcom/google/android/exoplayer/text/TextTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V

    .line 202
    .local v37, "captionsRenderer":Lcom/google/android/exoplayer/text/TextTrackRenderer;
    const/4 v4, 0x4

    new-array v0, v4, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v39, v0

    .line 203
    .local v39, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v4, 0x0

    aput-object v25, v39, v4

    .line 204
    const/4 v4, 0x1

    aput-object v26, v39, v4

    .line 205
    const/4 v4, 0x2

    aput-object v37, v39, v4

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    .line 207
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->canceled:Z

    .line 122
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 118
    return-void
.end method

.method public onSingleManifest(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;)V
    .locals 0
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->buildRenderers(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;)V

    .line 136
    return-void
.end method

.method public bridge synthetic onSingleManifest(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->onSingleManifest(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .locals 1
    .param p1, "exception"    # Ljava/io/IOException;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
