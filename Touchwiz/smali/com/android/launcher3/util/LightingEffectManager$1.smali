.class Lcom/android/launcher3/util/LightingEffectManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LightingEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/LightingEffectManager;

.field final synthetic val$toBeShown:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/LightingEffectManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/LightingEffectManager;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/launcher3/util/LightingEffectManager$1;->this$0:Lcom/android/launcher3/util/LightingEffectManager;

    iput-boolean p2, p0, Lcom/android/launcher3/util/LightingEffectManager$1;->val$toBeShown:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager$1;->this$0:Lcom/android/launcher3/util/LightingEffectManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/LightingEffectManager;->access$102(Lcom/android/launcher3/util/LightingEffectManager;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 106
    iget-boolean v0, p0, Lcom/android/launcher3/util/LightingEffectManager$1;->val$toBeShown:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager$1;->this$0:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-static {v0}, Lcom/android/launcher3/util/LightingEffectManager;->access$000(Lcom/android/launcher3/util/LightingEffectManager;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager$1;->this$0:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-static {v0}, Lcom/android/launcher3/util/LightingEffectManager;->access$200(Lcom/android/launcher3/util/LightingEffectManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager$1;->this$0:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-static {v0}, Lcom/android/launcher3/util/LightingEffectManager;->access$300(Lcom/android/launcher3/util/LightingEffectManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 111
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/launcher3/util/LightingEffectManager$1;->val$toBeShown:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/util/LightingEffectManager$1;->this$0:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-static {v0}, Lcom/android/launcher3/util/LightingEffectManager;->access$000(Lcom/android/launcher3/util/LightingEffectManager;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_0
    return-void
.end method
