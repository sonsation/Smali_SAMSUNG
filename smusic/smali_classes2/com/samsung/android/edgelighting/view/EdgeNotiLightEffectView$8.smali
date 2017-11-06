.class Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;
.super Ljava/lang/Object;
.source "EdgeNotiLightEffectView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->showArcAnimation3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 289
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 268
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    iput-boolean v5, v2, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->isDoneRound:Z

    .line 269
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    iget-boolean v2, v2, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->isNeedTopGradient:Z

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    iget-object v2, v2, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mTopFG:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v5, [F

    aput v6, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 271
    .local v1, "aSAnim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-static {v2}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->access$400(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 274
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    iget-object v2, v2, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mTopFG:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v6, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 275
    .local v0, "aAnim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-static {v2}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->access$400(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 276
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 278
    .end local v0    # "aAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "aSAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 294
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 263
    return-void
.end method
