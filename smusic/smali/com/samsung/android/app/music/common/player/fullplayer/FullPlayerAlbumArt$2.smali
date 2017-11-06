.class Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;
.super Ljava/lang/Object;
.source "FullPlayerAlbumArt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->access$100(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    invoke-static {}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->isTransitioning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Landroid/widget/ImageView;

    move-result-object v1

    const-wide/16 v2, 0x384

    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    .line 250
    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->access$200(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1201a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->asView()Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "albumView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 253
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2$1;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 262
    .end local v0    # "albumView":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
