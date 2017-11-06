.class Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$3;
.super Ljava/lang/Object;
.source "SeslDefaultItemAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    .prologue
    .line 785
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$3;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 800
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$3;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$202(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Z)Z

    .line 801
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 794
    const-string v0, "SeslDefaultItemAnimator"

    const-string v1, "animateMoveImpl : onPreDraw : AnimatorSet set : onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$3;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$202(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Z)Z

    .line 796
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 805
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 788
    const-string v0, "SeslDefaultItemAnimator"

    const-string v1, "animateMoveImpl : onPreDraw : AnimatorSet set : onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$3;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$202(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Z)Z

    .line 790
    return-void
.end method
