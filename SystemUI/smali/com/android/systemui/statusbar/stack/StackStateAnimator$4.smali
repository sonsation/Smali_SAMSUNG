.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p2, "val$child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->mWasCancelled:Z

    .line 552
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f130025

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f130031

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f13002b

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeightAnimating(Z)V

    .line 540
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->mWasCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    .line 535
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->mWasCancelled:Z

    .line 547
    return-void
.end method
