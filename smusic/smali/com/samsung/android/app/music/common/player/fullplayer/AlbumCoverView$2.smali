.class Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$2;
.super Ljava/lang/Object;
.source "AlbumCoverView.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canVisible()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->isFlinging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->isTouched()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
