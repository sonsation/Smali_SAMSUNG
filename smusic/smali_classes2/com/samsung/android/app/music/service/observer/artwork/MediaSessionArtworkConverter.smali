.class public final Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;
.source "MediaSessionArtworkConverter.java"


# static fields
.field private static final SUB_TAG:Ljava/lang/String; = "MediaSession : "


# instance fields
.field private mDefaultArtwork:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    .line 29
    .local v0, "base":J
    if-nez p2, :cond_1

    .line 30
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 32
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;->getArtworkSizeResId()I

    move-result v3

    .line 31
    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;->resizeArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    .line 42
    :goto_0
    return-object v2

    .line 37
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    move-object v2, p2

    .line 42
    goto :goto_0
.end method

.method public getArtworkSizeResId()I
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f0d0062

    return v0
.end method
