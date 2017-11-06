.class Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$2;
.super Ljava/lang/Object;
.source "AbsAlbumDetailsActivity.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$2;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 322
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 318
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 326
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 330
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$2;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1500(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$2;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1200(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$2;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1300(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 314
    return-void
.end method
