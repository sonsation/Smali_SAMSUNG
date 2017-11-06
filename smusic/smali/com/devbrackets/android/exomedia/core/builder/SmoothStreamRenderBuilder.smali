.class public Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;
.super Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;
.source "SmoothStreamRenderBuilder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;
    }
.end annotation


# instance fields
.field protected currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "streamType"    # I

    .prologue
    .line 72
    invoke-static {p3}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->getManifestUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method protected static getManifestUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/google/android/exoplayer/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Manifest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public buildRenderers(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;)V
    .locals 7
    .param p1, "player"    # Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .prologue
    .line 77
    new-instance v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->userAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->uri:Ljava/lang/String;

    iget v6, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->streamType:I

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;-><init>(Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;I)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;

    .line 78
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->init()V

    .line 79
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;->cancel()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder$AsyncRendererBuilder;

    .line 87
    :cond_0
    return-void
.end method

.method protected createManifestDataSource(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/UriDataSource;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;)V

    return-object v0
.end method
