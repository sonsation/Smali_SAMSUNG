.class Lcom/android/launcher3/common/base/view/CellLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic val$anim:Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$2;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/common/base/view/CellLayout$2;->val$anim:Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 198
    check-cast p1, Landroid/animation/ValueAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$2;->val$anim:Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 201
    :cond_0
    return-void
.end method
