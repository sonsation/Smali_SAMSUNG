.class Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;
.super Ljava/lang/Object;
.source "PlayerDetailsFragment.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 270
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->access$000(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3$1;-><init>(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 274
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 278
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->access$100(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->access$000(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 254
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->setTransitioning(Z)V

    .line 255
    return-void
.end method
