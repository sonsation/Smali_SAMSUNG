.class public Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;
.super Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;
.source "DashRenderBuilder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;
    }
.end annotation


# instance fields
.field protected currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "streamType"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    return-void
.end method


# virtual methods
.method public buildRenderers(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;)V
    .locals 7
    .param p1, "player"    # Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .prologue
    .line 87
    new-instance v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->userAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->uri:Ljava/lang/String;

    iget v6, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->streamType:I

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;-><init>(Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;I)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;

    .line 88
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->init()V

    .line 89
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;->cancel()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;->currentAsyncBuilder:Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder$AsyncRendererBuilder;

    .line 97
    :cond_0
    return-void
.end method

.method protected createManifestDataSource(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/upstream/UriDataSource;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
