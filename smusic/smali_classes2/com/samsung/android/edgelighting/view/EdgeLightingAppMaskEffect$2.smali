.class Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$2;
.super Ljava/lang/Object;
.source "EdgeLightingAppMaskEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->containerAlphaAnimation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$2;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    iput p2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$2;->val$to:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 102
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 88
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$2;->val$to:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$2;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$2;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->access$000(Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;)Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$2;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->access$000(Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;)Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->hide()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$2;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$2;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-interface {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;->onFinishAnimation()V

    .line 97
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 107
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 84
    return-void
.end method
