.class public Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;
.super Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;
.source "HlsRenderBuilder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;
    }
.end annotation


# instance fields
.field protected currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "streamType"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    return-void
.end method


# virtual methods
.method public buildRenderers(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;)V
    .locals 7
    .param p1, "player"    # Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .prologue
    .line 78
    new-instance v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->userAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->uri:Ljava/lang/String;

    iget v6, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->streamType:I

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;-><init>(Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;I)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;

    .line 79
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->init()V

    .line 80
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;->cancel()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder$AsyncRendererBuilder;

    .line 88
    :cond_0
    return-void
.end method

.method protected createManifestDataSource(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/UriDataSource;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
