.class Lcom/android/launcher3/common/quickoption/QuickOptionView$5;
.super Ljava/lang/Object;
.source "QuickOptionView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionView;->animateHide(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const v1, 0x3e4ccccd    # 0.2f

    .line 475
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleX(F)V

    .line 476
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleY(F)V

    .line 477
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setAlpha(F)V

    .line 478
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$702(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 479
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    new-instance v1, Lcom/android/launcher3/common/quickoption/QuickOptionView$5$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionView$5$1;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionView$5;)V

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$702(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 472
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 473
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 457
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 456
    return-void
.end method
