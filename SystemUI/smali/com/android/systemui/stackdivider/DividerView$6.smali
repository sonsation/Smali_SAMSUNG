.class Lcom/android/systemui/stackdivider/DividerView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$endDelay:J


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerView;
    .param p2, "val$endDelay"    # J
    .param p4, "val$endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$6;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-wide p2, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endDelay:J

    iput-object p4, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->mCancelled:Z

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get6(Lcom/android/systemui/stackdivider/DividerView;)Z

    move-result v0

    .line 1119
    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-wrap1(Lcom/android/systemui/stackdivider/DividerView;)V

    .line 1116
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1128
    iget-wide v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->mCancelled:Z

    if-eqz v0, :cond_2

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1135
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get6(Lcom/android/systemui/stackdivider/DividerView;)Z

    move-result v0

    .line 1134
    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-wrap1(Lcom/android/systemui/stackdivider/DividerView;)V

    .line 1127
    :cond_1
    return-void

    .line 1131
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get2(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endAction:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
