.class public final Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;
.super Ljava/lang/Object;
.source "HlsRenderBuilder.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;
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
        "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field protected canceled:Z

.field protected final context:Landroid/content/Context;

.field protected final player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

.field protected final playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field protected final streamType:I

.field final synthetic this$0:Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;

.field protected final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "player"    # Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;
    .param p6, "streamType"    # I

    .prologue
    .line 103
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->this$0:Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    .line 106
    iput p6, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->streamType:I

    .line 107
    iput-object p5, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .line 109
    new-instance v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    .line 110
    .local v0, "parser":Lcom/google/android/exoplayer/hls/HlsPlaylistParser;
    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->createManifestDataSource(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/UriDataSource;

    move-result-object v2

    invoke-direct {v1, p4, v2, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 111
    return-void
.end method


# virtual methods
.method protected buildRenderers(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V
    .locals 6
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 140
    iget-boolean v5, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v5, :cond_0

    .line 156
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 145
    .local v0, "hasClosedCaptions":Z
    const/4 v1, 0x0

    .line 149
    .local v1, "hasMultipleAudioTracks":Z
    instance-of v5, p1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    if-eqz v5, :cond_1

    move-object v2, p1

    .line 150
    check-cast v2, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    .line 151
    .local v2, "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    iget-object v5, v2, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 152
    :goto_1
    iget-object v5, v2, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 155
    .end local v2    # "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    :cond_1
    :goto_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->buildTrackRenderers(Lcom/google/android/exoplayer/hls/HlsPlaylist;ZZ)V

    goto :goto_0

    .restart local v2    # "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    :cond_2
    move v0, v4

    .line 151
    goto :goto_1

    :cond_3
    move v1, v4

    .line 152
    goto :goto_2
.end method

.method protected buildTrackRenderers(Lcom/google/android/exoplayer/hls/HlsPlaylist;ZZ)V
    .locals 35
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;
    .param p2, "hasClosedCaptions"    # Z
    .param p3, "hasMultipleAudioTracks"    # Z

    .prologue
    .line 159
    new-instance v11, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v5, 0x10000

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    invoke-direct {v11, v3}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 160
    .local v11, "loadControl":Lcom/google/android/exoplayer/LoadControl;
    new-instance v7, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-direct {v7, v3, v5}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 161
    .local v7, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    new-instance v8, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    invoke-direct {v8}, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;-><init>()V

    .line 165
    .local v8, "timestampAdjusterProvider":Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->this$0:Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-virtual {v3, v5, v7, v6}, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->createDataSource(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v4

    .line 166
    .local v4, "dataSourceVideo":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v2, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newDefaultInstance(Landroid/content/Context;)Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v6

    const/4 v9, 0x1

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;I)V

    .line 168
    .local v2, "chunkSourceVideo":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    new-instance v9, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v12, 0x1000000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .line 169
    invoke-virtual {v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v9 .. v15}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 173
    .local v9, "sampleSourceVideo":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    new-instance v14, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v14, v3, v7, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 174
    .local v14, "dataSourceAudio":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v12, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/4 v13, 0x0

    invoke-static {}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v16

    const/16 v19, 0x1

    move-object/from16 v15, p1

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v12 .. v19}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;I)V

    .line 176
    .local v12, "chunkSourceAudio":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    new-instance v15, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v18, 0x360000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .line 177
    invoke-virtual {v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v16, v12

    move-object/from16 v17, v11

    invoke-direct/range {v15 .. v21}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 178
    .local v15, "sampleSourceAudio":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    if-eqz p3, :cond_0

    const/4 v3, 0x2

    new-array v0, v3, [Lcom/google/android/exoplayer/SampleSource;

    move-object/from16 v34, v0

    const/4 v3, 0x0

    aput-object v9, v34, v3

    const/4 v3, 0x1

    aput-object v15, v34, v3

    .line 182
    .local v34, "sampleSourcesAudio":[Lcom/google/android/exoplayer/SampleSource;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->this$0:Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-virtual {v3, v5, v7, v6}, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->createDataSource(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/DataSource;

    move-result-object v18

    .line 183
    .local v18, "dataSourceCC":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v16, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/16 v17, 0x0

    invoke-static {}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newSubtitleInstance()Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v20

    const/16 v23, 0x1

    move-object/from16 v19, p1

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-direct/range {v16 .. v23}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;I)V

    .line 185
    .local v16, "chunkSourceCC":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    new-instance v19, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v22, 0x20000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .line 186
    invoke-virtual {v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v20, v16

    move-object/from16 v21, v11

    invoke-direct/range {v19 .. v25}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 190
    .local v19, "sampleSourceCC":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    new-instance v21, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v24, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v25, 0x1

    const-wide/16 v26, 0x1388

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .line 191
    invoke-virtual {v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v29, v0

    const/16 v30, 0x32

    move-object/from16 v23, v9

    invoke-direct/range {v21 .. v30}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 192
    .local v21, "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    new-instance v22, Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;

    sget-object v24, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .line 193
    invoke-virtual {v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->streamType:I

    move/from16 v30, v0

    move-object/from16 v23, v34

    invoke-direct/range {v22 .. v30}, Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;-><init>([Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 194
    .local v22, "audioRenderer":Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;
    if-eqz p2, :cond_1

    new-instance v31, Lcom/google/android/exoplayer/text/TextTrackRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/google/android/exoplayer/text/SubtitleParser;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/google/android/exoplayer/text/TextTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V

    .line 196
    .local v31, "captionsRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    :goto_1
    new-instance v32, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;

    new-instance v3, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;

    invoke-direct {v3}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .line 197
    invoke-virtual {v6}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-direct {v0, v9, v3, v5, v6}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/metadata/MetadataParser;Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;Landroid/os/Looper;)V

    .line 201
    .local v32, "id3Renderer":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<Ljava/util/List<Lcom/google/android/exoplayer/metadata/id3/Id3Frame;>;>;"
    const/4 v3, 0x4

    new-array v0, v3, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v33, v0

    .line 202
    .local v33, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v3, 0x0

    aput-object v21, v33, v3

    .line 203
    const/4 v3, 0x1

    aput-object v22, v33, v3

    .line 204
    const/4 v3, 0x2

    aput-object v31, v33, v3

    .line 205
    const/4 v3, 0x3

    aput-object v32, v33, v3

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v7}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    .line 207
    return-void

    .line 178
    .end local v16    # "chunkSourceCC":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .end local v18    # "dataSourceCC":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v19    # "sampleSourceCC":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    .end local v21    # "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    .end local v22    # "audioRenderer":Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;
    .end local v31    # "captionsRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    .end local v32    # "id3Renderer":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<Ljava/util/List<Lcom/google/android/exoplayer/metadata/id3/Id3Frame;>;>;"
    .end local v33    # "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    .end local v34    # "sampleSourcesAudio":[Lcom/google/android/exoplayer/SampleSource;
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/google/android/exoplayer/SampleSource;

    move-object/from16 v34, v0

    const/4 v3, 0x0

    aput-object v9, v34, v3

    goto/16 :goto_0

    .line 194
    .restart local v16    # "chunkSourceCC":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .restart local v18    # "dataSourceCC":Lcom/google/android/exoplayer/upstream/DataSource;
    .restart local v19    # "sampleSourceCC":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    .restart local v21    # "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    .restart local v22    # "audioRenderer":Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;
    .restart local v34    # "sampleSourcesAudio":[Lcom/google/android/exoplayer/SampleSource;
    :cond_1
    new-instance v31, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .line 195
    invoke-virtual {v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v9, v3, v5}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;)V

    goto :goto_1
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->canceled:Z

    .line 119
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 115
    return-void
.end method

.method public onSingleManifest(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V
    .locals 1
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->buildRenderers(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V

    goto :goto_0
.end method

.method public bridge synthetic onSingleManifest(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsPlaylist;

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->onSingleManifest(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->player:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
