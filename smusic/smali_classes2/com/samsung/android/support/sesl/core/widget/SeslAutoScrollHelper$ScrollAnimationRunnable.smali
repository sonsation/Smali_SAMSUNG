.class Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "SeslAutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 690
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->mAnimating:Z

    if-nez v3, :cond_0

    .line 718
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->mNeedsReset:Z

    if-eqz v3, :cond_1

    .line 695
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->mNeedsReset:Z

    .line 696
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->mScroller:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ClampedScroller;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ClampedScroller;->start()V

    .line 699
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    iget-object v2, v3, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->mScroller:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ClampedScroller;

    .line 700
    .local v2, "scroller":Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ClampedScroller;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->shouldAnimate()Z

    move-result v3

    if-nez v3, :cond_3

    .line 701
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->mAnimating:Z

    goto :goto_0

    .line 705
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->mNeedsCancel:Z

    if-eqz v3, :cond_4

    .line 706
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->mNeedsCancel:Z

    .line 707
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->cancelTargetTouch()V

    .line 710
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    .line 712
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v0

    .line 713
    .local v0, "deltaX":I
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v1

    .line 714
    .local v1, "deltaY":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->scrollTargetBy(II)V

    .line 717
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
