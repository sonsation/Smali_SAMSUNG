.class Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$4;
.super Ljava/lang/Object;
.source "AlbumCoverView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->initPhoneGLGallery()V
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
    .line 337
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$4;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$4;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, p3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$4;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .line 341
    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$500(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$4;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$500(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$4;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .line 342
    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$600(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isShowingLyricView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$4;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$600(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->openViewIfHasLyrics(Z)V

    .line 345
    :cond_2
    return-void
.end method
