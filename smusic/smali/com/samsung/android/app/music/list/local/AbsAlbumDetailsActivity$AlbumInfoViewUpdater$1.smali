.class Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;
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


# static fields
.field private static final FADE_IN_DURATION:I = 0x1f4


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 295
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 279
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1400(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1400(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 282
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 283
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 285
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1500(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1500(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 287
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1200(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 288
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1200(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1300(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 290
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1300(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 299
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 303
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1200(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$1;->this$0:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->access$1300(Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 275
    return-void
.end method
