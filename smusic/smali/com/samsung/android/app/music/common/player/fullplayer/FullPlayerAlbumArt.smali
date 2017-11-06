.class public final Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "FullPlayerAlbumArt.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/IAlbumArt;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;
    }
.end annotation


# static fields
.field private static final DISABLE_FAKE_VIEW_DELAY:I = 0x384


# instance fields
.field private final mAlbumCoverView:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

.field private mDoShowFakeView:Z

.field private mDoShowFakeViewPendingRequest:Z

.field private final mFakeAlbumView:Landroid/widget/ImageView;

.field private final mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

.field private mNowPlayingCursor:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

.field private final mSetVisibleGone:Ljava/lang/Runnable;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "albumCoverView"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p4, "coreMediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mDoShowFakeView:Z

    .line 58
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mDoShowFakeViewPendingRequest:Z

    .line 241
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mSetVisibleGone:Ljava/lang/Runnable;

    .line 74
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mView:Landroid/view/View;

    .line 76
    const v1, 0x7f1201cf

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mFakeAlbumView:Landroid/widget/ImageView;

    .line 77
    const v1, 0x7f1201a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    .line 78
    .local v0, "glView":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    if-eqz v1, :cond_0

    .line 79
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    .end local v0    # "glView":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;
    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    .line 83
    :goto_0
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mAlbumCoverView:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .line 84
    invoke-interface {p4, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 85
    return-void

    .line 81
    .restart local v0    # "glView":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mFakeAlbumView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mView:Landroid/view/View;

    return-object v0
.end method

.method private setPlayingListAlbumData(Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;)V
    .locals 3
    .param p1, "c"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mAlbumCoverView:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setPlayingListAlbumData(Landroid/database/Cursor;)V

    .line 234
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mNowPlayingCursor:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->Standard:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->setRenderingMode(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;I)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->OpenGL:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    const/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->setRenderingMode(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;I)V

    .line 239
    :cond_0
    return-void
.end method

.method private showFakeViewForShortTime(ZIJ)V
    .locals 5
    .param p1, "autoHide"    # Z
    .param p2, "cpAttrs"    # I
    .param p3, "albumId"    # J

    .prologue
    const/4 v4, 0x0

    .line 178
    const-string v1, "UiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showFakeViewForShortTime() - autoHide : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNowPlayingCursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mNowPlayingCursor:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mNowPlayingCursor:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->Standard:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->setRenderingMode(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;I)V

    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->OpenGL:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    const/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->setRenderingMode(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;I)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mView:Landroid/view/View;

    const v2, 0x7f1201a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    .line 188
    .local v0, "glView":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->asView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 192
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-ltz v1, :cond_2

    .line 193
    const v1, 0x7f0d0061

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    .line 194
    invoke-static {p2}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mFakeAlbumView:Landroid/widget/ImageView;

    sget v3, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    .line 195
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mFakeAlbumView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mFakeAlbumView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mFakeAlbumView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$1;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)V

    .line 201
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private updateNowPlayingQueue(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "extras"    # Landroid/os/Bundle;
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
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v2, 0x1

    .line 160
    if-nez p1, :cond_0

    .line 161
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->setPlayingListAlbumData(Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;)V

    .line 169
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    invoke-direct {v0, p1, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 164
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setSupportLocalMode(Z)V

    .line 165
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    .line 166
    .local v1, "isLocalMode":Z
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setLocalMode(Z)V

    .line 167
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->setPlayingListAlbumData(Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;)V

    goto :goto_0
.end method


# virtual methods
.method public crossFadeTo(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mAlbumCoverView:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->crossFadeTo(Landroid/net/Uri;)V

    .line 64
    return-void
.end method

.method public getAlbumView()Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mFakeAlbumView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public moveToNext()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mAlbumCoverView:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->moveToNext()V

    .line 222
    return-void
.end method

.method public moveToPrev()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mAlbumCoverView:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->moveToPrev()V

    .line 226
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 138
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 7
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    const/4 v6, 0x0

    .line 113
    const-string v3, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 114
    .local v2, "cpAttrs":I
    const-string v3, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 115
    .local v0, "albumId":J
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mDoShowFakeViewPendingRequest:Z

    if-eqz v3, :cond_1

    .line 116
    invoke-direct {p0, v6, v2, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->showFakeViewForShortTime(ZIJ)V

    .line 117
    iput-boolean v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mDoShowFakeViewPendingRequest:Z

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mDoShowFakeView:Z

    if-eqz v3, :cond_0

    .line 119
    const/4 v3, 0x1

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->showFakeViewForShortTime(ZIJ)V

    .line 120
    iput-boolean v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mDoShowFakeView:Z

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 127
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
    .line 132
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->updateNowPlayingQueue(Ljava/util/List;Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public onResumeCalled()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mFakeAlbumView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mFakeAlbumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mFakeAlbumView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mSetVisibleGone:Ljava/lang/Runnable;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->Standard:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->setRenderingMode(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;I)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mGLFrameLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->OpenGL:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->setRenderingMode(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;I)V

    .line 149
    :cond_1
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mDoShowFakeView:Z

    .line 154
    invoke-static {}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->setTransitioning(Z)V

    .line 157
    :cond_0
    return-void
.end method

.method public setAlbumArtConverter(Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;)V
    .locals 0
    .param p1, "converter"    # Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;

    .prologue
    .line 100
    return-void
.end method

.method public setAlbumClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 105
    return-void
.end method

.method public setDefaultAlbumResource(I)V
    .locals 0
    .param p1, "albumResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 95
    return-void
.end method

.method public setLyricsIconEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mAlbumCoverView:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setLyricsIconEnabled(Z)V

    .line 109
    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mAlbumCoverView:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setOnScrollStateChangedListener(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnScrollStateChangedListener;)V

    .line 218
    return-void
.end method

.method public setOnUpdateAlbumArtListener(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mAlbumCoverView:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->setOnUpdateAlbumArtListener(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$OnUpdateAlbumArtListener;)V

    .line 213
    return-void
.end method

.method public setShowFakeViewPendingRequest(Z)V
    .locals 0
    .param p1, "pendingRequest"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->mDoShowFakeViewPendingRequest:Z

    .line 230
    return-void
.end method
