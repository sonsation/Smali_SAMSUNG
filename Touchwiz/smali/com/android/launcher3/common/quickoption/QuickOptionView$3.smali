.class Lcom/android/launcher3/common/quickoption/QuickOptionView$3;
.super Ljava/lang/Object;
.source "QuickOptionView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionView;->animateShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 428
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleX(F)V

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setScaleY(F)V

    .line 430
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->setAlpha(F)V

    .line 431
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$302(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 432
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$302(Lcom/android/launcher3/common/quickoption/QuickOptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 421
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$400(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$400(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->semClearAccessibilityFocus()V

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$400(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->semRequestAccessibilityFocus()Z

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$502(Lcom/android/launcher3/common/quickoption/QuickOptionView;Z)Z

    .line 426
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 418
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 417
    return-void
.end method
