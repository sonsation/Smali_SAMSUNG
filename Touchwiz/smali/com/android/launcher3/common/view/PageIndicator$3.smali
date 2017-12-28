.class Lcom/android/launcher3/common/view/PageIndicator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/PageIndicator;

.field final synthetic val$isShowAnim:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/PageIndicator;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/view/PageIndicator;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/launcher3/common/view/PageIndicator$3;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    iput-boolean p2, p0, Lcom/android/launcher3/common/view/PageIndicator$3;->val$isShowAnim:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 615
    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicator$3;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    iget-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicator$3;->val$isShowAnim:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/view/PageIndicator;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator$3;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/view/PageIndicator;->setScaleX(F)V

    .line 617
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator$3;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/view/PageIndicator;->setScaleY(F)V

    .line 618
    return-void

    .line 615
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator$3;->this$0:Lcom/android/launcher3/common/view/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setVisibility(I)V

    .line 611
    return-void
.end method
