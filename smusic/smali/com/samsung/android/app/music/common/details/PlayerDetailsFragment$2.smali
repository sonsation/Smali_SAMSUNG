.class Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$2;
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


# static fields
.field private static final FADE_IN_DURATION:I = 0x1f4


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$2;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 236
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 221
    iget-object v2, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$2;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 222
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 225
    :cond_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 226
    .local v1, "fadeIn":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 228
    iget-object v2, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$2;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->access$100(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 229
    iget-object v2, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$2;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->access$100(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    iget-object v2, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$2;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->access$000(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 231
    iget-object v2, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$2;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->access$000(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 240
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 244
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$2;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->access$000(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 217
    return-void
.end method
