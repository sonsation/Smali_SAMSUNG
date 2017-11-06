.class public final Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;
.super Ljava/lang/Object;
.source "DashRenderBuilder.java"

# interfaces
.implements Lcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "AsyncRendererBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
        "<",
        "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
        ">;"
    }
.end annotation


# instance fields
.field protected canceled:Z

.field protected final context:Landroid/content/Context;

.field protected currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field protected elapsedRealtimeOffset:J

.field protected final manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field protected final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected final player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

.field protected final streamType:I

.field final synthetic this$0:Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;

.field protected final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "player"    # Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;
    .param p6, "streamType"    # I

    .prologue
    .line 115
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->this$0:Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 117
    iput-object p3, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    .line 118
    iput p6, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->streamType:I

    .line 119
    iput-object p5, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .line 121
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>()V

    .line 122
    .local v0, "parser":Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;
    invoke-virtual {p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->createManifestDataSource(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/UriDataSource;

    move-result-object v1

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 123
    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-direct {v1, p4, v2, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 124
    return-void
.end method


# virtual methods
.method protected buildRenderers()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 179
    const/4 v3, 0x0

    .line 180
    .local v3, "filterHdContent":Z
    const/4 v4, 0x0

    .line 181
    .local v4, "hasContentProtection":Z
    iget-object v9, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-virtual {v9, v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v6

    .line 182
    .local v6, "period":Lcom/google/android/exoplayer/dash/mpd/Period;
    const/4 v1, 0x0

    .line 185
    .local v1, "drmSessionManager":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v9, v6, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 186
    iget-object v9, v6, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 187
    .local v0, "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    iget v9, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->hasContentProtection()Z

    move-result v9

    or-int/2addr v4, v9

    .line 185
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    :cond_1
    if-eqz v4, :cond_3

    .line 194
    sget v9, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v9, v10, :cond_2

    .line 195
    iget-object v8, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    new-instance v9, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    invoke-direct {v9, v7}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    .line 208
    :goto_1
    return-void

    .line 199
    :cond_2
    :try_start_0
    iget-object v9, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v9}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v12}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v12

    iget-object v13, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-static {v9, v10, v11, v12, v13}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->newWidevineInstance(Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object v1

    .line 200
    invoke-virtual {p0, v1}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->getWidevineSecurityLevel(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    :try_end_0
    .catch Lcom/google/android/exoplayer/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eq v9, v7, :cond_4

    move v3, v7

    .line 207
    :cond_3
    :goto_2
    invoke-virtual {p0, v1, v3}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->buildTrackRenderers(Lcom/google/android/exoplayer/drm/DrmSessionManager;Z)V

    goto :goto_1

    :cond_4
    move v3, v8

    .line 200
    goto :goto_2

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
    iget-object v7, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v7, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected buildTrackRenderers(Lcom/google/android/exoplayer/drm/DrmSessionManager;Z)V
    .locals 40
    .param p1, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p2, "filterHdContent"    # Z

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v4}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v12

    .line 212
    .local v12, "mainHandler":Landroid/os/Handler;
    new-instance v38, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v5, 0x10000

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 213
    .local v38, "loadControl":Lcom/google/android/exoplayer/LoadControl;
    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-direct {v2, v12, v4}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 217
    .local v2, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->this$0:Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v7}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->createDataSource(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v6

    .line 218
    .local v6, "dataSourceVideo":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v3, Lcom/google/android/exoplayer/dash/DashChunkSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    const/4 v7, 0x1

    move/from16 v0, p2

    invoke-static {v5, v7, v0}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newVideoInstance(Landroid/content/Context;ZZ)Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v5

    new-instance v7, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;

    invoke-direct {v7, v2}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;-><init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    const-wide/16 v8, 0x7530

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    const/4 v14, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 220
    .local v3, "chunkSourceVideo":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v8, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v11, 0xc80000

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    const/4 v14, 0x0

    move-object v9, v3

    move-object/from16 v10, v38

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 225
    .local v8, "sampleSourceVideo":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->this$0:Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v7}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->createDataSource(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v16

    .line 226
    .local v16, "dataSourceAudio":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v13, Lcom/google/android/exoplayer/dash/DashChunkSource;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-static {}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v15

    const/16 v17, 0x0

    const-wide/16 v18, 0x7530

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v22, v12

    invoke-direct/range {v13 .. v24}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 228
    .local v13, "chunkSourceAudio":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v17, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v20, 0x360000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v18, v13

    move-object/from16 v19, v38

    move-object/from16 v21, v12

    invoke-direct/range {v17 .. v23}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 233
    .local v17, "sampleSourceAudio":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->this$0:Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v7}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->createDataSource(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v22

    .line 234
    .local v22, "dataSourceCC":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v19, Lcom/google/android/exoplayer/dash/DashChunkSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v21

    const/16 v23, 0x0

    const-wide/16 v24, 0x7530

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    move-object/from16 v28, v12

    invoke-direct/range {v19 .. v30}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 236
    .local v19, "chunkSourceCC":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v23, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v26, 0x20000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move-object/from16 v24, v19

    move-object/from16 v25, v38

    move-object/from16 v27, v12

    invoke-direct/range {v23 .. v29}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 241
    .local v23, "sampleSourceCC":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    new-instance v25, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v28, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v29, 0x1

    const-wide/16 v30, 0x1388

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v35, v0

    const/16 v36, 0x32

    move-object/from16 v27, v8

    move-object/from16 v32, p1

    move-object/from16 v34, v12

    invoke-direct/range {v25 .. v36}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 243
    .local v25, "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    new-instance v26, Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;

    sget-object v28, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 244
    invoke-static {v4}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->streamType:I

    move/from16 v34, v0

    move-object/from16 v27, v17

    move-object/from16 v29, p1

    move-object/from16 v31, v12

    invoke-direct/range {v26 .. v34}, Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 245
    .local v26, "audioRenderer":Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;
    new-instance v37, Lcom/google/android/exoplayer/text/TextTrackRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/google/android/exoplayer/text/SubtitleParser;

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5, v7}, Lcom/google/android/exoplayer/text/TextTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V

    .line 249
    .local v37, "captionsRenderer":Lcom/google/android/exoplayer/text/TextTrackRenderer;
    const/4 v4, 0x4

    new-array v0, v4, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v39, v0

    .line 250
    .local v39, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v4, 0x0

    aput-object v25, v39, v4

    .line 251
    const/4 v4, 0x1

    aput-object v26, v39, v4

    .line 252
    const/4 v4, 0x2

    aput-object v37, v39, v4

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    .line 254
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->canceled:Z

    .line 132
    return-void
.end method

.method protected getWidevineSecurityLevel(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    .locals 2
    .param p1, "sessionManager"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 257
    const-string/jumbo v1, "securityLevel"

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "securityLevelProperty":Ljava/lang/String;
    const-string v1, "L1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "L3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 128
    return-void
.end method

.method public onSingleManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V
    .locals 4
    .param p1, "manifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 141
    iget-boolean v0, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->utcTiming:Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object v1, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->utcTiming:Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifestLoadCompleteTimestamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver;->resolveTimingElement(Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;JLcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->buildRenderers()V

    goto :goto_0
.end method

.method public bridge synthetic onSingleManifest(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->onSingleManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onTimestampError(Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/io/IOException;)V
    .locals 3
    .param p1, "utcTiming"    # Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v0, "DashRendererBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve UtcTiming element ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->buildRenderers()V

    goto :goto_0
.end method

.method public onTimestampResolved(Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;J)V
    .locals 2
    .param p1, "utcTiming"    # Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .param p2, "elapsedRealtimeOffset"    # J

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iput-wide p2, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    .line 164
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->buildRenderers()V

    goto :goto_0
.end method
