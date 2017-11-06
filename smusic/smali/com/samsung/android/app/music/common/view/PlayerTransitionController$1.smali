.class Lcom/samsung/android/app/music/common/view/PlayerTransitionController$1;
.super Ljava/lang/Object;
.source "PlayerTransitionController.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/view/PlayerTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/view/PlayerTransitionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$1;->this$0:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

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
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-static {v2}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->access$102(Z)Z

    .line 282
    invoke-static {}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->access$200()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$1;->this$0:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    invoke-static {}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->access$200()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->updateFakeAlbumView(Landroid/graphics/Bitmap;)V

    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->access$202(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$1;->this$0:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->access$300(Lcom/samsung/android/app/music/common/view/PlayerTransitionController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/PlayerTransitionController$1;->this$0:Lcom/samsung/android/app/music/common/view/PlayerTransitionController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->access$400(Lcom/samsung/android/app/music/common/view/PlayerTransitionController;)Landroid/transition/Transition;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 288
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 273
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 266
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->access$102(Z)Z

    .line 259
    return-void
.end method
