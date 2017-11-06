.class public Lcom/samsung/android/app/music/common/player/TintColorsController;
.super Ljava/lang/Object;
.source "TintColorsController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mUpdateColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "coreMediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/common/player/TintColorsController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/TintColorsController$1;-><init>(Lcom/samsung/android/app/music/common/player/TintColorsController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/TintColorsController;->mUpdateColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/TintColorsController;->mContext:Landroid/content/Context;

    .line 80
    const v0, 0x7f1201f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/TintColorsController;->mSeekBar:Landroid/widget/SeekBar;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/TintColorsController;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/TintColorsController;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/TintColorsController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/TintColorsController;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private updateColors(Landroid/net/Uri;J)V
    .locals 8
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "albumId"    # J

    .prologue
    .line 87
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/TintColorsController;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0064

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/TintColorsController;->mUpdateColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    move-object v3, p1

    move-wide v4, p2

    .line 88
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 113
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 6
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 93
    const-string v4, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v3, v4

    .line 94
    .local v3, "cpAttrs":I
    invoke-static {v3}, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->convertCpAttrsToUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 95
    .local v2, "baseUri":Landroid/net/Uri;
    const-string v4, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 96
    .local v0, "albumId":J
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/music/common/player/TintColorsController;->updateColors(Landroid/net/Uri;J)V

    .line 97
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 102
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method
