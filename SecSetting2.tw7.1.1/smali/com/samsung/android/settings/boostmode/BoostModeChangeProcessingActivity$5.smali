.class Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$5;
.super Ljava/lang/Object;
.source "BoostModeChangeProcessingActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->setAndShowLoadingPathAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCanceled:Z

.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$5;->isCanceled:Z

    .line 576
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$5;->isCanceled:Z

    .line 590
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$5;->isCanceled:Z

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$5;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get11(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 584
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 594
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$5;->isCanceled:Z

    .line 580
    return-void
.end method
